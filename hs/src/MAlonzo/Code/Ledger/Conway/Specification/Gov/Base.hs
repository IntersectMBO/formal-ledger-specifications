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
  = C_constructor_1364 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260
-- Ledger.Conway.Specification.Gov.Base._.GovParams
d_GovParams_234 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1526
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base._.GovParams.ppUpd
d_ppUpd_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460
d_ppUpd_338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.TxId
d_TxId_590 :: T_GovStructure_10 -> ()
d_TxId_590 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DocHash
d_DocHash_592 :: T_GovStructure_10 -> ()
d_DocHash_592 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure.DecEq-TxId
d_DecEq'45'TxId_594 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_594 v0
  = case coe v0 of
      C_constructor_1364 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure
d_cryptoStructure_596 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_596 v0
  = case coe v0 of
      C_constructor_1364 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_600 ::
  T_GovStructure_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_600 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_602 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d_cryptoStructure_596 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_604 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_604 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_606 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_606 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_608 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_608 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_610 :: T_GovStructure_10 -> ()
d_THash_610 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.KeyPair
d_KeyPair_612 :: T_GovStructure_10 -> ()
d_KeyPair_612 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SKey
d_SKey_614 :: T_GovStructure_10 -> ()
d_SKey_614 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptHash
d_ScriptHash_616 :: T_GovStructure_10 -> ()
d_ScriptHash_616 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Ser
d_Ser_618 :: T_GovStructure_10 -> ()
d_Ser_618 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ScriptHash
d_Show'45'ScriptHash_620 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_620 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d_cryptoStructure_596 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_622 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_622 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Sig
d_Sig_624 :: T_GovStructure_10 -> ()
d_Sig_624 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_626 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_626 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKey
d_VKey_628 :: T_GovStructure_10 -> ()
d_VKey_628 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyPair
d_isKeyPair_630 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_630 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned
d_isSigned_632 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_632 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isSigned-correct
d_isSigned'45'correct_634 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_634 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.khs
d_khs_636 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d_cryptoStructure_596 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pkk
d_pkk_638 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d_cryptoStructure_596 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sign
d_sign_640 :: T_GovStructure_10 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_640 v0
  = let v1 = d_cryptoStructure_596 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.epochStructure
d_epochStructure_642 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_642 v0
  = case coe v0 of
      C_constructor_1364 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ_
d__'43''7497'__646 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__78
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._+ᵉ'_
d__'43''7497'''__648 ::
  T_GovStructure_10 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_650 ::
  T_GovStructure_10 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_650 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_652 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_654 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_656 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Epoch
d_Epoch_658 :: T_GovStructure_10 -> ()
d_Epoch_658 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Number-Epoch
d_Number'45'Epoch_660 ::
  T_GovStructure_10 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Epoch
d_Show'45'Epoch_662 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slot
d_Slot_664 :: T_GovStructure_10 -> ()
d_Slot_664 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Slotʳ
d_Slot'691'_666 ::
  T_GovStructure_10 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_56
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindow
d_StabilityWindow_668 :: T_GovStructure_10 -> AgdaAny
d_StabilityWindow_668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addEpoch
d_addEpoch_670 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.addSlot
d_addSlot_672 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_246
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.epoch
d_epoch_674 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_epoch_674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.firstSlot
d_firstSlot_676 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_firstSlot_676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.preoEpoch
d_preoEpoch_678 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_88
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.sucᵉ
d_suc'7497'_680 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_suc'7497'_680 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_76
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_682 :: T_GovStructure_10 -> Integer -> AgdaAny
d_ℕtoEpoch_682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_642 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.scriptStructure
d_scriptStructure_684 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274
d_scriptStructure_684 v0
  = case coe v0 of
      C_constructor_1364 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._._≥ᵉ_
d__'8805''7497'__688 ::
  T_GovStructure_10 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__688 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CostModel
