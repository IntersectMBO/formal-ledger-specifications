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
import qualified MAlonzo.Code.Interface.Hashable
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
  = C_constructor_1372 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_264
-- Ledger.Conway.Specification.Gov.Base._.GovParams
d_GovParams_236 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1528
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462
d_ppUpd_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.TxId
d_TxId_592 :: T_GovStructure_10 -> ()
d_TxId_592 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_594 :: T_GovStructure_10 -> ()
d_DocHash_594 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_596 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_596 v0
  = case coe v0 of
      C_constructor_1372 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_598 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_598 v0
  = case coe v0 of
      C_constructor_1372 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_602 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_602 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_604 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d_cryptoStructure_598 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_606 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_606 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_608 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_608 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_610 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_610 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_612 :: T_GovStructure_10 -> ()
d_THash_612 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_614 :: T_GovStructure_10 -> ()
d_KeyPair_614 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SKey
d_SKey_616 :: T_GovStructure_10 -> ()
d_SKey_616 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_618 :: T_GovStructure_10 -> ()
d_ScriptHash_618 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Ser
d_Ser_620 :: T_GovStructure_10 -> ()
d_Ser_620 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_622 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d_cryptoStructure_598 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_624 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_624 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Sig
d_Sig_626 :: T_GovStructure_10 -> ()
d_Sig_626 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_628 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_628 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKey
d_VKey_630 :: T_GovStructure_10 -> ()
d_VKey_630 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_632 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_632 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_634 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_634 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_636 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_636 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.khs
d_khs_638 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d_cryptoStructure_598 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pkk
d_pkk_640 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_640 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d_cryptoStructure_598 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sign
d_sign_642 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_642 v0
  = let v1 = d_cryptoStructure_598 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_644 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_644 v0
  = case coe v0 of
      C_constructor_1372 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__648 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__82
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__650 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__84
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_652 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_652 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_654 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_656 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_70
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_658 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_68
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_660 :: T_GovStructure_10 -> ()
d_Epoch_660 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_662 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_258
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_664 :: T_GovStructure_10 -> AgdaAny
d_RandomnessStabilisationWindow_664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_76
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_666 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_64
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slot
d_Slot_668 :: T_GovStructure_10 -> ()
d_Slot_668 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_670 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_58
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_672 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_78
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_674 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_676 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_250
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.epoch
d_epoch_678 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_680 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_680 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_682 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_92
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_684 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_80
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_686 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_246
      (coe d_epochStructure_644 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_688 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
d_scriptStructure_688 v0
  = case coe v0 of
      C_constructor_1372 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__692 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__692 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_694 :: T_GovStructure_10 -> ()
d_CostModel_694 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T
d_T_696 :: T_GovStructure_10 -> ()
d_T_696 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_698 :: T_GovStructure_10 -> ()
d_THash_698 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_700 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Datum
d_Datum_702 :: T_GovStructure_10 -> ()
d_Datum_702 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_704 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_706 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_708 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_710 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_712 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_714 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_716 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_718 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_720 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_720 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_688 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_722 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_722 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_688 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_724 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_726 :: T_GovStructure_10 -> ()
d_ExUnits_726 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_728 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_730 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_732 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_734 :: T_GovStructure_10 -> ()
d_LangDepView_734 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Language
d_Language_736 :: T_GovStructure_10 -> ()
d_Language_736 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_738 :: T_GovStructure_10 -> ()
d_P1Script_738 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_740 :: T_GovStructure_10 -> ()
d_PlutusScript_740 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_742 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_744 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_746 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Prices
d_Prices_748 :: T_GovStructure_10 -> ()
d_Prices_748 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_750 :: T_GovStructure_10 -> ()
d_Redeemer_750 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Script
d_Script_752 :: T_GovStructure_10 -> ()
d_Script_752 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_754 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_756 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_758 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_760 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_760 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_688 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_762 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_762 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_688 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_764 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
            (coe d_scriptStructure_688 (coe v0))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_766 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_768 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_768 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_770 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_770 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_772 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_772 ~v0 = du_isP1Script'63'_772
du_isP1Script'63'_772 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_772
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_404
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_774 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_774 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_776 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_776 ~v0 = du_isP2Script'63'_776
du_isP2Script'63'_776 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_776
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_418
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.language
d_language_778 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.p1s
d_p1s_780 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_100
d_p1s_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ps
d_ps_782 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_124
d_ps_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toData
d_toData_784 :: T_GovStructure_10 -> () -> AgdaAny -> AgdaAny
d_toData_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_688 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_786 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_786 ~v0 = du_toP1Script_786
du_toP1Script_786 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_786
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_788 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_788 ~v0 = du_toP2Script_788
du_toP2Script_788 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_788
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_790 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_790 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_792 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_792 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_796 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_800 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_440 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_448
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_802 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_802 ~v0 = du_DecEq'45'DrepThresholds_802
du_DecEq'45'DrepThresholds_802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_802
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_564
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_804 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_804 ~v0 = du_DecEq'45'PParamGroup_804
du_DecEq'45'PParamGroup_804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_570
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_806 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_568
      (coe d_epochStructure_644 (coe v0))
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_808 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_808 ~v0 = du_DecEq'45'PoolThresholds_808
du_DecEq'45'PoolThresholds_808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_808
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_566
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_810 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_816 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_822 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_826 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_826 ~v0 = du_HasCast'45'Acnt_826
du_HasCast'45'Acnt_826 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_190
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_828 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_832 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_832 ~v0 = du_HasReserves'45'Acnt_832
du_HasReserves'45'Acnt_832 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_832
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_178
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_834 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_834 ~v0 = du_HasTreasury'45'Acnt_834
du_HasTreasury'45'Acnt_834 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_834
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_176
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_838 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams
d_PParams_840 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_844 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_850 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ProtVer
d_ProtVer_854 :: T_GovStructure_10 -> ()
d_ProtVer_854 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_858 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_858 ~v0 = du_Show'45'DrepThresholds_858
du_Show'45'DrepThresholds_858 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_858
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_572
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_860 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_576
      (coe d_epochStructure_644 (coe v0))
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_862 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_862 ~v0 = du_Show'45'PoolThresholds_862
du_Show'45'PoolThresholds_862 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_862
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_574
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_864 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_864 ~v0 = du_Show'45'ProtVer_864
du_Show'45'ProtVer_864 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_864
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_872 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_872 ~v0 = du_paramsWF'45'elim_872
du_paramsWF'45'elim_872 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_872 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_544
      v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_874 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  ()
d_paramsWellFormed_874 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_876 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [Integer]
d_positivePParams_876 ~v0 = du_positivePParams_876
du_positivePParams_876 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [Integer]
du_positivePParams_876
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_456
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow
d_pvCanFollow_878 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_880 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_880 ~v0 = du_pvCanFollow'63'_880
du_pvCanFollow'63'_880 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1414
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_886 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  Integer
d_reserves_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  Integer
d_treasury_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_226 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_228 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_230 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_232 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_234 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_236 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_238 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_906 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_240 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_242 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_244 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1528
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  ()
d_UpdateT_916 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_applyUpdate_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462
d_ppUpd_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_924 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  AgdaAny -> ()
d_ppdWellFormed_924 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192]
d_updateGroups_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_440 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_448
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_Emax_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_388
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a
d_a_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_a_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_360 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_392 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.b
d_b_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_b_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_362 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMaxTermLength_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_404
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMinSize_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_coinsPerUTxOByte_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_372
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_collateralPercentage_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_394
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_costmdls_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_396
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_drepActivity_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_drepDeposit_970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionDeposit_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionLifetime_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_406
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_keyDeposit_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxBlockExUnits_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxBlockSize_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_344
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxCollateralInputs_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_356
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxHeaderSize_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_348
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerBlock_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerTx_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_378
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxTxExUnits_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_350
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxTxSize_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_346
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxValSize_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_354
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_376
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_1000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_minUTxOValue_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_386
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_nopt_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_390
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_poolDeposit_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_prices_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_374
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_358 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_384
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_382
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462 ->
  ()
