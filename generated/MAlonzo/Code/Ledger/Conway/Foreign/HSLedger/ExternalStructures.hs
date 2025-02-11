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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures where

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
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasOrder.Instance
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Util
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSGlobalConstants
d_HSGlobalConstants_12 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_HSGlobalConstants_12 ~v0 = du_HSGlobalConstants_12
du_HSGlobalConstants_12 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_HSGlobalConstants_12
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_6069
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_SlotsPerEpoch'7580'_46
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_StabilityWindow'7580'_48
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Quorum_50
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_NetworkId_52
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSEpochStructure
d_HSEpochStructure_14 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_HSEpochStructure_14 ~v0 = du_HSEpochStructure_14
du_HSEpochStructure_14 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_HSEpochStructure_14
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe du_HSGlobalConstants_12)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSCrypto
d_HSCrypto_16 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_HSCrypto_16 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2419
      (d_HSPKKScheme_26 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe
               (\ v1 ->
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkStoredHash_22
                    (coe v1)))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPKKScheme
d_HSPKKScheme_26 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_HSPKKScheme_26 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1827
      (\ v1 v2 -> 0 :: Integer)
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Bool.Properties.d__'8799'__3082
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_extIsSigned_12
                 v0
                 (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkVKey_20
                    (coe v1))
                 v2 v3)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
         ("isSigned-correct evaluated" :: Data.Text.Text))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_46 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_60 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__92 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__92 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_94 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_94 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_100 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_100 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_104 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_104 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_106 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_106 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_108 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_108 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_110 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_110 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_112 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_112 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_114 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_114 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_120 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_120 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_122 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_122 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_124 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_124 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_126 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_126 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_128 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_128 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_130 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_130 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_132 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_132 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_134 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_134 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_136 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_136 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_138 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_138 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_142 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_142 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_144 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_144 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_146 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_146 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_154 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_154 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_156 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_156 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_158 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_158 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_236 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_236 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_240 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_240 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_242 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_242 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_280 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_352
      (coe d_HSCrypto_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_282 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock
d_HSTimelock_284 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_286 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSPlutusScript_286 ~v0
  = du_Hashable'45'HSPlutusScript_286
du_Hashable'45'HSPlutusScript_286 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HSPlutusScript_286
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_366
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_288 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSTimelock_288 ~v0 = du_Hashable'45'HSTimelock_288
du_Hashable'45'HSTimelock_288 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HSTimelock_288
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_350
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_292 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'HTL_292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_368
      (coe d_HSCrypto_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  Integer
d_psScriptHash_296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  Integer
d_psScriptSize_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.timelock
d_timelock_302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  Integer
d_tlScriptHash_304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  Integer
d_tlScriptSize_306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSScriptStructure
d_HSScriptStructure_308 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_HSScriptStructure_308 v0
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_72123
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_368
         (coe d_HSCrypto_16 (coe v0)) (coe du_HSEpochStructure_14))
      (\ v1 v2 v3 v4 v5 -> coe du_hashRespectsUnion_320 v4 v5)
      (coe du_HSP2ScriptStructure_330)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_320 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_320 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hashRespectsUnion_320 v4 v5
du_hashRespectsUnion_320 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_320 v0 v1
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
                -> coe MAlonzo.Code.Interface.Hashable.d_hash_16 v0 v3
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
                -> coe MAlonzo.Code.Interface.Hashable.d_hash_16 v1 v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_330 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_HSP2ScriptStructure_330 ~v0 = du_HSP2ScriptStructure_330
du_HSP2ScriptStructure_330 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
du_HSP2ScriptStructure_330
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4253
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Data'688'_74
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ExUnit'45'CommutativeMonoid_82
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_366)
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Show'45'ExUnits_110
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 ->
         coe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.du_toData_78)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_352 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_360 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_386 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> ()
