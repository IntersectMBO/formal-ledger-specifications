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

module MAlonzo.Code.Ledger.Conway.Specification.Gov.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
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
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Specification.Gov.Base.GovStructure
d_GovStructure_10 = ()
data T_GovStructure_10
  = C_constructor_1396 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
-- Ledger.Conway.Specification.Gov.Base._.GovParams
d_GovParams_242 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1544
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478
d_ppUpd_350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.TxId
d_TxId_604 :: T_GovStructure_10 -> ()
d_TxId_604 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_606 :: T_GovStructure_10 -> ()
d_DocHash_606 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_608 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_608 v0
  = case coe v0 of
      C_constructor_1396 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_610 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_610 v0
  = case coe v0 of
      C_constructor_1396 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_614 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_614 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_616 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_616 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d_cryptoStructure_610 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_618 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_618 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_620 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_620 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_622 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_622 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_624 :: T_GovStructure_10 -> ()
d_THash_624 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_626 :: T_GovStructure_10 -> ()
d_KeyPair_626 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SKey
d_SKey_628 :: T_GovStructure_10 -> ()
d_SKey_628 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_630 :: T_GovStructure_10 -> ()
d_ScriptHash_630 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Ser
d_Ser_632 :: T_GovStructure_10 -> ()
d_Ser_632 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_634 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d_cryptoStructure_610 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_636 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_636 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Sig
d_Sig_638 :: T_GovStructure_10 -> ()
d_Sig_638 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_640 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_640 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKey
d_VKey_642 :: T_GovStructure_10 -> ()
d_VKey_642 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_644 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_644 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_646 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_646 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_648 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_648 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.khs
d_khs_650 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d_cryptoStructure_610 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pkk
d_pkk_652 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d_cryptoStructure_610 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sign
d_sign_654 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_654 v0
  = let v1 = d_cryptoStructure_610 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_656 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_656 v0
  = case coe v0 of
      C_constructor_1396 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__660 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__662 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_664 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_664 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_666 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_668 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_670 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_672 :: T_GovStructure_10 -> ()
d_Epoch_672 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_674 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_676 :: T_GovStructure_10 -> AgdaAny
d_RandomnessStabilisationWindow_676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_678 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slot
d_Slot_680 :: T_GovStructure_10 -> ()
d_Slot_680 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_682 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_684 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_686 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_688 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_688 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.e<sucᵉ
d_e'60'suc'7497'_690 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.epoch
d_epoch_692 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_694 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_696 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_698 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_700 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.≤-predᵉ
d_'8804''45'pred'7497'_702 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_656 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_704 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
d_scriptStructure_704 v0
  = case coe v0 of
      C_constructor_1396 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__708 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__708 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_710 :: T_GovStructure_10 -> ()
d_CostModel_710 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T
d_T_712 :: T_GovStructure_10 -> ()
d_T_712 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_714 :: T_GovStructure_10 -> ()
d_THash_714 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_716 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Datum
d_Datum_718 :: T_GovStructure_10 -> ()
d_Datum_718 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_720 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_722 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_724 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_726 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_728 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_730 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_732 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_734 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_736 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_736 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_704 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_738 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_738 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_704 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_740 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_742 :: T_GovStructure_10 -> ()
d_ExUnits_742 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_744 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_746 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_748 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_750 :: T_GovStructure_10 -> ()
d_LangDepView_750 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Language
d_Language_752 :: T_GovStructure_10 -> ()
d_Language_752 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_754 :: T_GovStructure_10 -> ()
d_P1Script_754 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_756 :: T_GovStructure_10 -> ()
d_PlutusScript_756 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_758 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_760 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_762 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Prices
d_Prices_764 :: T_GovStructure_10 -> ()
d_Prices_764 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_766 :: T_GovStructure_10 -> ()
d_Redeemer_766 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Script
d_Script_768 :: T_GovStructure_10 -> ()
d_Script_768 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_770 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_772 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Language
d_Show'45'Language_774 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_776 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_778 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_778 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_704 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_780 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_780 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_704 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_782 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_782 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
            (coe d_scriptStructure_704 (coe v0))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getLanguage