d_CostModel_690 :: T_GovStructure_10 -> ()
d_CostModel_690 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T
d_T_692 :: T_GovStructure_10 -> ()
d_T_692 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.THash
d_THash_694 :: T_GovStructure_10 -> ()
d_THash_694 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dataʰ
d_Data'688'_696 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Datum
d_Datum_698 :: T_GovStructure_10 -> ()
d_Datum_698 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_700 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_702 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_704 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_706 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_708 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_710 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Language
d_DecEq'45'Language_712 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_714 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-T
d_DecEq'45'T_716 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_716 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_684 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-THash
d_DecEq'45'THash_718 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_718 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_684 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_720 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ExUnits
d_ExUnits_722 :: T_GovStructure_10 -> ()
d_ExUnits_722 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_724 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_726 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Hashable-Script
d_Hashable'45'Script_728 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.LangDepView
d_LangDepView_730 :: T_GovStructure_10 -> ()
d_LangDepView_730 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Language
d_Language_732 :: T_GovStructure_10 -> ()
d_Language_732 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.P1Script
d_P1Script_734 :: T_GovStructure_10 -> ()
d_P1Script_734 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusScript
d_PlutusScript_736 :: T_GovStructure_10 -> ()
d_PlutusScript_736 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV1
d_PlutusV1_738 :: T_GovStructure_10 -> AgdaAny
d_PlutusV1_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV2
d_PlutusV2_740 :: T_GovStructure_10 -> AgdaAny
d_PlutusV2_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PlutusV3
d_PlutusV3_742 :: T_GovStructure_10 -> AgdaAny
d_PlutusV3_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Prices
d_Prices_744 :: T_GovStructure_10 -> ()
d_Prices_744 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Redeemer
d_Redeemer_746 :: T_GovStructure_10 -> ()
d_Redeemer_746 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Script
d_Script_748 :: T_GovStructure_10 -> ()
d_Script_748 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-CostModel
d_Show'45'CostModel_750 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ExUnits
d_Show'45'ExUnits_752 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Prices
d_Show'45'Prices_754 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-THash
d_Show'45'THash_756 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_756 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_684 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-Hashable
d_T'45'Hashable_758 ::
  T_GovStructure_10 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_758 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_684 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.T-isHashable
d_T'45'isHashable_760 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_760 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
            (coe d_scriptStructure_684 (coe v0))))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_762 ::
  T_GovStructure_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isNativeScript
d_isNativeScript_764 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_764 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script
d_isP1Script_766 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_766 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP1Script?
d_isP1Script'63'_768 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_768 ~v0 = du_isP1Script'63'_768
du_isP1Script'63'_768 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_768
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_402
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script
d_isP2Script_770 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_770 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isP2Script?
d_isP2Script'63'_772 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_772 ~v0 = du_isP2Script'63'_772
du_isP2Script'63'_772 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_772
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_416
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.language
d_language_774 :: T_GovStructure_10 -> AgdaAny -> AgdaAny
d_language_774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.p1s
d_p1s_776 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ps
d_ps_778 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122
d_ps_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toData
d_toData_780 :: T_GovStructure_10 -> () -> AgdaAny -> AgdaAny
d_toData_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_684 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP1Script
d_toP1Script_782 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_782 ~v0 = du_toP1Script_782
du_toP1Script_782 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_782
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.toP2Script
d_toP2Script_784 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_784 ~v0 = du_toP2Script_784
du_toP2Script_784 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_784
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_422
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validP1Script
d_validP1Script_786 ::
  T_GovStructure_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_786 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.validPlutusScript
d_validPlutusScript_788 ::
  T_GovStructure_10 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_788 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt
d_Acnt_792 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_796 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_438 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_446
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_798 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_798 ~v0 = du_DecEq'45'DrepThresholds_798
du_DecEq'45'DrepThresholds_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_798
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_562
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_800 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_800 ~v0 = du_DecEq'45'PParamGroup_800
du_DecEq'45'PParamGroup_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_800
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_568
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_802 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_566
      (coe d_epochStructure_642 (coe v0))
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_804 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_804 ~v0 = du_DecEq'45'PoolThresholds_804
du_DecEq'45'PoolThresholds_804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_564
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds
d_DrepThresholds_806 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams
d_GovParams_812 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_818 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCast-Acnt
d_HasCast'45'Acnt_822 ::
  T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_822 ~v0 = du_HasCast'45'Acnt_822
du_HasCast'45'Acnt_822 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_822
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_188
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams
d_HasPParams_824 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_828 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_828 ~v0 = du_HasReserves'45'Acnt_828
du_HasReserves'45'Acnt_828 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_828
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_176
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_830 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_830 ~v0 = du_HasTreasury'45'Acnt_830
du_HasTreasury'45'Acnt_830 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_174
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamGroup
d_PParamGroup_834 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams
d_PParams_836 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff
d_PParamsDiff_840 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsOf
d_PParamsOf_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds
d_PoolThresholds_846 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ProtVer
d_ProtVer_850 :: T_GovStructure_10 -> ()
d_ProtVer_850 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_854 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_854 ~v0 = du_Show'45'DrepThresholds_854
du_Show'45'DrepThresholds_854 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_570
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PParams
d_Show'45'PParams_856 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_574
      (coe d_epochStructure_642 (coe v0))
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_858 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_858 ~v0 = du_Show'45'PoolThresholds_858
du_Show'45'PoolThresholds_858 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_858
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_572
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-ProtVer
d_Show'45'ProtVer_860 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_860 ~v0 = du_Show'45'ProtVer_860
du_Show'45'ProtVer_860 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_860
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWF-elim
d_paramsWF'45'elim_868 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_868 ~v0 = du_paramsWF'45'elim_868
du_paramsWF'45'elim_868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_542
      v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.paramsWellFormed