d_paramsWellFormed_386 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_400 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_400 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_406 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350
d_ppUpd_406 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_428 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_Emax_428 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_430 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_430 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_432 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_432 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_434 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_434 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_436 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_436 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_438 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_438 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_440 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_440 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_442 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_442 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_444 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_444 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_446 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepActivity_446 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_448 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_448 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_450 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_450 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_452 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_452 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_454 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_454 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_456 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_456 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_458 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_458 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_460 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_460 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_462 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_462 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_464 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_464 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_466 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_468 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_472 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_476 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_480 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_480 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_488 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_490 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_492 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 -> ()
d_UpdateT_496 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_510 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_510 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1296
      (let v1 = coe du_HSGlobalConstants_12 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (\ v2 ->
               mulInt
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v1))
            (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
      (coe d_HSScriptStructure_308 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_512 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_514 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyPParamsUpdate_514 ~v0 = du_applyPParamsUpdate_514
du_applyPParamsUpdate_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_applyPParamsUpdate_514
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1150
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_Emax_536 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_a_538 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_540 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_540 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_542 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_b_542 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_544 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMaxTermLength_544 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_546 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMinSize_546 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_548 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_coinsPerUTxOByte_548 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_550 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_collateralPercentage_550 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_552 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_552 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_554 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_drepActivity_554 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_556 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_drepDeposit_556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_558 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_558 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_560 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionDeposit_560 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_562 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionLifetime_562 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_564 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_keyDeposit_564 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_566 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_568 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxBlockSize_568 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_578 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_570 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxCollateralInputs_570 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_572 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxHeaderSize_572 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_574 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerBlock_574 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_576 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerTx_576 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_608 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_578 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_578 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_580 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxTxSize_580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_582 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxValSize_582 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_584 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_584 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_606
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_586 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_minUTxOValue_586 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_588 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_nopt_588 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_590 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_poolDeposit_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_592 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_594 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_596 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_596 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_598 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_598 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_600 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_refScriptCostStride_600 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HsGovParams
d_HsGovParams_608 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382
d_HsGovParams_608 v0
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1473443
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1472739
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1150)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1086)
         (\ v1 -> coe du_ppWF_618 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1296
         (let v1 = coe du_HSGlobalConstants_12 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                       (coe v1)))
               (\ v2 ->
                  mulInt
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                       (coe v1)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                  (coe v1))
               (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
         (coe d_HSScriptStructure_308 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF
d_ppWF_618 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_618 ~v0 v1 = du_ppWF_618 v1
du_ppWF_618 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_618 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_428
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_578 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_580 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_582 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_584 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_602
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_600 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_624
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_642
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_632
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_634
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_636
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)))
                else coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe
d_trustMe_634
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe
d_trustMe_644
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_650 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_650 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_13851
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
      (coe du_HSGlobalConstants_12) (d_HSCrypto_16 (coe v0))
      (coe du_HSEpochStructure_14) (d_HSScriptStructure_308 (coe v0))
      (d_HsGovParams_608 (coe v0))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_258
      (\ v1 -> v1)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ_
d__'43''7497'__654 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__654 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ'_
d__'43''7497'''__656 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__656 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._∙_
d__'8729'__658 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__658 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≈_
d__'8776'__660 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__660 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≤ᵗ_
d__'8804''7511'__662 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__662 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≥ᵉ_
d__'8805''7497'__664 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__664 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_666 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_666 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_668 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_668 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt
d_Acnt_670 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Addr
d_Addr_672 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_672 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor
d_Anchor_674 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AssetName
d_AssetName_676 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AssetName_676 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_678 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_678 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr
d_BaseAddr_680 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_682 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CostModel
d_CostModel_688 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_688 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Credential
d_Credential_690 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T
d_T_694 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_694 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_696 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_696 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dataʰ
d_Data'688'_698 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_698 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Datum
d_Datum_700 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_700 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_702 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_702 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_704 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_704 ~v0 = du_Dec'45'isScript_704
du_Dec'45'isScript_704 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_704
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_706 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_706 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_708 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_708 ~v0 = du_Dec'45'isVKey_708
du_Dec'45'isVKey_708 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_708
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_710 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_426
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_712 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_712 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_714 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_714 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_716 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_716 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_718 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_718 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_720 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_720 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_722 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_722 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_724 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_724 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_726 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_726 ~v0 = du_DecEq'45'DrepThresholds_726
du_DecEq'45'DrepThresholds_726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_726
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_494
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_728 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_728 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_730 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_730 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_732 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_732 ~v0 = du_DecEq'45'GovRole_732
du_DecEq'45'GovRole_732 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_732
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_788
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_734 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_734 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1180
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_736 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_736 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_738 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_738 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_740 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_740 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_742 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_426
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_744 ~v0 = du_DecEq'45'PParamGroup_744
du_DecEq'45'PParamGroup_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_744
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_500
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_746 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_746 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_498
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_748 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_748 ~v0 = du_DecEq'45'PoolThresholds_748
du_DecEq'45'PoolThresholds_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_748
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_496
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_750 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_750 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_752 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_752 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_754 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_754 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_756 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_756 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_758 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_758 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_760 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_760 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1184 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_762 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_762 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_764 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_764 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1184 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_766 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_766 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_768 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_768 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_770 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_770 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_772 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_772 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_774 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_774 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1414
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2194 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_776 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_776 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_778 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_778 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_780 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_780 ~v0 = du_DecEq'45'Vote_780
du_DecEq'45'Vote_780 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_780
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_790
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_782 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_782 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds
d_DrepThresholds_784 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Epoch
d_Epoch_788 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_788 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_790 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_790 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnits
d_ExUnits_792 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_792 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction
d_GovAction_794 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionID
d_GovActionID_796 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_796 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState
d_GovActionState_798 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_800 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal
d_GovProposal_802 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRole
d_GovRole_804 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote
d_GovVote_806 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_810 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_810 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2762
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HashProtected
d_HashProtected_812 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_812 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_814 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_814 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_426
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_816 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_816 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_818 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_818 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_824 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_826 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_828 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ix
d_Ix_830 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_830 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_832 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_832 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.KeyPair
d_KeyPair_836 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_836 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.LangDepView
d_LangDepView_838 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_838 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Language
d_Language_840 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_840 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_842 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_842 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NeedsHash
d_NeedsHash_844 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_844 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Network
d_Network_846 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_846 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkId
d_NetworkId_850 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_850 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_856 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_856 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_858 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_858 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1Script
d_P1Script_860 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_860 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_862 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusScript
d_PlutusScript_864 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_864 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamGroup
d_PParamGroup_866 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_868 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff
d_PParamsDiff_870 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UpdateT
d_UpdateT_872 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_872 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_874 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV1
d_PlutusV1_876 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_876 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV2
d_PlutusV2_878 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_878 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV3
d_PlutusV3_880 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_880 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds
d_PoolThresholds_882 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Prices
d_Prices_884 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_884 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_886 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_886 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProtVer
d_ProtVer_888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProtVer_888 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Quorum
d_Quorum_890 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_890 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RdmrPtr
d_RdmrPtr_892 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_892 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Redeemer
d_Redeemer_894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_894 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr
d_RwdAddr_908 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SKey
d_SKey_912 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_912 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Script
d_Script_916 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_916 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptAddr
d_ScriptAddr_918 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_918 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_920 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_920 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_922 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_922 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptHash
d_ScriptHash_924 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_924 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_928 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ser
d_Ser_932 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_932 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_934 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_934 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential
d_Show'45'Credential_936 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_936 ~v0 = du_Show'45'Credential_936
du_Show'45'Credential_936 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_936 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_938 ~v0
  = du_Show'45'Credential'215'Coin_938