d_getLanguage_784 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_426
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_786 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_788 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_788 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_790 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_790 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_792 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_792 ~v0 = du_isP1Script'63'_792
du_isP1Script'63'_792 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_792
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_404
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_794 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_794 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_796 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_796 ~v0 = du_isP2Script'63'_796
du_isP2Script'63'_796 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_796
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_418
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.language
d_language_798 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_704 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.p1s
d_p1s_800 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ps
d_ps_802 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_804 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_804 ~v0 = du_toP1Script_804
du_toP1Script_804 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_806 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_806 ~v0 = du_toP2Script_806
du_toP2Script_806 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_808 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_808 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_810 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_810 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_814 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_818 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_458
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_820 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_820 ~v0 = du_DecEq'45'DrepThresholds_820
du_DecEq'45'DrepThresholds_820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_576
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_822 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_822 ~v0 = du_DecEq'45'PParamGroup_822
du_DecEq'45'PParamGroup_822 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_822
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_582
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_824 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_580
      (coe d_epochStructure_656 (coe v0))
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_826 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_826 ~v0 = du_DecEq'45'PoolThresholds_826
du_DecEq'45'PoolThresholds_826 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_578
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_828 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_834 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_840 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_844 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_844 ~v0 = du_HasCast'45'Acnt_844
du_HasCast'45'Acnt_844 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_844
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_196
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_846 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_850 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_850 ~v0 = du_HasReserves'45'Acnt_850
du_HasReserves'45'Acnt_850 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_184
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_852 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_852 ~v0 = du_HasTreasury'45'Acnt_852
du_HasTreasury'45'Acnt_852 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_182
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LanguageCostModels
d_LanguageCostModels_854 :: T_GovStructure_10 -> ()
d_LanguageCostModels_854 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_858 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams
d_PParams_860 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_864 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_870 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ProtVer
d_ProtVer_874 :: T_GovStructure_10 -> ()
d_ProtVer_874 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_878 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_878 ~v0 = du_Show'45'DrepThresholds_878
du_Show'45'DrepThresholds_878 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_878
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_584
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_880 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_880 v0
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45'List_16
      (coe
         MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe d_scriptStructure_704 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe d_scriptStructure_704 (coe v0)))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_882 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_590
      (coe d_epochStructure_656 (coe v0))
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_884 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_884 ~v0 = du_Show'45'PoolThresholds_884
du_Show'45'PoolThresholds_884 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_586
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_886 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_886 ~v0 = du_Show'45'ProtVer_886
du_Show'45'ProtVer_886 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_886
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_894 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_894 ~v0 = du_paramsWF'45'elim_894
du_paramsWF'45'elim_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_894 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_556
      v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_896 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  ()
