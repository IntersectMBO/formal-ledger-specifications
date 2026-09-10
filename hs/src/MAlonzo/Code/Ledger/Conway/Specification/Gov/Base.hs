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
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
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
  = C_constructor_1448 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
-- Ledger.Conway.Specification.Gov.Base._.GovParams
d_GovParams_266 a0 a1 a2 a3 a4 a5 a6 = ()
-- Ledger.Conway.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.TxId
d_TxId_608 :: T_GovStructure_10 -> ()
d_TxId_608 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_610 :: T_GovStructure_10 -> ()
d_DocHash_610 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_612 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_612 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-DocHash
d_DecEq'45'DocHash_614 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DocHash_614 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_616 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_616 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_620 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_620 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_622 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d_cryptoStructure_616 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_624 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_624 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_626 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_626 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_628 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_628 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-VRF
d_DecEq'45'VRF_630 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d_cryptoStructure_616 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_632 :: T_GovStructure_10 -> ()
d_THash_632 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_634 :: T_GovStructure_10 -> ()
d_KeyPair_634 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SKey
d_SKey_636 :: T_GovStructure_10 -> ()
d_SKey_636 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_638 :: T_GovStructure_10 -> ()
d_ScriptHash_638 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Ser
d_Ser_640 :: T_GovStructure_10 -> ()
d_Ser_640 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_642 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d_cryptoStructure_616 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_644 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_644 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Sig
d_Sig_646 :: T_GovStructure_10 -> ()
d_Sig_646 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_648 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_648 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKey
d_VKey_650 :: T_GovStructure_10 -> ()
d_VKey_650 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VRF
d_VRF_652 :: T_GovStructure_10 -> ()
d_VRF_652 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_654 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_654 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_656 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_656 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_658 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_658 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.khs
d_khs_660 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d_cryptoStructure_616 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pkk
d_pkk_662 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d_cryptoStructure_616 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sign
d_sign_664 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_664 v0
  = let v1 = d_cryptoStructure_616 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_666 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_666 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__670 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__672 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_674 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_674 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_676 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_678 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_680 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_680 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_682 :: T_GovStructure_10 -> ()
d_Epoch_682 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_684 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_686 :: T_GovStructure_10 -> AgdaAny
d_RandomnessStabilisationWindow_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_688 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_688 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slot
d_Slot_690 :: T_GovStructure_10 -> ()
d_Slot_690 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_692 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_694 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_696 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_698 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.e<sucᵉ
d_e'60'suc'7497'_700 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.epoch
d_epoch_702 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_704 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_706 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_706 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_708 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_710 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_710 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.≤-predᵉ
d_'8804''45'pred'7497'_712 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_666 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_714 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284
d_scriptStructure_714 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__718 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__718 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_720 :: T_GovStructure_10 -> ()
d_CostModel_720 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T
d_T_722 :: T_GovStructure_10 -> ()
d_T_722 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_724 :: T_GovStructure_10 -> ()
d_THash_724 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_726 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Datum
d_Datum_728 :: T_GovStructure_10 -> ()
d_Datum_728 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_730 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_732 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_734 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_736 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_738 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_740 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_742 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_744 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_448
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_746 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_748 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_748 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe d_scriptStructure_714 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_750 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_750 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe d_scriptStructure_714 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_752 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_754 :: T_GovStructure_10 -> ()
d_ExUnits_754 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_756 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_758 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_760 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_762 :: T_GovStructure_10 -> ()
d_LangDepView_762 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Language
d_Language_764 :: T_GovStructure_10 -> ()
d_Language_764 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LanguageCostModels
d_LanguageCostModels_766 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_770 :: T_GovStructure_10 -> ()
d_P1Script_770 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_772 :: T_GovStructure_10 -> ()
d_PlutusScript_772 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_774 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_776 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_778 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Prices
d_Prices_780 :: T_GovStructure_10 -> ()
d_Prices_780 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_782 :: T_GovStructure_10 -> ()
d_Redeemer_782 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Script
d_Script_784 :: T_GovStructure_10 -> ()
d_Script_784 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_786 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_788 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Language
d_Show'45'Language_790 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_792 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_454
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_794 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_796 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_796 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe d_scriptStructure_714 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_798 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_798 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe d_scriptStructure_714 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_800 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
            (coe d_scriptStructure_714 (coe v0))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getLanguage