du_Show'45'Credential'215'Coin_938 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_938 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_940 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_940 ~v0 = du_Show'45'DrepThresholds_940
du_Show'45'DrepThresholds_940 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_940
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_502
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_942 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_942 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_944 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_944 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Network
d_Show'45'Network_946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_946 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PParams
d_Show'45'PParams_948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_948 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_506
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_950 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_950 ~v0 = du_Show'45'PoolThresholds_950
du_Show'45'PoolThresholds_950 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_950
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_504
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Prices
d_Show'45'Prices_952 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_952 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ProtVer
d_Show'45'ProtVer_954 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_954 ~v0 = du_Show'45'ProtVer_954
du_Show'45'ProtVer_954 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_954
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-RwdAddr
d_Show'45'RwdAddr_956 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_956 ~v0 = du_Show'45'RwdAddr_956
du_Show'45'RwdAddr_956 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_956
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_958 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_958 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_960 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1184 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_962 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_962 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_964 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_964 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ℚ
d_Show'45'ℚ_966 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_966 ~v0 = du_Show'45'ℚ_966
du_Show'45'ℚ_966 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_966
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Sig
d_Sig_968 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_968 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slot
d_Slot_970 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_970 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_972 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_972 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slotʳ
d_Slot'691'_974 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_974 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindow
d_StabilityWindow_976 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_976 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_978 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_978 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_980 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_980 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1184 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_982 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_982 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_984 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_984 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-isHashable
d_T'45'isHashable_986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_986 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Timelock
d_Timelock_990 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_992 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx
d_Tx_998 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody
d_TxBody_1000 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxId
d_TxId_1002 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1002 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxIn
d_TxIn_1004 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1004 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOut
d_TxOut_1006 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1006 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOutʰ
d_TxOut'688'_1008 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1008 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses
d_TxWitnesses_1010 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxO
d_UTxO_1012 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1012 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Update
d_Update_1014 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1014 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VDeleg
d_VDeleg_1018 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKey
d_VKey_1020 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1020 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyAddr
d_VKeyAddr_1022 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1022 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1024 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1024 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1026 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1026 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value
d_Value_1030 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1030 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1032 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1032 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Voter
d_Voter_1034 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1034 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Wdrl
d_Wdrl_1036 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Wdrl_1036 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.adHashingScheme
d_adHashingScheme_1040 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1040 ~v0 = du_adHashingScheme_1040
du_adHashingScheme_1040 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_adHashingScheme_1040
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addEpoch
d_addEpoch_1042 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1042 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addSlot
d_addSlot_1044 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1044 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addValue
d_addValue_1046 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1046 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.applyUpdate
d_applyUpdate_1048 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1048 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1366
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1400
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2194 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin
d_coin_1054 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1054 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1056 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1056 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1058 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1058 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.crypto
d_crypto_1062 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1062 v0 = coe d_HSCrypto_16 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epoch
d_epoch_1064 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1064 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epochStructure
d_epochStructure_1066 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1066 ~v0 = du_epochStructure_1066
du_epochStructure_1066 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_epochStructure_1066 = coe du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.evalTimelock
d_evalTimelock_1080 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.firstSlot
d_firstSlot_1082 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1082 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getDRepVote
d_getDRepVote_1084 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1084 ~v0 = du_getDRepVote_1084
du_getDRepVote_1084 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1084
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_794
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getScriptHash
d_getScriptHash_1086 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1086 ~v0 = du_getScriptHash_1086
du_getScriptHash_1086 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
du_getScriptHash_1086
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValue
d_getValue_1088 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1088 ~v0 = du_getValue_1088
du_getValue_1088 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1088
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2636
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValueʰ
d_getValue'688'_1090 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1090 ~v0 = du_getValue'688'_1090
du_getValue'688'_1090 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1090
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2652
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.globalConstants
d_globalConstants_1092 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1092 ~v0 = du_globalConstants_1092
du_globalConstants_1092 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_globalConstants_1092 = coe du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govParams
d_govParams_1094 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382
d_govParams_1094 v0 = coe d_HsGovParams_608 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govStructure
d_govStructure_1096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1098 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1098 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.inject
d_inject_1100 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1100 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1102 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr?
d_isBootstrapAddr'63'_1104 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1104 ~v0 = du_isBootstrapAddr'63'_1104
du_isBootstrapAddr'63'_1104 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1104
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHash
d_isKeyHash_1106 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1106 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1108 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1108 ~v0 = du_isKeyHashObj_1108
du_isKeyHashObj_1108 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isKeyHashObj_1108
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1110 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1110 ~v0 = du_isKeyHashObj'7495'_1110
du_isKeyHashObj'7495'_1110 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1110
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyPair
d_isKeyPair_1112 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1112 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script
d_isP2Script_1114 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1114 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script?
d_isP2Script'63'_1116 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1116 ~v0 = du_isP2Script'63'_1116
du_isP2Script'63'_1116 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1116
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_2756
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScript
d_isScript_1118 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptAddr
d_isScriptAddr_1120 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1120 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptObj
d_isScriptObj_1122 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1122 ~v0 = du_isScriptObj_1122
du_isScriptObj_1122 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isScriptObj_1122
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptRwdAddr
d_isScriptRwdAddr_1124 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1124 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned
d_isSigned_1126 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1126 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1128 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1128 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKey
d_isVKey_1130 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1132 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.khs
d_khs_1134 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1134 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.language
d_language_1136 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1136 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1138 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1138 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2738
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.maximum
d_maximum_1140 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1140 ~v0 = du_maximum_1140
du_maximum_1140 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_1140
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_658
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.monoid
d_monoid_1142 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1142 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.netId
d_netId_1144 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1144 ~v0 = du_netId_1144
du_netId_1144 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1144 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.p1s
d_p1s_1148 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1148 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1150 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1150 ~v0 = du_paramsWF'45'elim_1150
du_paramsWF'45'elim_1150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1150 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_460 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1152 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> ()
d_paramsWellFormed_1152 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.payCred
d_payCred_1154 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1154 ~v0 = du_payCred_1154
du_payCred_1154 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1154 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pkk
d_pkk_1156 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1156 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.policies
d_policies_1158 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1158 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.positivePParams
d_positivePParams_1160 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> [Integer]
d_positivePParams_1160 ~v0 = du_positivePParams_1160
du_positivePParams_1160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> [Integer]
du_positivePParams_1160
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_376
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppUpd
d_ppUpd_1162 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350
d_ppUpd_1162 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1400
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2194 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF?
d_ppWF'63'_1164 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1164 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1374
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1400
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2194 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1166 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> ()
d_ppdWellFormed_1166 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.preoEpoch
d_preoEpoch_1168 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1168 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.property
d_property_1170 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1170 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.proposedCC
d_proposedCC_1172 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_proposedCC_1172 ~v0 = du_proposedCC_1172
du_proposedCC_1172 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_proposedCC_1172
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_798
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ps
d_ps_1174 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1174 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow
d_pvCanFollow_1176 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow?
d_pvCanFollow'63'_1178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1178 ~v0 = du_pvCanFollow'63'_1178
du_pvCanFollow'63'_1178 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1178
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1302
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rawMonoid
d_rawMonoid_1180 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1180 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScriptCostStride>0
d_refScriptCostStride'62'0_1182 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1182 ~v0
  = du_refScriptCostStride'62'0_1182