d_paramsWellFormed_896 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_898 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [Integer]
d_positivePParams_898 ~v0 = du_positivePParams_898
du_positivePParams_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [Integer]
du_positivePParams_898
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_466
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow
d_pvCanFollow_900 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_902 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_902 ~v0 = du_pvCanFollow'63'_902
du_pvCanFollow'63'_902 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1430
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_reserves_908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_treasury_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_232 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_234 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_236 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_238 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_240 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_242 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_244 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_246 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_248 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_250 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1544
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  ()
d_UpdateT_938 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478
d_ppUpd_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_946 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  AgdaAny -> ()
d_ppdWellFormed_946 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_updateGroups_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_458
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a
d_a_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.b
d_b_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_988 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_1000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  ()
d_UpdateT_1046 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1052 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  AgdaAny -> ()
d_ppdWellFormed_1052 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_updateGroups_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1058 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1058 ~v0 = du__'63''8599'__1058
du__'63''8599'__1058 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1058 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1220
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1060 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1424
      (coe d_epochStructure_656 (coe v0))
      (coe d_scriptStructure_704 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1062 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1066 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyPParamsUpdate_1066 ~v0 = du_applyPParamsUpdate_1066
du_applyPParamsUpdate_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_applyPParamsUpdate_1066
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1268
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1068 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_modifiedUpdateGroups_1068 ~v0 = du_modifiedUpdateGroups_1068
du_modifiedUpdateGroups_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
du_modifiedUpdateGroups_1068
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1204
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1070 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesEconomicGroup_1070 ~v0 = du_modifiesEconomicGroup_1070
du_modifiesEconomicGroup_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
du_modifiesEconomicGroup_1070
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_900
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1072 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesGovernanceGroup_1072 ~v0
  = du_modifiesGovernanceGroup_1072
du_modifiesGovernanceGroup_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
du_modifiesGovernanceGroup_1072
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1052
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1074 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesNetworkGroup_1074 ~v0 = du_modifiesNetworkGroup_1074
du_modifiesNetworkGroup_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
du_modifiesNetworkGroup_1074
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_824
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1076 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesSecurityGroup_1076 ~v0 = du_modifiesSecurityGroup_1076
du_modifiesSecurityGroup_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
du_modifiesSecurityGroup_1076
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1128
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1078 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesTechnicalGroup_1078 ~v0 = du_modifiesTechnicalGroup_1078
du_modifiesTechnicalGroup_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
du_modifiesTechnicalGroup_1078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_976
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1080 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  ()
d_paramsUpdateWellFormed_1080 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1082 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_456
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_666
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_668
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_670
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_672
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_694
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_688
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_716
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_734
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_724
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_726
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_728
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1084 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1084 ~v0 = du_'8801''45'update_1084
du_'8801''45'update_1084 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1084 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1234
      v1
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_Emax_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_712
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_a_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_682 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_710 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_b_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_684 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMaxTermLength_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_734
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMinSize_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_732
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_coinsPerUTxOByte_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_694
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_collateralPercentage_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_716
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdls_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_718
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_drepActivity_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_730
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepDeposit_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_728
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_720
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionDeposit_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_726
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionLifetime_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_724
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_keyDeposit_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_686
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxBlockExUnits_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_678
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxBlockSize_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_666
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxCollateralInputs_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_674
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxHeaderSize_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_670
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_702
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_700
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxTxExUnits_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_676
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxTxSize_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_668
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxValSize_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_672
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_698
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_minUTxOValue_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_708
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_690
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_nopt_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_714
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_poolDeposit_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_688
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_722
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_prices_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_696
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_680 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_706
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_704
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_692
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_266 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_268 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_270 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_272 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_274 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.govParams
d_govParams_1176 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512
d_govParams_1176 v0
  = case coe v0 of
      C_constructor_1396 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1180 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1544
      (coe d_govParams_1176 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1182 :: T_GovStructure_10 -> ()
d_UpdateT_1182 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1184 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe d_govParams_1176 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1186 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478
d_ppUpd_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
      (coe d_govParams_1176 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1188 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe d_govParams_1176 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1190 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1190 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1192 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_updateGroups_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe d_govParams_1176 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_1194 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1194 v0
  = case coe v0 of
      C_constructor_1396 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1198 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1200 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1202 :: T_GovStructure_10 -> Integer
d_MaxLovelaceSupply'7580'_1202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Network
d_Network_1204 :: T_GovStructure_10 -> ()
d_Network_1204 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_1206 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_1206 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1208 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1210 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1212 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1212 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_1214 :: T_GovStructure_10 -> Integer
d_Quorum_1214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1216 ::
  T_GovStructure_10 -> Integer
d_RandomnessStabilisationWindow'7580'_1216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_1218 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1220 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_1220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1222 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_1222 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1224 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1224 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1226 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1226 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_globalConstants_1194 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1230 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1230 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1232 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1236 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1240 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1242 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1244 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1244 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1244
du_Dec'45'isScript_1244 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1244
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1246 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1246 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1246
du_Dec'45'isVKey_1246 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1246
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1248 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1248 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1248 v1 v2 v3
du_DecEq'45'BaseAddr_1248 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1248 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1250 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1250 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1250 v1 v2 v3
du_DecEq'45'BootstrapAddr_1250 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1250 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1252 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1252 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1252 v2 v3
du_DecEq'45'Credential_1252 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1252 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1254 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1254 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_1254 v1 v2 v3
du_DecEq'45'RewardAddress_1254 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_1254 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1256 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1260 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1260 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RewardAddress_1260
du_HasCredential'45'RewardAddress_1260 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1260
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_164
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1262 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1266 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_1266 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1266
du_HasNetworkId'45'BaseAddr_1266 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BaseAddr_1266
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1268 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_1268 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1268
du_HasNetworkId'45'BootstrapAddr_1268 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BootstrapAddr_1268
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1270 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RewardAddress_1270 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_1270
du_HasNetworkId'45'RewardAddress_1270 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RewardAddress_1270
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_162
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1272 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1280 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1280 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress
d_RewardAddress_1282 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1288 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1288 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1290 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1290 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1292 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1292 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1296 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1296 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1296
du_Show'45'Credential_1296 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1296 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1298 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1298 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1298
du_Show'45'Credential'215'Coin_1298 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1298 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1300 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1300 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'RewardAddress_1300
du_Show'45'RewardAddress_1300 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1300
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_288
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1302 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1302 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1304 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1304 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1306 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1306 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1310 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1310 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1312 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1312 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1314 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_1314 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1314
du_getScriptHash_1314 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_1314
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1316 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1318 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1318 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1318
du_isBootstrapAddr'63'_1318 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1318
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1320 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1320 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1322 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1322 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1322
du_isKeyHashObj_1322 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1322
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1324 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1324 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1324
du_isKeyHashObj'7495'_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1324
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1326 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1328 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1328 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1330 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1330 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1330
du_isScriptObj_1330 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1330
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1332 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1332 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1334 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1336 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1336 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.netId
d_netId_1338 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1338 ~v0 ~v1 ~v2 ~v3 = du_netId_1338
du_netId_1338 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1338
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1340 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1340 ~v0 ~v1 ~v2 ~v3 = du_payCred_1340
du_payCred_1340 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1340
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1342 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1342 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1342
du_stakeCred_1342 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1342
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1346 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_1346 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1354 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1354 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1356 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_1356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1358 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1368 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1368 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1372 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1372 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1376 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1376 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress.net
d_net_1380 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress.stake
d_stake_1382 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