d_paramsWellFormed_870 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  ()
d_paramsWellFormed_870 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.positivePParams
d_positivePParams_872 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [Integer]
d_positivePParams_872 ~v0 = du_positivePParams_872
du_positivePParams_872 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [Integer]
du_positivePParams_872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_454
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow
d_pvCanFollow_874 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_876 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_876 ~v0 = du_pvCanFollow'63'_876
du_pvCanFollow'63'_876 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_876
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1412
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.reserves
d_reserves_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Acnt.treasury
d_treasury_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P1
d_P1_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_224 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2a
d_P2a_890 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_226 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P2b
d_P2b_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_228 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P3
d_P3_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_230 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P4
d_P4_896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_232 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5a
d_P5a_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_234 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5b
d_P5b_900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_236 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5c
d_P5c_902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_238 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P5d
d_P5d_904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_240 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DrepThresholds.P6
d_P6_906 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_242 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1526
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.UpdateT
d_UpdateT_912 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  ()
d_UpdateT_912 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.applyUpdate
d_applyUpdate_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyUpdate_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppUpd
d_ppUpd_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460
d_ppUpd_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppWF?
d_ppWF'63'_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_920 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  AgdaAny -> ()
d_ppdWellFormed_920 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.GovParams.updateGroups
d_updateGroups_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_updateGroups_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_438 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_446
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasPParams.PParamsOf
d_PParamsOf_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.Emax
d_Emax_946 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_Emax_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_386
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a
d_a_948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_a_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.a0
d_a0_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_390 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.b
d_b_952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_b_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMaxTermLength_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_402
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.ccMinSize
d_ccMinSize_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMinSize_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_400
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_coinsPerUTxOByte_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_collateralPercentage_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.costmdls
d_costmdls_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_costmdls_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_394
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepActivity
d_drepActivity_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_drepActivity_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepDeposit
d_drepDeposit_966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_drepDeposit_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_408
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.drepThresholds
d_drepThresholds_968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_398
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionDeposit_970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionLifetime_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_404
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.keyDeposit
d_keyDeposit_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_keyDeposit_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxBlockExUnits_976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_350
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxBlockSize_978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_342
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxCollateralInputs_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_354
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxHeaderSize_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_346
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerBlock_984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_378
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerTx_986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxTxExUnits_988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_348
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxTxSize
d_maxTxSize_990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxTxSize_990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.maxValSize
d_maxValSize_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxValSize_992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_374
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_minUTxOValue_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_384
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.monetaryExpansion
d_monetaryExpansion_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_366
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.nopt
d_nopt_1000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_nopt_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_388
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolDeposit
d_poolDeposit_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_poolDeposit_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.poolThresholds
d_poolThresholds_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_396
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.prices
d_prices_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_prices_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.pv
d_pv_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_356 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_382
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.refScriptCostStride
d_refScriptCostStride_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_380
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParams.treasuryCut
d_treasuryCut_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  ()
d_UpdateT_1018 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyUpdate_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1476
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1484
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1024 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  AgdaAny -> ()
d_ppdWellFormed_1024 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_updateGroups_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1478
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate._?↗_
d__'63''8599'__1030 ::
  T_GovStructure_10 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1030 ~v0 = du__'63''8599'__1030
