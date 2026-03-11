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
  = C_constructor_1472 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
-- Ledger.Conway.Specification.Gov.Base._.GovParams
d_GovParams_250 a0 a1 a2 a3 a4 a5 a6 = ()
-- Ledger.Conway.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1582
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516
d_ppUpd_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.TxId
d_TxId_626 :: T_GovStructure_10 -> ()
d_TxId_626 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_628 :: T_GovStructure_10 -> ()
d_DocHash_628 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_630 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_630 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-DocHash
d_DecEq'45'DocHash_632 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DocHash_632 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_634 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_634 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_638 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_638 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_640 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_640 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d_cryptoStructure_634 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_642 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_642 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_644 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_644 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_646 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_646 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_648 :: T_GovStructure_10 -> ()
d_THash_648 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_650 :: T_GovStructure_10 -> ()
d_KeyPair_650 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SKey
d_SKey_652 :: T_GovStructure_10 -> ()
d_SKey_652 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_654 :: T_GovStructure_10 -> ()
d_ScriptHash_654 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Ser
d_Ser_656 :: T_GovStructure_10 -> ()
d_Ser_656 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_658 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d_cryptoStructure_634 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_660 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_660 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Sig
d_Sig_662 :: T_GovStructure_10 -> ()
d_Sig_662 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_664 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_664 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKey
d_VKey_666 :: T_GovStructure_10 -> ()
d_VKey_666 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_668 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_668 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_670 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_670 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_672 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_672 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.khs
d_khs_674 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d_cryptoStructure_634 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pkk
d_pkk_676 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d_cryptoStructure_634 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sign
d_sign_678 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_678 v0
  = let v1 = d_cryptoStructure_634 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_680 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_680 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__684 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__686 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_688 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_688 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_690 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_692 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_694 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_696 :: T_GovStructure_10 -> ()