du_refScriptCostStride'62'0_1182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_1182 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_482 v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScripts
d_refScripts_1184 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1184 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2676
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptOuts
d_scriptOuts_1186 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1186 ~v0 = du_scriptOuts_1186
du_scriptOuts_1186 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1186
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2662
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptStructure
d_scriptStructure_1188 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1188 v0 = coe d_HSScriptStructure_308 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sign
d_sign_1190 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1190 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.size
d_size_1192 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1192 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.specialAsset
d_specialAsset_1194 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1194 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.stakeCred
d_stakeCred_1196 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1196 ~v0 = du_stakeCred_1196
du_stakeCred_1196 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1196
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sucᵉ
d_suc'7497'_1198 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1198 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sumᵛ
d_sum'7515'_1200 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1200 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toData
d_toData_1202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> AgdaAny -> Integer
d_toData_1202 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1204 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1204 ~v0 = du_tokenAlgebra_1204
du_tokenAlgebra_1204 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
du_tokenAlgebra_1204
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_258
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txOutHash
d_txOutHash_1206 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1206 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2642
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txidBytes
d_txidBytes_1208 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1208 ~v0 v1 = du_txidBytes_1208 v1
du_txidBytes_1208 :: Integer -> Integer
du_txidBytes_1208 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txinsScript
d_txinsScript_1210 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1210 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2670
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txinsVKey
d_txinsVKey_1212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1212 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2656
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txscripts
d_txscripts_1214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1214 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2728
      (coe d_HSTransactionStructure_650 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.updateGroups
d_updateGroups_1216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1216 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1368
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1400
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2194 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validP1Script
d_validP1Script_1218 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  ()
d_validP1Script_1218 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validPlutusScript
d_validPlutusScript_1220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  ()
d_validPlutusScript_1220 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ε
d_ε_1222 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1222 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2212 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1224 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1226 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1228 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.reserves
d_reserves_1234 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_1234 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.treasury
d_treasury_1236 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_1236 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.hash
d_hash_1240 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Integer
d_hash_1240 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_690 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.url
d_url_1242 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1242 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_688 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.net
d_net_1246 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> Integer
d_net_1246 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.pay
d_pay_1248 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1248 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.stake
d_stake_1250 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1250 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1254 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1254 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.net
d_net_1256 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_net_1256 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.pay
d_pay_1258 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1258 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P1
d_P1_1268 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1268 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2a
d_P2a_1270 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1270 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2b
d_P2b_1272 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1272 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P3
d_P3_1274 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1274 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P4
d_P4_1276 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1276 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5a
d_P5a_1278 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1278 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5b
d_P5b_1280 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1280 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5c
d_P5c_1282 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1282 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5d
d_P5d_1284 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1284 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P6
d_P6_1286 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1286 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.action
d_action_1306 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_1306 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1308 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  Integer
d_expiresIn_1308 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_782 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.prevAction
d_prevAction_1310 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  AgdaAny
d_prevAction_1310 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_786 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1312 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1312 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_780 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.votes
d_votes_1314 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1314 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_778 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1318 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1318 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1320 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 -> ()
d_UpdateT_1320 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1322 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1322 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1366
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1400 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1324 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350
d_ppUpd_1324 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1326 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1326 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1374
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1400 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1328 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 -> AgdaAny -> ()
d_ppdWellFormed_1328 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1330 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1382 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1330 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1368
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1400 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.action
d_action_1334 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_1334 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.anchor
d_anchor_1336 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_1336 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_764 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.deposit
d_deposit_1338 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 -> Integer
d_deposit_1338 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_760 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.policy
d_policy_1340 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  Maybe Integer
d_policy_1340 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_758 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.prevAction
d_prevAction_1342 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 -> AgdaAny
d_prevAction_1342 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_756 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_1344 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1344 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_762 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.anchor
d_anchor_1356 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_1356 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_738 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.gid
d_gid_1358 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1358 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_732 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.vote
d_vote_1360 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_714
d_vote_1360 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_736 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.voter
d_voter_1362 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1362 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_734 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_1366 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1374 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1374 ~v0 = du_DecEq'45'GovRole_1374
du_DecEq'45'GovRole_1374 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1374
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_788
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1376 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1376 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1378 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1378 ~v0 = du_DecEq'45'Vote_1378
du_DecEq'45'Vote_1378 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1378
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_790
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_1380 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_1382 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1382 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_1384 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_1386 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_1388 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_1390 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_1392 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1392 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_1396 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_1396 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_1410 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Vote
d_Vote_1412 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Voter
d_Voter_1414 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1414 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.getDRepVote
d_getDRepVote_1422 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1422 ~v0 = du_getDRepVote_1422
du_getDRepVote_1422 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1422
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_794
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.maximum
d_maximum_1424 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1424 ~v0 = du_maximum_1424
du_maximum_1424 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_1424
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_658
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.proposedCC
d_proposedCC_1430 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_proposedCC_1430 ~v0 = du_proposedCC_1430
du_proposedCC_1430 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_proposedCC_1430
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_798
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_1452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1452 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1458 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_1460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1460 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_1464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1464 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_1466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1466 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1470 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1470 ~v0 = du_isMagmaIsomorphism_1470
du_isMagmaIsomorphism_1470 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1470 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1472 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1472 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1472 v2
du_isMagmaMonomorphism_1472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1480 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1480 ~v0 ~v1 v2 = du_isRelIsomorphism_1480 v2
du_isRelIsomorphism_1480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1482 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1482 ~v0 ~v1 v2 = du_isRelMonomorphism_1482 v2
du_isRelMonomorphism_1482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1482 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_1484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1486 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_1488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1488 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_1492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1492 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_1494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1494 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1498 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1498 ~v0 = du_isMagmaMonomorphism_1498
du_isMagmaMonomorphism_1498 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1498 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1500 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1504 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1504 ~v0 ~v1 v2 = du_isRelMonomorphism_1504 v2
du_isRelMonomorphism_1504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1506 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_1508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1508 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1512 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1512 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1514 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1514 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1516 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1516 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_1518 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1518 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1520 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1520 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_1536 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_Emax_1536 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_1538 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_1538 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_1540 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1540 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_1542 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_1542 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_1544 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_1546 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_1546 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1548 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_1548 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_1550 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_1550 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_1552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1552 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_1554 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepActivity_1554 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_1556 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_1556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_1558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_1558 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_1560 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_1560 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_1562 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_1562 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_1564 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_1564 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_1568 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_1568 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1570 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_1570 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1572 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_1572 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1574 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_1574 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1576 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_1576 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1578 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1578 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_1580 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_1580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_1582 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_1582 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1584 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1584 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_1586 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_1586 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_1588 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_1588 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_1590 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_1590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_1592 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_1592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_1594 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_1596 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1596 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1598 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1598 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_1600 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_1600 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_1604 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 -> ()
d_UpdateT_1604 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_1606 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1606 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_1608 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1608 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1610 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 -> AgdaAny -> ()
d_ppdWellFormed_1610 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_1612 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1350 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1612 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__1616 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1616 ~v0 = du__'63''8599'__1616
du__'63''8599'__1616 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1616 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1102 v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1618 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1618 v0
  = let v1 = d_HSTransactionStructure_650 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1296
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1788 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1620 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1622 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyPParamsUpdate_1622 ~v0 = du_applyPParamsUpdate_1622
du_applyPParamsUpdate_1622 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_applyPParamsUpdate_1622
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1150
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1624 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_modifiedUpdateGroups_1624 ~v0 = du_modifiedUpdateGroups_1624
du_modifiedUpdateGroups_1624 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
du_modifiedUpdateGroups_1624
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1086
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1626 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesEconomicGroup_1626 ~v0 = du_modifiesEconomicGroup_1626
du_modifiesEconomicGroup_1626 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesEconomicGroup_1626
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_798
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1628 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesGovernanceGroup_1628 ~v0
  = du_modifiesGovernanceGroup_1628
du_modifiesGovernanceGroup_1628 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesGovernanceGroup_1628
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_942
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1630 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesNetworkGroup_1630 ~v0 = du_modifiesNetworkGroup_1630
du_modifiesNetworkGroup_1630 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesNetworkGroup_1630
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_726
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1632 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesSecurityGroup_1632 ~v0 = du_modifiesSecurityGroup_1632
du_modifiesSecurityGroup_1632 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesSecurityGroup_1632
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesSecurityGroup_1014
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1634 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesTechnicalGroup_1634 ~v0 = du_modifiesTechnicalGroup_1634
du_modifiesTechnicalGroup_1634 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesTechnicalGroup_1634
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_870
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1636 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> ()
d_paramsUpdateWellFormed_1636 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1638 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1638 ~v0
  = du_paramsUpdateWellFormed'63'_1638
du_paramsUpdateWellFormed'63'_1638 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1638
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_722
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_1640 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1640 ~v0 = du_'8801''45'update_1640
du_'8801''45'update_1640 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1640 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1116 v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1644 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_Emax_1644 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_1646 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_a_1646 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_1648 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1648 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_1650 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_b_1650 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1652 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMaxTermLength_1652 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1654 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMinSize_1654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1656 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_coinsPerUTxOByte_1656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1658 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_collateralPercentage_1658 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1660 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1660 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1662 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_drepActivity_1662 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1664 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_drepDeposit_1664 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1666 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_1666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1668 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionDeposit_1668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1670 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionLifetime_1670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1672 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_keyDeposit_1672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1674 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1676 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxBlockSize_1676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_578 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1678 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxCollateralInputs_1678 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1680 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxHeaderSize_1680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1682 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerBlock_1682 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1684 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerTx_1684 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_608 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1686 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1688 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxTxSize_1688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1690 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxValSize_1690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1692 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1692 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_606
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1694 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_minUTxOValue_1694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1696 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_nopt_1696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1698 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_poolDeposit_1698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1700 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_1700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_1702 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1702 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_1704 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1704 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1706 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1706 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1708 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_refScriptCostStride_1708 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1712 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1712 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_1714 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1714 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T
d_T_1716 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1716 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.THash
d_THash_1718 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1718 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_1720 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1720 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Datum
d_Datum_1722 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1722 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1724 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1724 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1726 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1726 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1728 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1728 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1730 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1730 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1732 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1732 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1734 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1734 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_1736 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1736 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1738 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1738 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1740 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1740 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_1742 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1742 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1744 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1744 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_1746 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1746 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_1748 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1748 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_1750 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1750 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_1752 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1752 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_1754 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1754 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_1756 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1756 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_1758 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1758 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_1760 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1760 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1762 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1762 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1764 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1764 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_1766 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1766 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_1768 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1768 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_1770 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1770 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_1772 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1772 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_1774 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1774 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_1776 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1776 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_1778 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1778 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q1
d_Q1_1782 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1782 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1784 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1786 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q4
d_Q4_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1788 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q5e
d_Q5e_1790 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1790 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.net
d_net_1794 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> Integer
d_net_1794 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.stake
d_stake_1796 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1796 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1800 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1800 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_1802 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_1802 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T
d_T_1804 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_1804 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.THash
d_THash_1806 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_1806 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_1808 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1808 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Datum
d_Datum_1810 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_1810 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1812 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1812 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1814 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1814 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1816 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1816 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1818 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1818 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1820 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1820 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1822 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1822 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1824 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1824 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1826 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1826 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_1828 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1828 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1830 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1830 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1832 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1832 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_1834 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_1834 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1836 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1836 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1838 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1838 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1840 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1840 ~v0 = du_Hashable'45'Script_1840
du_Hashable'45'Script_1840 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1840
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_1842 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_1842 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Language
d_Language_1844 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_1844 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_1846 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_1846 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_1848 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_1848 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_1850 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_1850 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_1852 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_1852 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_1854 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_1854 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Prices
d_Prices_1856 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_1856 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_1858 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_1858 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Script
d_Script_1860 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_1860 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1862 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1862 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1864 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1864 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_1866 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_1868 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1868 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_1870 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1870 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_1872 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1872 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1874 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1874 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.language
d_language_1876 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_1876 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_1878 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1878 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_1880 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1880 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toData
d_toData_1882 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_1882 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_1884 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1884 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_1886 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1886 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__1904 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1904 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__1906 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1906 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1908 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1908 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.AssetName
d_AssetName_1910 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1910 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1912 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1912 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1914 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1914 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1916 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1918 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1920 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value
d_Value_1922 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1922 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1924 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1924 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.addValue
d_addValue_1926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1926 ~v0 = du_addValue_1926
du_addValue_1926 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
du_addValue_1926
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin
d_coin_1928 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1928 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1930 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1930 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1932 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1932 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.inject
d_inject_1934 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1934 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.monoid
d_monoid_1936 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1936 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.policies
d_policies_1938 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_1938 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.property
d_property_1940 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1940 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_1942 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1942 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.size
d_size_1944 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1944 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.specialAsset
d_specialAsset_1946 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1946 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_1948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1948 ~v0 = du_sum'7515'_1948
du_sum'7515'_1948 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1948
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.ε
d_ε_1950 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1950 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1954 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1956 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1960 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1962 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1966 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1968 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1972 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1972 ~v0 = du_isMagmaIsomorphism_1972
du_isMagmaIsomorphism_1972 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1972 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1974 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1974 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1974 v2
du_isMagmaMonomorphism_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1974 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1976 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1978 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1980 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1982 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1982 ~v0 ~v1 v2 = du_isRelIsomorphism_1982 v2
du_isRelIsomorphism_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1982 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1984 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1984 ~v0 ~v1 v2 = du_isRelMonomorphism_1984 v2
du_isRelMonomorphism_1984 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1984 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1986 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1988 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1990 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1994 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1996 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1998 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2000 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2000 ~v0 = du_isMagmaMonomorphism_2000
du_isMagmaMonomorphism_2000 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2000 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2002 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2002 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2004 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2004 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2006 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2006 ~v0 ~v1 v2 = du_isRelMonomorphism_2006 v2
du_isRelMonomorphism_2006 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2006 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2008 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2008 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2010 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2010 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.body
d_body_2014 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_2014 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.isValid
d_isValid_2016 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_2016 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.txAD
d_txAD_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe Integer
d_txAD_2018 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.wits
d_wits_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_2020 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.collateral
d_collateral_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2024 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.curTreasury
d_curTreasury_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_curTreasury_2026 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.mint
d_mint_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_mint_2028 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2566 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.refInputs
d_refInputs_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2030 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2560 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.reqSigHash
d_reqSigHash_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> [Integer]
d_reqSigHash_2032 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.scriptIntHash
d_scriptIntHash_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_scriptIntHash_2034 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txADhash
d_txADhash_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_txADhash_2036 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Maybe Integer
d_txNetworkId_2038 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txcerts
d_txcerts_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_2040 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2570 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txdonation
d_txdonation_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txdonation_2042 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2578 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txfee
d_txfee_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txfee_2044 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2564 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txid
d_txid_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txid_2046 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txins
d_txins_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2048 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2558 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txouts
d_txouts_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2050 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2562 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txprop
d_txprop_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740]
d_txprop_2052 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2576 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txsize
d_txsize_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 -> Integer
d_txsize_2054 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txup
d_txup_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2056 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txvldt
d_txvldt_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2058 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2568 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txvote
d_txvote_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_txvote_2060 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2574 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txwdrls
d_txwdrls_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2062 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scripts
d_scripts_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2066 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336]
d_scriptsP1_2068 ~v0 = du_scriptsP1_2068
du_scriptsP1_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336]
du_scriptsP1_2068
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2616
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txdats
d_txdats_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2070 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2072 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2074 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2608 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2110 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2112 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2112 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2114 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2116 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2118 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2120 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv
d_CertEnv_2130 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState
d_CertState_2132 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DCert
d_DCert_2136 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState
d_DState_2146 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2148 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2148 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
         (coe d_HSTransactionStructure_650 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv
d_DelegEnv_2150 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositPurpose
d_DepositPurpose_2152 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Deposits
d_Deposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2154 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState
d_GState_2162 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovCertEnv
d_GovCertEnv_2166 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovCertEnv_2166 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2168 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2168 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_972
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
         (coe d_HSTransactionStructure_650 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState
d_PState_2174 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolEnv
d_PoolEnv_2178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2178 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams
d_PoolParams_2180 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cwitness
d_cwitness_2184 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2184 ~v0 = du_cwitness_2184
du_cwitness_2184 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_830 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_cwitness_2184 = coe MAlonzo.Code.Ledger.Certs.du_cwitness_848
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rewardsBalance
d_rewardsBalance_2200 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 -> Integer
d_rewardsBalance_2200 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewardsBalance_966
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
         (coe d_HSTransactionStructure_650 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_2250 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_2250 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_886 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.epoch
d_epoch_2252 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> Integer
d_epoch_2252 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.pp
d_pp_2254 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_2254 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.votes
d_votes_2256 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_votes_2256 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.wdrls
d_wdrls_2258 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2258 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.dState
d_dState_2262 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2262 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.gState
d_gState_2264 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918
d_gState_2264 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.pState
d_pState_2266 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2266 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.rewards
d_rewards_2288 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2288 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_902 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_2290 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2290 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.voteDelegs
d_voteDelegs_2292 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2292 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_898 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.delegatees
d_delegatees_2296 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_2296 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_958 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pools
d_pools_2298 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2298 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pparams
d_pparams_2300 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2300 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_954 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_2314 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2314 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.dreps
d_dreps_2316 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2316 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_924 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.pools
d_pools_2320 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2320 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.retiring
d_retiring_2322 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2322 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.rewardAddr
d_rewardAddr_2326 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_824 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2326 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_828 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_2330 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_2336 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1682
d_indexOfImp_2336 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.runPLCScript
d_runPLCScript_2338 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer] -> Bool
d_runPLCScript_2338 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1726 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_2340 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2340 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1728 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.serSize
d_serSize_2342 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  Integer -> Integer
d_serSize_2342 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1722 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_2344 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2344 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1720 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_2360 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708
d_HSAbstractFunctions_2360 ~v0 = du_HSAbstractFunctions_2360
du_HSAbstractFunctions_2360 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708
du_HSAbstractFunctions_2360
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2979
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> 0 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2687
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_348
                     (coe v1)
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_362
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