du__'63''8599'__1030 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1030 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1204
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1032 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1406
      (coe d_epochStructure_642 (coe v0))
      (coe d_scriptStructure_684 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1034 a0 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1038 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyPParamsUpdate_1038 ~v0 = du_applyPParamsUpdate_1038
du_applyPParamsUpdate_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_applyPParamsUpdate_1038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1252
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1040 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_modifiedUpdateGroups_1040 ~v0 = du_modifiedUpdateGroups_1040
du_modifiedUpdateGroups_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
du_modifiedUpdateGroups_1040
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1188
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1042 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesEconomicGroup_1042 ~v0 = du_modifiesEconomicGroup_1042
du_modifiesEconomicGroup_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
du_modifiesEconomicGroup_1042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_884
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1044 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesGovernanceGroup_1044 ~v0
  = du_modifiesGovernanceGroup_1044
du_modifiesGovernanceGroup_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
du_modifiesGovernanceGroup_1044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1036
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1046 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesNetworkGroup_1046 ~v0 = du_modifiesNetworkGroup_1046
du_modifiesNetworkGroup_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
du_modifiesNetworkGroup_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_808
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1048 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesSecurityGroup_1048 ~v0 = du_modifiesSecurityGroup_1048
du_modifiesSecurityGroup_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
du_modifiesSecurityGroup_1048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1112
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1050 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesTechnicalGroup_1050 ~v0 = du_modifiesTechnicalGroup_1050
du_modifiesTechnicalGroup_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
du_modifiesTechnicalGroup_1050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_960
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1052 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  ()
d_paramsUpdateWellFormed_1052 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1054 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_650
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_652
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_654
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_656
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_678
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_672
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_700
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_718
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_708
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_710
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_712
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1056 ::
  T_GovStructure_10 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1056 ~v0 = du_'8801''45'update_1056
du_'8801''45'update_1056 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_1056 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1218
      v1
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe AgdaAny
d_Emax_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_696
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_a_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_666 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_694 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_b_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_668 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_ccMaxTermLength_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_718
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_ccMinSize_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_716
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_coinsPerUTxOByte_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_678
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_collateralPercentage_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_700
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe AgdaAny
d_costmdls_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_702
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe AgdaAny
d_drepActivity_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_714
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_drepDeposit_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_712
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_704
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_govActionDeposit_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_710
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_govActionLifetime_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_708
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_keyDeposit_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_670
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe AgdaAny
d_maxBlockExUnits_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_662
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxBlockSize_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_650
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxCollateralInputs_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_658
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxHeaderSize_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_654
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_686
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_684
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe AgdaAny
d_maxTxExUnits_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_660
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxTxSize_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_652
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxValSize_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_656
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_682
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_minUTxOValue_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_692
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_674
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_nopt_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_698
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_poolDeposit_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_672
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_706
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe AgdaAny
d_prices_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_680
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_664 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_690
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_688
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_676
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q1
d_Q1_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_258 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2a
d_Q2a_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_260 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q2b
d_Q2b_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_262 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q4
d_Q4_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_264 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.PoolThresholds.Q5
d_Q5_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_266 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure.govParams
d_govParams_1148 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494
d_govParams_1148 v0
  = case coe v0 of
      C_constructor_1364 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1152 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1526
      (coe d_govParams_1148 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.UpdateT
d_UpdateT_1154 :: T_GovStructure_10 -> ()
d_UpdateT_1154 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.applyUpdate
d_applyUpdate_1156 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyUpdate_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe d_govParams_1148 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppUpd
d_ppUpd_1158 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460
d_ppUpd_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
      (coe d_govParams_1148 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppWF?
d_ppWF'63'_1160 ::
  T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe d_govParams_1148 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ppdWellFormed
d_ppdWellFormed_1162 :: T_GovStructure_10 -> AgdaAny -> ()
d_ppdWellFormed_1162 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.updateGroups
d_updateGroups_1164 ::
  T_GovStructure_10 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_updateGroups_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe d_govParams_1148 (coe v0)))
-- Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants
d_globalConstants_1166 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260
d_globalConstants_1166 v0
  = case coe v0 of
      C_constructor_1364 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1170 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1170 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Netw
d_DecEq'45'Netw_1172 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1172 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Network
d_Network_1174 :: T_GovStructure_10 -> ()
d_Network_1174 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkId
d_NetworkId_1176 :: T_GovStructure_10 -> AgdaAny
d_NetworkId_1176 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1178 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1178 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_302
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1180 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_290
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1182 ::
  T_GovStructure_10 -> MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1182 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_294
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Quorum
d_Quorum_1184 :: T_GovStructure_10 -> Integer
d_Quorum_1184 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_298
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Network
d_Show'45'Network_1186 ::
  T_GovStructure_10 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_286
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1188 :: T_GovStructure_10 -> Integer
d_SlotsPerEpoch'7580'_1188 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1190 :: T_GovStructure_10 -> Integer
d_StabilityWindow'7580'_1190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_296
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1192 ::
  T_GovStructure_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1192 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ℕEpochStructure
d_ℕEpochStructure_1194 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_316
      (coe d_globalConstants_1166 (coe v0))
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Addr
d_Addr_1198 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1198 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr
d_BaseAddr_1200 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr
d_BootstrapAddr_1204 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Credential
d_Credential_1208 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.CredentialOf
d_CredentialOf_1210 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isScript
d_Dec'45'isScript_1212 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1212 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1212
du_Dec'45'isScript_1212 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_1214 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1214 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1214
du_Dec'45'isVKey_1214 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1214
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1216 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1216 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1216 v1 v2 v3
du_DecEq'45'BaseAddr_1216 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1218 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1218 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1218 v1 v2 v3
du_DecEq'45'BootstrapAddr_1218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-Credential
d_DecEq'45'Credential_1220 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1220 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1220 v2 v3
du_DecEq'45'Credential_1220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1220 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1222 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1222 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1222 v1 v2 v3
du_DecEq'45'RwdAddr_1222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1222 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
      (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential
d_HasCredential_1224 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1228 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_1228 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RwdAddr_1228
du_HasCredential'45'RwdAddr_1228 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RwdAddr_1228
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_164
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId
d_HasNetworkId_1230 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1234 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_1234 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BaseAddr_1234
du_HasNetworkId'45'BaseAddr_1234 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BaseAddr_1234
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1236 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_1236 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'BootstrapAddr_1236
du_HasNetworkId'45'BootstrapAddr_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BootstrapAddr_1236
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1238 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_1238 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RwdAddr_1238
du_HasNetworkId'45'RwdAddr_1238 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RwdAddr_1238
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals
d_HasWithdrawals_1240 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.NetworkIdOf
d_NetworkIdOf_1248 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RwdAddr
d_RwdAddr_1250 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptAddr
d_ScriptAddr_1256 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1256 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1258 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1258 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1260 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1260 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential
d_Show'45'Credential_1264 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1264 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_1264
du_Show'45'Credential_1264 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1264 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1266 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1266 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_1266
du_Show'45'Credential'215'Coin_1266 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1266 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1268 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1268 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RwdAddr_1268
du_Show'45'RwdAddr_1268 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1268
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_288
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyAddr
d_VKeyAddr_1270 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1270 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1272 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1272 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1274 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1274 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.Withdrawals
d_Withdrawals_1278 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_1278 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.WithdrawalsOf
d_WithdrawalsOf_1280 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1280 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.getScriptHash
d_getScriptHash_1282 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_1282 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1282
du_getScriptHash_1282 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_1282
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr
d_isBootstrapAddr_1284 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1286 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1286 ~v0 ~v1 ~v2 ~v3
  = du_isBootstrapAddr'63'_1286
du_isBootstrapAddr'63'_1286 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1286
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHash
d_isKeyHash_1288 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1288 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObj
d_isKeyHashObj_1290 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1290 ~v0 ~v1 ~v2 ~v3 = du_isKeyHashObj_1290
du_isKeyHashObj_1290 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1290
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1292 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1292 ~v0 ~v1 ~v2 ~v3
  = du_isKeyHashObj'7495'_1292
du_isKeyHashObj'7495'_1292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1292
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScript
d_isScript_1294 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptAddr
d_isScriptAddr_1296 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1296 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptObj
d_isScriptObj_1298 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1298 ~v0 ~v1 ~v2 ~v3 = du_isScriptObj_1298
du_isScriptObj_1298 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1298
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1300 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1300 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKey
d_isVKey_1302 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.isVKeyAddr
d_isVKeyAddr_1304 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1304 = erased
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.netId
d_netId_1306 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1306 ~v0 ~v1 ~v2 ~v3 = du_netId_1306
du_netId_1306 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1306
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.payCred
d_payCred_1308 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1308 ~v0 ~v1 ~v2 ~v3 = du_payCred_1308
du_payCred_1308 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1308
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.stakeCred
d_stakeCred_1310 ::
  T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1310 ~v0 ~v1 ~v2 ~v3 = du_stakeCred_1310
du_stakeCred_1310 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1310
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.net
d_net_1314 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.pay
d_pay_1316 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BaseAddr.stake
d_stake_1318 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1322 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.net
d_net_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_1324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.BootstrapAddr.pay
d_pay_1326 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasCredential.CredentialOf
d_CredentialOf_1336 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1336 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1340 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1344 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1344 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RwdAddr.net
d_net_1348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Gov.Base.GovStructure._.RwdAddr.stake
d_stake_1350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