d_Epoch_696 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_698 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_700 :: T_GovStructure_10 -> AgdaAny
d_RandomnessStabilisationWindow_700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_702 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slot
d_Slot_704 :: T_GovStructure_10 -> ()
d_Slot_704 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_706 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_706 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_708 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_710 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_710 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_712 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.e<sucᵉ
d_e'60'suc'7497'_714 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_714 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.epoch
d_epoch_716 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_718 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_718 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_720 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_722 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_722 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_724 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_724 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.≤-predᵉ
d_'8804''45'pred'7497'_726 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_726 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_680 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_728 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_scriptStructure_728 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__732 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__732 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_734 :: T_GovStructure_10 -> ()
d_CostModel_734 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T
d_T_736 :: T_GovStructure_10 -> ()
d_T_736 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_738 :: T_GovStructure_10 -> ()
d_THash_738 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_740 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Datum
d_Datum_742 :: T_GovStructure_10 -> ()
d_Datum_742 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_744 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_746 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_748 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_750 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_752 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_754 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_756 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_758 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_760 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_760 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe d_scriptStructure_728 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_762 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_762 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe d_scriptStructure_728 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_764 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_766 :: T_GovStructure_10 -> ()
d_ExUnits_766 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_768 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_770 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_772 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_774 :: T_GovStructure_10 -> ()
d_LangDepView_774 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Language
d_Language_776 :: T_GovStructure_10 -> ()
d_Language_776 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_778 :: T_GovStructure_10 -> ()
d_P1Script_778 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_780 :: T_GovStructure_10 -> ()
d_PlutusScript_780 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_782 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_784 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_786 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Prices
d_Prices_788 :: T_GovStructure_10 -> ()
d_Prices_788 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_790 :: T_GovStructure_10 -> ()
d_Redeemer_790 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Script
d_Script_792 :: T_GovStructure_10 -> ()
d_Script_792 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_794 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_796 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Language
d_Show'45'Language_798 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_800 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_802 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_802 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe d_scriptStructure_728 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_804 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_804 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe d_scriptStructure_728 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_806 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_806 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe d_scriptStructure_728 (coe v0))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getLanguage
d_getLanguage_808 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_810 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_812 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_812 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_814 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_814 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_816 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_816 ~v0 = du_isP1Script'63'_816
du_isP1Script'63'_816 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_816
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_818 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_818 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_820 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_820 ~v0 = du_isP2Script'63'_820
du_isP2Script'63'_820 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.language
d_language_822 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.p1s
d_p1s_824 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ps
d_ps_826 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_828 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_828 ~v0 = du_toP1Script_828
du_toP1Script_828 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_828
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_830 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_830 ~v0 = du_toP2Script_830
du_toP2Script_830 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_832 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_832 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_834 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_834 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_836 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe d_scriptStructure_728 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_840 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_472
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-pvCanFollowMajor
d_Dec'45'pvCanFollowMajor_846 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'pvCanFollowMajor_846 ~v0 = du_Dec'45'pvCanFollowMajor_846
du_Dec'45'pvCanFollowMajor_846 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'pvCanFollowMajor_846
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Dec'45'pvCanFollowMajor_1446
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-pvCanFollowMinor
d_Dec'45'pvCanFollowMinor_848 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'pvCanFollowMinor_848 ~v0 = du_Dec'45'pvCanFollowMinor_848
du_Dec'45'pvCanFollowMinor_848 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'pvCanFollowMinor_848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Dec'45'pvCanFollowMinor_1478
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_850 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_850 ~v0 = du_DecEq'45'DrepThresholds_850
du_DecEq'45'DrepThresholds_850 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_590
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_852 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_852 ~v0 = du_DecEq'45'PParamGroup_852
du_DecEq'45'PParamGroup_852 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_596
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_854 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_594
      (coe d_epochStructure_680 (coe v0))
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_856 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_856 ~v0 = du_DecEq'45'PoolThresholds_856
du_DecEq'45'PoolThresholds_856 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_856
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_592
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_858 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_864 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_870 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_874 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_874 ~v0 = du_HasCast'45'Acnt_874
du_HasCast'45'Acnt_874 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_874
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_210
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_876 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_880 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_880 ~v0 = du_HasReserves'45'Acnt_880
du_HasReserves'45'Acnt_880 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_186
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_882 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_882 ~v0 = du_HasTreasury'45'Acnt_882
du_HasTreasury'45'Acnt_882 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_184
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LanguageCostModels
d_LanguageCostModels_884 :: T_GovStructure_10 -> ()
d_LanguageCostModels_884 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_888 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams
d_PParams_890 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_894 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_900 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ProtVer
d_ProtVer_904 :: T_GovStructure_10 -> ()
d_ProtVer_904 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_908 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_908 ~v0 = du_Show'45'DrepThresholds_908
du_Show'45'DrepThresholds_908 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_908
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_598
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_910 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_910 v0
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45'List_16
      (coe
         MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe d_scriptStructure_728 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe d_scriptStructure_728 (coe v0)))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_912 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_604
      (coe d_epochStructure_680 (coe v0))
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_914 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_914 ~v0 = du_Show'45'PoolThresholds_914
du_Show'45'PoolThresholds_914 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_914
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_600
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_916 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_916 ~v0 = du_Show'45'ProtVer_916
du_Show'45'ProtVer_916 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_916
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_924 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_924 ~v0 = du_paramsWF'45'elim_924
du_paramsWF'45'elim_924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_924 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_570
      v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_926 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  ()
d_paramsWellFormed_926 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_928 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [Integer]
d_positivePParams_928 ~v0 = du_positivePParams_928
du_positivePParams_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [Integer]
du_positivePParams_928
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_480
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow
d_pvCanFollow_930 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_pvCanFollow_930 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_932 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_932 ~v0 = du_pvCanFollow'63'_932
du_pvCanFollow'63'_932 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1514
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollowMajor
d_pvCanFollowMajor_934 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollowMajor?
d_pvCanFollowMajor'63'_936 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_pvCanFollowMajor'63'_936 ~v0 = du_pvCanFollowMajor'63'_936
du_pvCanFollowMajor'63'_936 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_pvCanFollowMajor'63'_936
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollowMajor'63'_1506
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollowMinor
d_pvCanFollowMinor_938 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollowMinor?
d_pvCanFollowMinor'63'_940 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_pvCanFollowMinor'63'_940 ~v0 = du_pvCanFollowMinor'63'_940
du_pvCanFollowMinor'63'_940 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_pvCanFollowMinor'63'_940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollowMinor'63'_1508
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvMajor
d_pvMajor_942 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_pvMajor_942 ~v0 v1 = du_pvMajor_942 v1
du_pvMajor_942 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_pvMajor_942 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvMinor
d_pvMinor_944 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_pvMinor_944 ~v0 v1 = du_pvMinor_944 v1
du_pvMinor_944 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_pvMinor_944 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_reserves_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_180
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_treasury_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_178
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_246 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_248 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_250 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_252 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_254 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_256 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_258 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_260 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_262 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_264 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1582
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  ()
d_UpdateT_980 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516
d_ppUpd_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1540
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_988 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  AgdaAny -> ()
d_ppdWellFormed_988 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1534
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_472
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_Emax_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a
d_a_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.b
d_b_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_1030 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_436
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_1032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_1034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_drepActivity_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_1036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_1036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxBlockExUnits_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_maxTxExUnits_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny
d_prices_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516 ->
  ()