d_getLanguage_802 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_436
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_804 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_330
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_806 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_806 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_808 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_808 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_810 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_810 ~v0 = du_isP1Script'63'_810
du_isP1Script'63'_810 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_810
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_414
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_812 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_812 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_814 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_814 ~v0 = du_isP2Script'63'_814
du_isP2Script'63'_814 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_814
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_428
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.language
d_language_816 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.languageCostModels
d_languageCostModels_818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.p1s
d_p1s_822 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108
d_p1s_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ps
d_ps_824 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132
d_ps_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_826 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_826 ~v0 = du_toP1Script_826
du_toP1Script_826 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_828 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_828 ~v0 = du_toP2Script_828
du_toP2Script_828 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_828
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_434
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_830 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_830 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_832 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_832 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_834 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe d_scriptStructure_714 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_842 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_848 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_848 ~v0 = du_DecEq'45'DrepThresholds_848
du_DecEq'45'DrepThresholds_848 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_850 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_850 ~v0 = du_DecEq'45'PParamGroup_850
du_DecEq'45'PParamGroup_850 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_852 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
      (coe d_epochStructure_666 (coe v0))
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_854 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_854 ~v0 = du_DecEq'45'PoolThresholds_854
du_DecEq'45'PoolThresholds_854 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_856 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_862 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_868 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_872 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_872 ~v0 = du_HasCast'45'Acnt_872
du_HasCast'45'Acnt_872 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_874 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_878 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_878 ~v0 = du_HasReserves'45'Acnt_878
du_HasReserves'45'Acnt_878 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_878
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_880 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_880 ~v0 = du_HasTreasury'45'Acnt_880
du_HasTreasury'45'Acnt_880 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_884 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams
d_PParams_886 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_890 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_896 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_902 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_902 ~v0 = du_Show'45'DrepThresholds_902
du_Show'45'DrepThresholds_902 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_904 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
      (coe d_epochStructure_666 (coe v0))
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_906 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_906 ~v0 = du_Show'45'PoolThresholds_906
du_Show'45'PoolThresholds_906 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_906
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_910 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_910 ~v0 = du_paramsWF'45'elim_910
du_paramsWF'45'elim_910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_910 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_912 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_912 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_914 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_914 ~v0 = du_positivePParams_914
du_positivePParams_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
du_positivePParams_914
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_950 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_958 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_958 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_Emax_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a
d_a_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.b
d_b_990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_1000 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdlsAssoc_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_drepActivity_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxBlockExUnits_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxTxExUnits_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_1032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_1036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_prices_1046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_1058 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1064 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_1064 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1070 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1070 ~v0 = du__'63''8599'__1070
du__'63''8599'__1070 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1070 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__1072 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d__'8746''737''7580''7504'__1072 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_446
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                  (coe d_scriptStructure_714 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
                  (coe v2)))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1074 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
      (coe d_epochStructure_666 (coe v0))
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1076 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1080 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
      (coe d_scriptStructure_714 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1082 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_1082 ~v0 = du_modifiedUpdateGroups_1082
du_modifiedUpdateGroups_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_1082
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1084 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_1084 ~v0 = du_modifiesEconomicGroup_1084
du_modifiesEconomicGroup_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesEconomicGroup_1084
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1086 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_1086 ~v0
  = du_modifiesGovernanceGroup_1086
du_modifiesGovernanceGroup_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesGovernanceGroup_1086
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1088 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_1088 ~v0 = du_modifiesNetworkGroup_1088
du_modifiesNetworkGroup_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesNetworkGroup_1088
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1090 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_1090 ~v0 = du_modifiesSecurityGroup_1090
du_modifiesSecurityGroup_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesSecurityGroup_1090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1092 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_1092 ~v0 = du_modifiesTechnicalGroup_1092
du_modifiesTechnicalGroup_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesTechnicalGroup_1092
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1094 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_1094 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1096 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1098 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1098 ~v0 = du_'8801''45'update_1098
du_'8801''45'update_1098 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1098 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_Emax_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdls_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_drepActivity_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxBlockExUnits_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxTxExUnits_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_prices_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.govParams
d_govParams_1184 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_1184 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1188 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe d_govParams_1184 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1190 :: T_GovStructure_10 -> ()
d_UpdateT_1190 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1192 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe d_govParams_1184 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1194 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe d_govParams_1184 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1196 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe d_govParams_1184 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1198 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1198 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1200 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe d_govParams_1184 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_1202 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1202 v0
  = case coe v0 of
      C_constructor_1448 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1206 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1206 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1208 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1210 :: T_GovStructure_10 -> Integer
d_MaxLovelaceSupply'7580'_1210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Network
d_Network_1212 :: T_GovStructure_10 -> ()
d_Network_1212 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_1214 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_1214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1216 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1218 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1220 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_1222 :: T_GovStructure_10 -> Integer
d_Quorum_1222 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1224 ::
  T_GovStructure_10 -> Integer
d_RandomnessStabilisationWindow'7580'_1224 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_1226 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1226 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1228 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_1228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1230 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_1230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1232 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1232 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1234 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1234 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_globalConstants_1202 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1238 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1238 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.AttrSizeOf
d_AttrSizeOf_1242 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1244 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1248 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1252 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1254 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1256 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1256 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1256
du_Dec'45'isScript_1256 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1256
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1258 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1258 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1258
du_Dec'45'isVKey_1258 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1258
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1260 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1260 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1260 v1 v2 v3
du_DecEq'45'BaseAddr_1260 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1260 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1262 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1262 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1262 v1 v2 v3
du_DecEq'45'BootstrapAddr_1262 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1262 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1264 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1264 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1264 v2 v3
du_DecEq'45'Credential_1264 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1264 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1266 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1266 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_1266 v1 v2 v3
du_DecEq'45'RewardAddress_1266 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_1266 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasAttrSize
d_HasAttrSize_1268 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1272 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1272 ~v0 ~v1 ~v2 ~v3
  = du_HasAttrSize'45'BootstrapAddr_1272
du_HasAttrSize'45'BootstrapAddr_1272 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1272
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1274 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1278 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1278 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RewardAddress_1278
du_HasCredential'45'RewardAddress_1278 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1278
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1280 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1284 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1288 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1288 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1288
du_HasNetworkId'45'BaseAddr_1288 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1288
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1290 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1290 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1290
du_HasNetworkId'45'BootstrapAddr_1290 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1290
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1292 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1292 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_1292
du_HasNetworkId'45'RewardAddress_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1292
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasRewardAddress
d_HasRewardAddress_1294 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1298 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1302 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1304 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1304 ~v0 ~v1 ~v2 ~v3
  = du_IsBootstrapAddr'63'_1304
du_IsBootstrapAddr'63'_1304 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1304
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.IsKeyHashObj
d_IsKeyHashObj_1308 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1310 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1310 ~v0 ~v1 ~v2 ~v3 = du_IsKeyHashObj'63'_1310
du_IsKeyHashObj'63'_1310 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1310
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1314 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1316 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress
d_RewardAddress_1318 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddressOf
d_RewardAddressOf_1322 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1326 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1326 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1328 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1328 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1330 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1330 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1334 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1334 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1334
du_Show'45'Credential_1334 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1334 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1336 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1336 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1336
du_Show'45'Credential'215'Coin_1336 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1336 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1338 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1338 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'RewardAddress_1338
du_Show'45'RewardAddress_1338 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1338
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1340 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1340 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1342 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1342 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1344 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1344 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1348 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1348 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1352 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1352 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1352
du_getScriptHash_1352 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1352
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1354 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1354 ~v0 ~v1 ~v2 ~v3 = du_isBootstrapAddr_1354
du_isBootstrapAddr_1354 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1354
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1356 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1356 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1358 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1358 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1358
du_isKeyHashObj_1358 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1358
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1360 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1360 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1360
du_isKeyHashObj'7495'_1360 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1360
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1362 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1364 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1364 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1366 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1366 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1366
du_isScriptObj_1366 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1366
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1368 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1368 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1370 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1372 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1372 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.netId
d_netId_1374 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1374 ~v0 ~v1 ~v2 ~v3 = du_netId_1374
du_netId_1374 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1374
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1376 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1376 ~v0 ~v1 ~v2 ~v3 = du_payCred_1376
du_payCred_1376 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1376
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1378 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1378 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1378
du_stakeCred_1378 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1378
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1382 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1384 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1384 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1386 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1386 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1390 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1390 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1392 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1394 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1404 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1408 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1412 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1412 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1416 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1416 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1420 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1424 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1424 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress.net
d_net_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RewardAddress.stake
d_stake_1438 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