d_UpdateT_1022 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_applyUpdate_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1478
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1486
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1028 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462 ->
  AgdaAny -> ()
d_ppdWellFormed_1028 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192]
d_updateGroups_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1480
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1034 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1034 ~v0 = du__'63''8599'__1034
du__'63''8599'__1034 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1034 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1206
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1036 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1408
      (coe d_epochStructure_644 (coe v0))
      (coe d_scriptStructure_688 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1038 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1042 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_applyPParamsUpdate_1042 ~v0 = du_applyPParamsUpdate_1042
du_applyPParamsUpdate_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_applyPParamsUpdate_1042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1254
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1044 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192]
d_modifiedUpdateGroups_1044 ~v0 = du_modifiedUpdateGroups_1044
du_modifiedUpdateGroups_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192]
du_modifiedUpdateGroups_1044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1190
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1046 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
d_modifiesEconomicGroup_1046 ~v0 = du_modifiesEconomicGroup_1046
du_modifiesEconomicGroup_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
du_modifiesEconomicGroup_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_886
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1048 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
d_modifiesGovernanceGroup_1048 ~v0
  = du_modifiesGovernanceGroup_1048
du_modifiesGovernanceGroup_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
du_modifiesGovernanceGroup_1048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1038
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1050 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
d_modifiesNetworkGroup_1050 ~v0 = du_modifiesNetworkGroup_1050
du_modifiesNetworkGroup_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
du_modifiesNetworkGroup_1050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_810
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1052 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
d_modifiesSecurityGroup_1052 ~v0 = du_modifiesSecurityGroup_1052
du_modifiesSecurityGroup_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
du_modifiesSecurityGroup_1052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1114
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1054 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
d_modifiesTechnicalGroup_1054 ~v0 = du_modifiesTechnicalGroup_1054
du_modifiesTechnicalGroup_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Bool
du_modifiesTechnicalGroup_1054
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_962
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1056 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  ()
d_paramsUpdateWellFormed_1056 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1058 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_430
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_652
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_654
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_656
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_658
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_680
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_674
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_702
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_720
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_710
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_712
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_714
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1060 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1060 ~v0 = du_'8801''45'update_1060
du_'8801''45'update_1060 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1060 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1220
      v1
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe AgdaAny
d_Emax_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_698
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_a_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_668 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_696 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_b_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_670 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_ccMaxTermLength_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_720
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_ccMinSize_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_718
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_coinsPerUTxOByte_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_680
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_collateralPercentage_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_702
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe AgdaAny
d_costmdls_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_704
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe AgdaAny
d_drepActivity_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_716
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_drepDeposit_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_714
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_706
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_govActionDeposit_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_712
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_govActionLifetime_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_710
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_keyDeposit_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_672
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe AgdaAny
d_maxBlockExUnits_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_664
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxBlockSize_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_652
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxCollateralInputs_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_660
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxHeaderSize_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_656
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_688
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_686
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe AgdaAny
d_maxTxExUnits_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_662
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxTxSize_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_654
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_maxValSize_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_658
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_684
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_minUTxOValue_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_694
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_676
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_nopt_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_700
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe Integer
d_poolDeposit_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_674
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_708
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe AgdaAny
d_prices_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_682
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_666 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_692
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_690
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_580 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_678
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_260 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_262 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_264 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_266 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_268 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.govParams
d_govParams_1152 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1496
d_govParams_1152 v0
  = case coe v0 of
      C_constructor_1372 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1156 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1528
      (coe d_govParams_1152 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1158 :: T_GovStructure_10 -> ()
d_UpdateT_1158 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1160 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_applyUpdate_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
         (coe d_govParams_1152 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1162 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1462
d_ppUpd_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
      (coe d_govParams_1152 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1164 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
         (coe d_govParams_1152 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1166 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1166 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1168 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_192]
d_updateGroups_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1514
         (coe d_govParams_1152 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_1170 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_264
d_globalConstants_1170 v0
  = case coe v0 of
      C_constructor_1372 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1174 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1174 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_300
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1176 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1176 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_292
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1178 :: T_GovStructure_10 -> Integer
d_MaxLovelaceSupply'7580'_1178 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_308
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Network
d_Network_1180 :: T_GovStructure_10 -> ()
d_Network_1180 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_1182 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_1182 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_312
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1184 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1184 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_314
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1186 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_298
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1188 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1188 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_302
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_1190 :: T_GovStructure_10 -> Integer
d_Quorum_1190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_310
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1192 ::
  T_GovStructure_10 -> Integer
d_RandomnessStabilisationWindow'7580'_1192 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_304
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_1194 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_294
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1196 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_1196 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_296
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1198 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_1198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_306
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1200 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1200 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1202 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_328
      (coe d_globalConstants_1170 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1206 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1206 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1208 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1212 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1216 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1220 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1220 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1220
du_Dec'45'isScript_1220 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1220
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1222 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1222 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1222
du_Dec'45'isVKey_1222 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1222
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1224 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1224 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1224 v1 v2 v3
du_DecEq'45'BaseAddr_1224 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1224 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1226 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1226 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1226 v1 v2 v3
du_DecEq'45'BootstrapAddr_1226 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1226 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1228 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1228 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1228 v2 v3
du_DecEq'45'Credential_1228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1228 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1230 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1230 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1230 v1 v2 v3
du_DecEq'45'RwdAddr_1230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1230 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1232 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1236 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_1236 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RwdAddr_1236
du_HasCredential'45'RwdAddr_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RwdAddr_1236
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_164
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1238 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1242 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_1242 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1242
du_HasNetworkId'45'BaseAddr_1242 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BaseAddr_1242
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1244 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_1244 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1244
du_HasNetworkId'45'BootstrapAddr_1244 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BootstrapAddr_1244
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1246 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_1246 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RwdAddr_1246
du_HasNetworkId'45'RwdAddr_1246 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RwdAddr_1246
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1248 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1256 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RwdAddr
d_RwdAddr_1258 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1264 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1264 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1266 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1266 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1268 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1268 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1272 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1272 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1272
du_Show'45'Credential_1272 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1272 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1274 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1274 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1274
du_Show'45'Credential'215'Coin_1274 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1274 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1276 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1276 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1276
du_Show'45'RwdAddr_1276 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1276
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_288
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1278 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1278 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1280 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1280 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1282 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1282 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1286 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1286 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1288 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1288 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1290 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_1290 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1290
du_getScriptHash_1290 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_1290
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1292 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1294 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1294 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1294
du_isBootstrapAddr'63'_1294 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1294
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1296 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1296 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1298 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1298 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1298
du_isKeyHashObj_1298 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1298
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1300 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1300 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1300
du_isKeyHashObj'7495'_1300 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1300
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1302 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1304 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1304 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1306 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1306 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1306
du_isScriptObj_1306 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1306
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1308 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1308 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1310 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1312 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1312 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.netId
d_netId_1314 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1314 ~v0 ~v1 ~v2 ~v3 = du_netId_1314
du_netId_1314 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1314
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1316 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1316 ~v0 ~v1 ~v2 ~v3 = du_payCred_1316
du_payCred_1316 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1316
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1318 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1318 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1318
du_stakeCred_1318 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1318
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1322 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_1322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1326 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1330 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_1332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1334 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1344 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1344 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1352 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RwdAddr.net
d_net_1356 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RwdAddr.stake
d_stake_1358 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