d_UpdateT_1088 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1532
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1540
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1094 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516 ->
  AgdaAny -> ()
d_ppdWellFormed_1094 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1534
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1100 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1100 ~v0 = du__'63''8599'__1100
du__'63''8599'__1100 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1100 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1234
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1102 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1440
      (coe d_epochStructure_680 (coe v0))
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1104 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1108 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyPParamsUpdate_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1282
      (coe d_scriptStructure_728 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1110 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_modifiedUpdateGroups_1110 ~v0 = du_modifiedUpdateGroups_1110
du_modifiedUpdateGroups_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
du_modifiedUpdateGroups_1110
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1218
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1112 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesEconomicGroup_1112 ~v0 = du_modifiesEconomicGroup_1112
du_modifiesEconomicGroup_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesEconomicGroup_1112
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_914
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1114 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesGovernanceGroup_1114 ~v0
  = du_modifiesGovernanceGroup_1114
du_modifiesGovernanceGroup_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesGovernanceGroup_1114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1066
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1116 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesNetworkGroup_1116 ~v0 = du_modifiesNetworkGroup_1116
du_modifiesNetworkGroup_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesNetworkGroup_1116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_838
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1118 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesSecurityGroup_1118 ~v0 = du_modifiesSecurityGroup_1118
du_modifiesSecurityGroup_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesSecurityGroup_1118
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1142
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1120 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesTechnicalGroup_1120 ~v0 = du_modifiesTechnicalGroup_1120
du_modifiesTechnicalGroup_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesTechnicalGroup_1120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_990
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1122 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  ()
d_paramsUpdateWellFormed_1122 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1124 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_680
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_682
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_684
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_686
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_708
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_702
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_730
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_748
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_738
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_740
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_742
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1126 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1126 ~v0 = du_'8801''45'update_1126
du_'8801''45'update_1126 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1126 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1248
      v1
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe AgdaAny
d_Emax_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_726
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_a_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_696 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_724 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_b_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_698 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_ccMaxTermLength_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_748
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_ccMinSize_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_746
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_coinsPerUTxOByte_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_708
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_collateralPercentage_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_730
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdls_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_732
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe AgdaAny
d_drepActivity_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_744
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_drepDeposit_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_742
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_734
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_govActionDeposit_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_740
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_govActionLifetime_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_738
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_keyDeposit_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_700
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe AgdaAny
d_maxBlockExUnits_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_692
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxBlockSize_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_680
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxCollateralInputs_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_688
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxHeaderSize_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_684
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_716
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_714
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe AgdaAny
d_maxTxExUnits_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_690
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxTxSize_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_682
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxValSize_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_686
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_712
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_minUTxOValue_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_722
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_704
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_nopt_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_728
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_poolDeposit_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_702
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_736
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe AgdaAny
d_prices_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_710
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_694 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_720
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_718
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_706
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_280 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_282 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_284 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_286 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_288 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.govParams
d_govParams_1220 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1550
d_govParams_1220 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1224 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1582
      (coe d_govParams_1220 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1226 :: T_GovStructure_10 -> ()
d_UpdateT_1226 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1228 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe d_govParams_1220 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1230 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1516
d_ppUpd_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
      (coe d_govParams_1220 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1232 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1540
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe d_govParams_1220 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1234 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1234 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1236 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1534
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1568
         (coe d_govParams_1220 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_1238 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1238 v0
  = case coe v0 of
      C_constructor_1472 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1242 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1244 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1244 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1246 :: T_GovStructure_10 -> Integer
d_MaxLovelaceSupply'7580'_1246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Network
d_Network_1248 :: T_GovStructure_10 -> ()
d_Network_1248 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_1250 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_1250 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1252 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1252 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1254 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1256 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_1258 :: T_GovStructure_10 -> Integer
d_Quorum_1258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1260 ::
  T_GovStructure_10 -> Integer
d_RandomnessStabilisationWindow'7580'_1260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_1262 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1262 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1264 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_1264 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1266 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_1266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1268 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1268 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1270 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1270 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1274 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1274 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.AttrSizeOf
d_AttrSizeOf_1276 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_1276 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1278 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1282 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1286 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1288 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1288 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1290 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1290 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1290
du_Dec'45'isScript_1290 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1290
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_300
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1292 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1292 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1292
du_Dec'45'isVKey_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1292
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1294 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1294 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1294 v1 v2 v3
du_DecEq'45'BaseAddr_1294 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1294 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_332
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1296 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1296 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1296 v1 v2 v3
du_DecEq'45'BootstrapAddr_1296 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1296 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_334
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1298 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1298 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1298 v2 v3
du_DecEq'45'Credential_1298 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1298 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1300 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1300 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_1300 v1 v2 v3
du_DecEq'45'RewardAddress_1300 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_1300 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasAttrSize
d_HasAttrSize_1302 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1306 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
d_HasAttrSize'45'BootstrapAddr_1306 ~v0 ~v1 ~v2 ~v3
  = du_HasAttrSize'45'BootstrapAddr_1306
du_HasAttrSize'45'BootstrapAddr_1306 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
du_HasAttrSize'45'BootstrapAddr_1306
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_226
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1308 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1312 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1312 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RewardAddress_1312
du_HasCredential'45'RewardAddress_1312 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1312
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1314 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1318 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1322 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BaseAddr_1322 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1322
du_HasNetworkId'45'BaseAddr_1322 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BaseAddr_1322
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_218
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1324 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BootstrapAddr_1324 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1324
du_HasNetworkId'45'BootstrapAddr_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BootstrapAddr_1324
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_220
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1326 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_1326 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_1326
du_HasNetworkId'45'RewardAddress_1326 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'RewardAddress_1326
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasRewardAddress
d_HasRewardAddress_1328 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1332 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1340 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1342 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress
d_RewardAddress_1344 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddressOf
d_RewardAddressOf_1348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_1348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1352 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1352 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1354 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1354 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1356 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1356 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1360 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1360 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1360
du_Show'45'Credential_1360 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1360 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_348
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1362 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1362 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1362
du_Show'45'Credential'215'Coin_1362 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1362 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_352
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1364 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1364 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'RewardAddress_1364
du_Show'45'RewardAddress_1364 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1364
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_350
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1366 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1366 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1368 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1368 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1370 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1370 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1374 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1374 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1376 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1376 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1378 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_1378 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1378
du_getScriptHash_1378 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_1378
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_326
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1380 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1382 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1382 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1382
du_isBootstrapAddr'63'_1382 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1382
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_280
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1384 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1384 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1386 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1386 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1386
du_isKeyHashObj_1386 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1386
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1388 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1388 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1388
du_isKeyHashObj'7495'_1388 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1388
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1390 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1392 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1392 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1394 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1394 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1394
du_isScriptObj_1394 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1394
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1396 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1396 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1398 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1400 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1400 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.netId
d_netId_1402 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1402 ~v0 ~v1 ~v2 ~v3 = du_netId_1402
du_netId_1402 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1402
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1404 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1404 ~v0 ~v1 ~v2 ~v3 = du_payCred_1404
du_payCred_1404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1404
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1406 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1406 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1406
du_stakeCred_1406 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_252
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1410 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_1410 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1412 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1412 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1414 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1414 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1418 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1418 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1420 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_1420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1422 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1432 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_1432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1440 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1444 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1448 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1452 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress.net
d_net_1456 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1456 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress.stake
d_stake_1458 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
