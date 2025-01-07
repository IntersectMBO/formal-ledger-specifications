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
              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_extIsSigned_12
                 v0
                 (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkVKey_20
                    (coe v1))
                 v2 v3)
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                 ("Dec-isSigned evaluated" :: Data.Text.Text))))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
         ("isSigned-correct evaluated" :: Data.Text.Text))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_54 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_68 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__100 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__100 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_102 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_102 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_108 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_108 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_112 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_112 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_114 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_114 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_116 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_116 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_118 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_118 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_120 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_120 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_122 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_122 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_128 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_128 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_130 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_130 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_132 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_132 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_134 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_134 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_136 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_136 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_138 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_138 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_140 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_140 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_142 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_142 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_144 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_144 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_146 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_146 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_150 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_150 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_152 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_152 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_154 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_154 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_162 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_162 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_164 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_164 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_166 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_166 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hash-P1Script
d_Hash'45'P1Script_206 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_206 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_246 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_246 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_250 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_250 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_252 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_252 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_290 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_354
      (coe d_HSCrypto_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_292 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock
d_HSTimelock_294 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSPlutusScript_296 ~v0
  = du_Hashable'45'HSPlutusScript_296
du_Hashable'45'HSPlutusScript_296 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HSPlutusScript_296
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_368
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_298 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSTimelock_298 ~v0 = du_Hashable'45'HSTimelock_298
du_Hashable'45'HSTimelock_298 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HSTimelock_298
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_352
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_302 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'HTL_302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_370
      (coe d_HSCrypto_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_356 ->
  Integer
d_psScriptHash_306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_356 ->
  Integer
d_psScriptSize_308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.timelock
d_timelock_312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338 ->
  Integer
d_tlScriptHash_314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338 ->
  Integer
d_tlScriptSize_316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSScriptStructure
d_HSScriptStructure_318 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_HSScriptStructure_318 v0
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_72139
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_370
         (coe d_HSCrypto_16 (coe v0)) (coe du_HSEpochStructure_14))
      (\ v1 v2 v3 v4 v5 -> coe du_hashRespectsUnion_330 v4 v5)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_352)
      (coe du_HSP2ScriptStructure_340)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_330 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_330 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hashRespectsUnion_330 v4 v5
du_hashRespectsUnion_330 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_330 v0 v1
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
d_HSP2ScriptStructure_340 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_HSP2ScriptStructure_340 ~v0 = du_HSP2ScriptStructure_340
du_HSP2ScriptStructure_340 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
du_HSP2ScriptStructure_340
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4253
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Data'688'_74
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ExUnit'45'CommutativeMonoid_82
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_368)
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
d_GovParams_362 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_370 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_396 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_396 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_410 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_410 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_416 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_416 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_438 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_438 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_440 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_440 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_442 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_442 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_444 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_444 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_446 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_446 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_448 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_448 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_450 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_450 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_452 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_452 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_454 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_454 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_456 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_456 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_458 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_458 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_460 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_460 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_462 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_462 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_464 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_464 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_466 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_468 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_472 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_476 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_478 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_486 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_490 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_490 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_496 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_498 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_500 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_502 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_506 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_510 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_520 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_520 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
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
      (coe d_HSScriptStructure_318 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_522 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_524 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_524 ~v0 = du_applyPParamsUpdate_524
du_applyPParamsUpdate_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_524
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_544 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_Emax_544 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_546 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_546 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_548 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_548 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_550 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_550 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_552 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_552 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_554 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_554 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_556 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_558 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_558 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_560 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_560 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_562 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepActivity_562 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_564 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_564 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_566 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_568 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_568 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_570 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_570 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_572 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_572 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_574 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_574 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_576 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_576 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_578 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_578 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_580 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_582 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_582 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_584 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_584 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_586 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_586 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_588 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_588 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_590 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_592 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_592 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_594 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_596 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_596 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_598 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_600 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_600 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_602 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_602 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_604 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_604 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_606 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_606 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_608 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_608 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HsGovParams
d_HsGovParams_616 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_HsGovParams_616 v0
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1472063
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1471359
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016)
         (\ v1 -> coe du_ppWF_626 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
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
         (coe d_HSScriptStructure_318 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF
d_ppWF_626 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_626 ~v0 v1 = du_ppWF_626 v1
du_ppWF_626 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_626 v0
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
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_638
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
d_trustMe_642
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe
d_trustMe_652
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_658 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_658 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_13867
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
      (coe du_HSGlobalConstants_12) (d_HSCrypto_16 (coe v0))
      (coe du_HSEpochStructure_14) (d_HSScriptStructure_318 (coe v0))
      (d_HsGovParams_616 (coe v0))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_258
      (\ v1 -> v1)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ_
d__'43''7497'__662 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__662 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ'_
d__'43''7497'''__664 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__664 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._∙_
d__'8729'__666 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__666 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≈_
d__'8776'__668 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__668 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≤ᵗ_
d__'8804''7511'__670 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__670 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≥ᵉ_
d__'8805''7497'__672 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__672 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_674 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_674 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_676 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_676 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt
d_Acnt_678 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Addr
d_Addr_680 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_680 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor
d_Anchor_682 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AssetName
d_AssetName_684 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AssetName_684 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_686 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_686 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr
d_BaseAddr_688 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_690 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CostModel
d_CostModel_696 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_696 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Credential
d_Credential_698 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T
d_T_702 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_702 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_704 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_704 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dataʰ
d_Data'688'_706 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_706 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Datum
d_Datum_708 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_708 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_710 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_712 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_712 ~v0 = du_Dec'45'isScript_712
du_Dec'45'isScript_712 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_712
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_714 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_714 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_716 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_716 ~v0 = du_Dec'45'isVKey_716
du_Dec'45'isVKey_716 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_716
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_718 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_718 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_720 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_356 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_720 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_722 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_722 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_724 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_724 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_726 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_726 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_728 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_728 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_730 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_730 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_732 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_732 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_734 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_734 ~v0 = du_DecEq'45'DrepThresholds_734
du_DecEq'45'DrepThresholds_734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_734
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_496
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_736 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_736 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_738 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_738 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_740 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_740 ~v0 = du_DecEq'45'GovRole_740
du_DecEq'45'GovRole_740 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_740
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_742 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1182
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_744 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_746 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_746 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_748 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_748 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_750 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_750 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_752 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_752 ~v0 = du_DecEq'45'PParamGroup_752
du_DecEq'45'PParamGroup_752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_752
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_502
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_754 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_754 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_756 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_756 ~v0 = du_DecEq'45'PoolThresholds_756
du_DecEq'45'PoolThresholds_756 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_756
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_498
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_758 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_758 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_760 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_760 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_762 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_762 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_764 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_764 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_766 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_766 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_768 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_768 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1186 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_770 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_770 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_772 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_772 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1186 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_774 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_774 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_776 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_776 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_778 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_778 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_780 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_780 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_782 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_782 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1344
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_784 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_784 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_786 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_786 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_788 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_788 ~v0 = du_DecEq'45'Vote_788
du_DecEq'45'Vote_788 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_788
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_802
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_790 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_790 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds
d_DrepThresholds_792 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Epoch
d_Epoch_796 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_796 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_798 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_798 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnits
d_ExUnits_800 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_800 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction
d_GovAction_802 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionID
d_GovActionID_804 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_804 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState
d_GovActionState_806 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_808 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal
d_GovProposal_810 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRole
d_GovRole_812 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote
d_GovVote_814 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_818 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_818 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2760
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hash-P1Script
d_Hash'45'P1Script_820 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_820 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HashProtected
d_HashProtected_822 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_822 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_824 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_826 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_826 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_828 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_828 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_834 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_836 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_838 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ix
d_Ix_840 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_840 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_842 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_842 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.KeyPair
d_KeyPair_846 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_846 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.LangDepView
d_LangDepView_848 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_848 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Language
d_Language_850 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_850 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_852 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_852 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NeedsHash
d_NeedsHash_854 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_854 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Network
d_Network_856 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_856 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkId
d_NetworkId_860 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_860 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_866 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_866 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_868 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_868 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1Script
d_P1Script_870 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_870 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_872 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusScript
d_PlutusScript_874 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_874 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamGroup
d_PParamGroup_876 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_878 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff
d_PParamsDiff_880 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UpdateT
d_UpdateT_882 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_882 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_884 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV1
d_PlutusV1_886 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_886 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV2
d_PlutusV2_888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_888 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV3
d_PlutusV3_890 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_890 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds
d_PoolThresholds_892 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Prices
d_Prices_894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_894 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_896 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_896 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProtVer
d_ProtVer_898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProtVer_898 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Quorum
d_Quorum_900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_900 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RdmrPtr
d_RdmrPtr_902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_902 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Redeemer
d_Redeemer_904 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_904 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr
d_RwdAddr_918 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SKey
d_SKey_922 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_922 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Script
d_Script_926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_926 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptAddr
d_ScriptAddr_928 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_928 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_930 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_930 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_932 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_932 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptHash
d_ScriptHash_934 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_934 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_938 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ser
d_Ser_942 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_942 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_944 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_944 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential
d_Show'45'Credential_946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_946 ~v0 = du_Show'45'Credential_946
du_Show'45'Credential_946 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_946 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_948 ~v0
  = du_Show'45'Credential'215'Coin_948
du_Show'45'Credential'215'Coin_948 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_948 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_950 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_950 ~v0 = du_Show'45'DrepThresholds_950
du_Show'45'DrepThresholds_950 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_950
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_504
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_952 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_952 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_954 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_954 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Network
d_Show'45'Network_956 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_956 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PParams
d_Show'45'PParams_958 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_958 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_960 ~v0 = du_Show'45'PoolThresholds_960
du_Show'45'PoolThresholds_960 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_960
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_506
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Prices
d_Show'45'Prices_962 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_962 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ProtVer
d_Show'45'ProtVer_964 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_964 ~v0 = du_Show'45'ProtVer_964
du_Show'45'ProtVer_964 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_964
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-RwdAddr
d_Show'45'RwdAddr_966 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_966 ~v0 = du_Show'45'RwdAddr_966
du_Show'45'RwdAddr_966 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_966
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_968 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_968 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_970 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_970 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1186 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_972 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_972 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_974 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_974 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ℚ
d_Show'45'ℚ_976 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_976 ~v0 = du_Show'45'ℚ_976
du_Show'45'ℚ_976 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_976
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Sig
d_Sig_978 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_978 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slot
d_Slot_980 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_980 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_982 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_982 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slotʳ
d_Slot'691'_984 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_984 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindow
d_StabilityWindow_986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_986 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_988 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_988 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_990 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_990 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1186 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_992 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_992 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_994 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_994 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-isHashable
d_T'45'isHashable_996 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_996 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_452
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Timelock
d_Timelock_1000 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1002 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx
d_Tx_1008 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody
d_TxBody_1010 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxId
d_TxId_1012 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1012 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxIn
d_TxIn_1014 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1014 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOut
d_TxOut_1016 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1016 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOutʰ
d_TxOut'688'_1018 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1018 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses
d_TxWitnesses_1020 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxO
d_UTxO_1022 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1022 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Update
d_Update_1024 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1024 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VDeleg
d_VDeleg_1028 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKey
d_VKey_1030 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1030 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyAddr
d_VKeyAddr_1032 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1032 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1034 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1034 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1036 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1036 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value
d_Value_1040 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1040 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1042 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1042 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Voter
d_Voter_1044 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1044 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Wdrl
d_Wdrl_1046 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Wdrl_1046 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.actionWellFormed
d_actionWellFormed_1050 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_1050 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.actionWellFormed?
d_actionWellFormed'63'_1052 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1052 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_718
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.adHashingScheme
d_adHashingScheme_1054 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1054 ~v0 = du_adHashingScheme_1054
du_adHashingScheme_1054 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_adHashingScheme_1054
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addEpoch
d_addEpoch_1056 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1056 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addSlot
d_addSlot_1058 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1058 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addValue
d_addValue_1060 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1060 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.applyUpdate
d_applyUpdate_1062 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1062 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin
d_coin_1068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1068 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1070 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1070 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1072 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1072 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.crypto
d_crypto_1076 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1076 v0 = coe d_HSCrypto_16 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epoch
d_epoch_1078 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1078 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epochStructure
d_epochStructure_1080 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1080 ~v0 = du_epochStructure_1080
du_epochStructure_1080 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_epochStructure_1080 = coe du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.evalTimelock
d_evalTimelock_1094 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.firstSlot
d_firstSlot_1096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1096 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getDRepVote
d_getDRepVote_1098 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1098 ~v0 = du_getDRepVote_1098
du_getDRepVote_1098 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1098
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_806
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getScriptHash
d_getScriptHash_1100 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1100 ~v0 = du_getScriptHash_1100
du_getScriptHash_1100 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
du_getScriptHash_1100
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValue
d_getValue_1102 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1102 ~v0 = du_getValue_1102
du_getValue_1102 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1102
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2642
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValueʰ
d_getValue'688'_1104 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1104 ~v0 = du_getValue'688'_1104
du_getValue'688'_1104 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1104
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2658
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.globalConstants
d_globalConstants_1106 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1106 ~v0 = du_globalConstants_1106
du_globalConstants_1106 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_globalConstants_1106 = coe du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govParams
d_govParams_1108 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_govParams_1108 v0 = coe d_HsGovParams_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govStructure
d_govStructure_1110 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1110 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1112 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1112 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.inject
d_inject_1114 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1114 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1116 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr?
d_isBootstrapAddr'63'_1118 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1118 ~v0 = du_isBootstrapAddr'63'_1118
du_isBootstrapAddr'63'_1118 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1118
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHash
d_isKeyHash_1120 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1120 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1122 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1122 ~v0 = du_isKeyHashObj_1122
du_isKeyHashObj_1122 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isKeyHashObj_1122
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1124 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1124 ~v0 = du_isKeyHashObj'7495'_1124
du_isKeyHashObj'7495'_1124 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1124
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyPair
d_isKeyPair_1126 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1126 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script
d_isP2Script_1128 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1128 ~v0 = du_isP2Script_1128
du_isP2Script_1128 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_1128
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2758
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScript
d_isScript_1130 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptAddr
d_isScriptAddr_1132 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptObj
d_isScriptObj_1134 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1134 ~v0 = du_isScriptObj_1134
du_isScriptObj_1134 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isScriptObj_1134
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptRwdAddr
d_isScriptRwdAddr_1136 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1136 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned
d_isSigned_1138 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1138 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1140 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1140 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKey
d_isVKey_1142 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1144 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1144 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.khs
d_khs_1146 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1146 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.language
d_language_1148 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_356 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1148 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1150 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1150 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2744
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.maximum
d_maximum_1152 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1152 ~v0 = du_maximum_1152
du_maximum_1152 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_1152
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_658
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.monoid
d_monoid_1154 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1154 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.netId
d_netId_1156 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1156 ~v0 = du_netId_1156
du_netId_1156 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1156 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.p1s
d_p1s_1160 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1160 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_428
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1162 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1162 ~v0 = du_paramsWF'45'elim_1162
du_paramsWF'45'elim_1162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1162 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_462 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1164 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_1164 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.payCred
d_payCred_1166 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1166 ~v0 = du_payCred_1166
du_payCred_1166 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1166 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pkk
d_pkk_1168 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1168 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.policies
d_policies_1170 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1170 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.positivePParams
d_positivePParams_1172 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
d_positivePParams_1172 ~v0 = du_positivePParams_1172
du_positivePParams_1172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
du_positivePParams_1172
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_378
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppUpd
d_ppUpd_1174 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1174 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF?
d_ppWF'63'_1176 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1176 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_ppdWellFormed_1178 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.preoEpoch
d_preoEpoch_1180 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1180 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.property
d_property_1182 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1182 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ps
d_ps_1184 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1184 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow
d_pvCanFollow_1186 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow?
d_pvCanFollow'63'_1188 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1188 ~v0 = du_pvCanFollow'63'_1188
du_pvCanFollow'63'_1188 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1188
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rawMonoid
d_rawMonoid_1190 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1190 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScriptCostStride>0
d_refScriptCostStride'62'0_1192 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1192 ~v0
  = du_refScriptCostStride'62'0_1192
du_refScriptCostStride'62'0_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_1192 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_484 v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScripts
d_refScripts_1194 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1194 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2682
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptOuts
d_scriptOuts_1196 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1196 ~v0 = du_scriptOuts_1196
du_scriptOuts_1196 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1196
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2668
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptStructure
d_scriptStructure_1198 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1198 v0 = coe d_HSScriptStructure_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sign
d_sign_1200 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1200 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.size
d_size_1202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1202 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.specialAsset
d_specialAsset_1204 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1204 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.stakeCred
d_stakeCred_1206 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1206 ~v0 = du_stakeCred_1206
du_stakeCred_1206 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1206
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sucᵉ
d_suc'7497'_1208 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1208 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sumᵛ
d_sum'7515'_1210 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1210 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toData
d_toData_1212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> AgdaAny -> Integer
d_toData_1212 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1214 ~v0 = du_tokenAlgebra_1214
du_tokenAlgebra_1214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
du_tokenAlgebra_1214
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_258
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txOutHash
d_txOutHash_1216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1216 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2648
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txidBytes
d_txidBytes_1218 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1218 ~v0 v1 = du_txidBytes_1218 v1
du_txidBytes_1218 :: Integer -> Integer
du_txidBytes_1218 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txinsScript
d_txinsScript_1220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1220 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2676
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txinsVKey
d_txinsVKey_1222 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1222 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2662
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txscripts
d_txscripts_1224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1224 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2734
      (coe d_HSTransactionStructure_658 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.updateGroups
d_updateGroups_1226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1226 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1330
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2198 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validP1Script
d_validP1Script_1228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338 ->
  ()
d_validP1Script_1228 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validPlutusScript
d_validPlutusScript_1230 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_356 ->
  ()
d_validPlutusScript_1230 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ε
d_ε_1232 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1232 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2216 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1234 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1234 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1236 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1238 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1238 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.reserves
d_reserves_1244 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_1244 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.treasury
d_treasury_1246 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_1246 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.hash
d_hash_1250 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 -> Integer
d_hash_1250 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_690 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.url
d_url_1252 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1252 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_688 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.net
d_net_1256 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> Integer
d_net_1256 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.pay
d_pay_1258 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1258 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.stake
d_stake_1260 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1260 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1264 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1264 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.net
d_net_1266 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_net_1266 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.pay
d_pay_1268 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1268 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P1
d_P1_1278 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1278 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2a
d_P2a_1280 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1280 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2b
d_P2b_1282 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1282 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P3
d_P3_1284 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1284 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P4
d_P4_1286 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1286 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5a
d_P5a_1288 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1288 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5b
d_P5b_1290 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1290 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5c
d_P5c_1292 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1292 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5d
d_P5d_1294 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1294 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P6
d_P6_1296 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1296 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.action
d_action_1316 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_1316 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1318 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  Integer
d_expiresIn_1318 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.prevAction
d_prevAction_1320 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_prevAction_1320 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1322 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1322 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.votes
d_votes_1324 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1324 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_790 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1328 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1328 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1330 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> ()
d_UpdateT_1330 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1332 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1332 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1334 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1334 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1336 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1336 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1338 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> AgdaAny -> ()
d_ppdWellFormed_1338 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1340 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1340 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1330 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.action
d_action_1344 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_1344 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.anchor
d_anchor_1346 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_1346 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_776 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.deposit
d_deposit_1348 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> Integer
d_deposit_1348 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.policy
d_policy_1350 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  Maybe Integer
d_policy_1350 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.prevAction
d_prevAction_1352 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> AgdaAny
d_prevAction_1352 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_1354 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1354 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.anchor
d_anchor_1366 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_1366 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.gid
d_gid_1368 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1368 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.vote
d_vote_1370 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_1370 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.voter
d_voter_1372 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1372 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_1376 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1384 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1384 ~v0 = du_DecEq'45'GovRole_1384
du_DecEq'45'GovRole_1384 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1384
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1386 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1386 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1388 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1388 ~v0 = du_DecEq'45'Vote_1388
du_DecEq'45'Vote_1388 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1388
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_802
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_1390 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_1392 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1392 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_1394 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_1396 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_1398 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_1400 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_1402 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1402 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_1406 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_1406 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_1420 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Vote
d_Vote_1422 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Voter
d_Voter_1424 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1424 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.actionWellFormed
d_actionWellFormed_1430 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_1430 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_1432 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1432 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_718
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.getDRepVote
d_getDRepVote_1436 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1436 ~v0 = du_getDRepVote_1436
du_getDRepVote_1436 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1436
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_806
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.maximum
d_maximum_1438 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1438 ~v0 = du_maximum_1438
du_maximum_1438 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_1438
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_658
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_1464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1464 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1470 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_1472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1472 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_1476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1476 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_1478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1478 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1482 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1482 ~v0 = du_isMagmaIsomorphism_1482
du_isMagmaIsomorphism_1482 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1482 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1484 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1484 v2
du_isMagmaMonomorphism_1484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1490 v0
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
d_isRelIsomorphism_1492 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1492 ~v0 ~v1 v2 = du_isRelIsomorphism_1492 v2
du_isRelIsomorphism_1492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1492 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1494 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1494 ~v0 ~v1 v2 = du_isRelMonomorphism_1494 v2
du_isRelMonomorphism_1494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1494 v0
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
d_surjective_1496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1498 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_1500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1500 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_1504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1504 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_1506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1506 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1510 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1510 ~v0 = du_isMagmaMonomorphism_1510
du_isMagmaMonomorphism_1510 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1510 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1512 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1514 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1516 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1516 ~v0 ~v1 v2 = du_isRelMonomorphism_1516 v2
du_isRelMonomorphism_1516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1516 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1518 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_1520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1520 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1524 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1524 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1526 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1526 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1528 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1528 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_1530 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1530 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1532 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1532 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_1548 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_1548 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_1550 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1550 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_1552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1552 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_1554 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1554 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1556 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_1558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1558 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1560 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1560 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_1562 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1562 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_1564 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1564 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_1566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_1566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_1568 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1568 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_1570 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1570 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_1572 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1572 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_1574 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1574 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_1576 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1576 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1578 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1578 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_1580 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1582 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1582 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1584 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1584 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1586 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1586 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1588 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1588 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1590 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_1592 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_1594 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1596 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1596 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_1598 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_1600 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1600 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_1602 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1602 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_1604 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1604 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_1606 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1606 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_1608 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1608 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1610 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1610 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_1612 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1612 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_1616 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_1616 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_1618 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1618 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_1620 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1620 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1622 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> AgdaAny -> ()
d_ppdWellFormed_1622 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_1624 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1624 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__1628 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1628 ~v0 = du__'63''8599'__1628
du__'63''8599'__1628 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1628 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1032 v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1630 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1630 v0
  = let v1 = d_HSTransactionStructure_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1792 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1632 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1634 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_1634 ~v0 = du_applyPParamsUpdate_1634
du_applyPParamsUpdate_1634 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_1634
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1636 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_1636 ~v0 = du_modifiedUpdateGroups_1636
du_modifiedUpdateGroups_1636 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
du_modifiedUpdateGroups_1636
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1638 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesEconomicGroup_1638 ~v0 = du_modifiesEconomicGroup_1638
du_modifiesEconomicGroup_1638 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesEconomicGroup_1638
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_800
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1640 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesGovernanceGroup_1640 ~v0
  = du_modifiesGovernanceGroup_1640
du_modifiesGovernanceGroup_1640 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesGovernanceGroup_1640
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_944
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1642 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesNetworkGroup_1642 ~v0 = du_modifiesNetworkGroup_1642
du_modifiesNetworkGroup_1642 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesNetworkGroup_1642
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_728
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1644 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesTechnicalGroup_1644 ~v0 = du_modifiesTechnicalGroup_1644
du_modifiesTechnicalGroup_1644 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesTechnicalGroup_1644
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_872
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1646 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_paramsUpdateWellFormed_1646 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1648 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1648 ~v0
  = du_paramsUpdateWellFormed'63'_1648
du_paramsUpdateWellFormed'63'_1648 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1648
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_724
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_1650 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1650 ~v0 = du_'8801''45'update_1650
du_'8801''45'update_1650 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1650 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1046 v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1654 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_Emax_1654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_1656 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_1656 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_1658 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1658 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_1660 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_1660 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1662 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_1662 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1664 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_1664 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1666 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_1666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1668 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_1668 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1670 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1672 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepActivity_1672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1674 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_1674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1676 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1678 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_1678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1680 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_1680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1682 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_1682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1684 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1686 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_1686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1688 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_1688 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1690 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_1690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1692 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_1692 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1694 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_1694 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1696 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1698 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_1698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1700 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_1700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1702 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1702 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1704 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_1704 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1706 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_1706 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1708 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_1708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1710 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_1712 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_1714 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1714 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1716 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1716 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1718 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_1718 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1722 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1722 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_1724 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1724 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T
d_T_1726 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1726 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.THash
d_THash_1728 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1728 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_1730 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1730 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Datum
d_Datum_1732 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1732 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1734 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1734 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1736 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1736 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1738 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1738 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1740 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1740 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1742 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1742 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1744 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1744 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_1746 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1746 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1748 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1748 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1750 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1750 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_1752 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1752 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1754 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1754 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_1756 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1756 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_1758 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1758 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_1760 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1760 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_1762 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1762 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_1764 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1764 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_1766 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1766 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_1768 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1768 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_1770 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1770 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1772 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1772 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1774 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1774 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_1776 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1776 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_1778 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1778 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_1780 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1780 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_1782 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1782 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_1784 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1784 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_1786 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1786 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_1788 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1788 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q1
d_Q1_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1792 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_1794 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1794 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_1796 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1796 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q4
d_Q4_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1798 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q5e
d_Q5e_1800 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1800 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.net
d_net_1804 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> Integer
d_net_1804 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.stake
d_stake_1806 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1806 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1810 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1810 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_1812 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_1812 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T
d_T_1814 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_1814 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.THash
d_THash_1816 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_1816 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_1818 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1818 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Datum
d_Datum_1820 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_1820 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1822 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1822 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1824 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1824 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1826 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1826 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1828 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1828 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1830 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1830 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1832 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1832 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1834 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1834 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1836 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1836 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_1838 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1838 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1840 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1840 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1842 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1842 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_1844 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_1844 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hash-P1Script
d_Hash'45'P1Script_1846 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_1846 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1848 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1848 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1850 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1850 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1852 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1852 ~v0 = du_Hashable'45'Script_1852
du_Hashable'45'Script_1852 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1852
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_1854 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_1854 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Language
d_Language_1856 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_1856 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_1858 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_1858 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_1860 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_1860 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_1862 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_1862 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_1864 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_1864 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_1866 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Prices
d_Prices_1868 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_1868 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_1870 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_1870 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Script
d_Script_1872 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_1872 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1874 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1874 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1876 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1876 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_1878 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1878 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_1880 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1880 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_1882 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1882 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_1884 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1884 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1886 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1886 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.language
d_language_1888 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_1888 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_1890 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1890 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_1892 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1892 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toData
d_toData_1894 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_1894 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_1896 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1896 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_1898 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1898 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__1916 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1916 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__1918 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1918 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1920 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1920 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.AssetName
d_AssetName_1922 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1922 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1924 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1924 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1926 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1926 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1928 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1930 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1932 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value
d_Value_1934 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1934 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1936 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1936 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.addValue
d_addValue_1938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1938 ~v0 = du_addValue_1938
du_addValue_1938 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
du_addValue_1938
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin
d_coin_1940 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1940 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1942 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1942 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1944 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1944 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.inject
d_inject_1946 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1946 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.monoid
d_monoid_1948 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1948 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.policies
d_policies_1950 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_1950 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.property
d_property_1952 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1952 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_1954 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1954 v0
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
d_size_1956 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1956 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.specialAsset
d_specialAsset_1958 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1958 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_1960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1960 ~v0 = du_sum'7515'_1960
du_sum'7515'_1960 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1960
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.ε
d_ε_1962 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1962 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1966 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1968 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1972 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1974 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1978 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1980 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1982 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1984 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1984 ~v0 = du_isMagmaIsomorphism_1984
du_isMagmaIsomorphism_1984 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1984 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1986 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1986 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1986 v2
du_isMagmaMonomorphism_1986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1986 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1988 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1992 v0
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
d_isRelIsomorphism_1994 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1994 ~v0 ~v1 v2 = du_isRelIsomorphism_1994 v2
du_isRelIsomorphism_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1994 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1996 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1996 ~v0 ~v1 v2 = du_isRelMonomorphism_1996 v2
du_isRelMonomorphism_1996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1996 v0
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
d_surjective_1998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1998 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2000 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2000 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2002 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2002 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2006 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2006 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2008 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2008 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2010 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2010 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2012 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2012 ~v0 = du_isMagmaMonomorphism_2012
du_isMagmaMonomorphism_2012 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2012 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2014 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2014 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2016 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2016 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2018 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2018 ~v0 ~v1 v2 = du_isRelMonomorphism_2018 v2
du_isRelMonomorphism_2018 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2018 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2020 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2020 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2022 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2022 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.body
d_body_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
d_body_2026 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.isValid
d_isValid_2028 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Bool
d_isValid_2028 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.txAD
d_txAD_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Maybe Integer
d_txAD_2030 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.wits
d_wits_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604
d_wits_2032 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.collateral
d_collateral_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2036 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.curTreasury
d_curTreasury_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Maybe Integer
d_curTreasury_2038 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.mint
d_mint_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_mint_2040 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2572 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.refInputs
d_refInputs_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2042 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2566 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.reqSigHash
d_reqSigHash_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> [Integer]
d_reqSigHash_2044 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.scriptIntHash
d_scriptIntHash_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Maybe Integer
d_scriptIntHash_2046 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txADhash
d_txADhash_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Maybe Integer
d_txADhash_2048 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Maybe Integer
d_txNetworkId_2050 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txcerts
d_txcerts_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2052 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2576 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txdonation
d_txdonation_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_txdonation_2054 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txfee
d_txfee_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_txfee_2056 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2570 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txid
d_txid_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_txid_2058 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txins
d_txins_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2060 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2564 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txouts
d_txouts_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2062 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2568 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txprop
d_txprop_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752]
d_txprop_2064 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txsize
d_txsize_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 -> Integer
d_txsize_2066 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txup
d_txup_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2068 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txvldt
d_txvldt_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2070 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2574 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txvote
d_txvote_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_txvote_2072 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txwdrls
d_txwdrls_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2074 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2578 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scripts
d_scripts_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2078 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2080 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338]
d_scriptsP1_2080 ~v0 = du_scriptsP1_2080
du_scriptsP1_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_338]
du_scriptsP1_2080
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2622
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txdats
d_txdats_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2082 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2084 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2086 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2122 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2124 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2124 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2126 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2128 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2130 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2132 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv
d_CertEnv_2142 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState
d_CertState_2144 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DCert
d_DCert_2148 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState
d_DState_2158 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2160 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2160 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
         (coe d_HSTransactionStructure_658 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv
d_DelegEnv_2162 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositPurpose
d_DepositPurpose_2164 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Deposits
d_Deposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2166 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState
d_GState_2174 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovCertEnv
d_GovCertEnv_2178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovCertEnv_2178 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2180 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2180 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_970
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
         (coe d_HSTransactionStructure_658 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState
d_PState_2186 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolEnv
d_PoolEnv_2190 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2190 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams
d_PoolParams_2192 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cwitness
d_cwitness_2196 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2196 ~v0 = du_cwitness_2196
du_cwitness_2196 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_cwitness_2196 = coe MAlonzo.Code.Ledger.Certs.du_cwitness_850
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rewardsBalance
d_rewardsBalance_2212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888 -> Integer
d_rewardsBalance_2212 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewardsBalance_964
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
         (coe d_HSTransactionStructure_658 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.epoch
d_epoch_2262 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_868 -> Integer
d_epoch_2262 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.pp
d_pp_2264 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2264 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.votes
d_votes_2266 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_votes_2266 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.wdrls
d_wdrls_2268 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2268 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.dState
d_dState_2272 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888
d_dState_2272 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_936 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.gState
d_gState_2274 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916
d_gState_2274 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_940 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.pState
d_pState_2276 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_2276 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_938 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.rewards
d_rewards_2298 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2298 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_900 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_2300 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2300 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_898 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.voteDelegs
d_voteDelegs_2302 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2302 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_896 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.delegatees
d_delegatees_2306 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_944 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_2306 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pools
d_pools_2308 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2308 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_954 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pparams
d_pparams_2310 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_944 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2310 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_952 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_2324 ::
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2324 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_924 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.dreps
d_dreps_2326 ::
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2326 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_922 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.pools
d_pools_2330 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2330 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.retiring
d_retiring_2332 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2332 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.rewardAddr
d_rewardAddr_2336 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_826 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2336 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_830 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_2340 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_2346 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1684
d_indexOfImp_2346 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1726 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.runPLCScript
d_runPLCScript_2348 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer] -> Bool
d_runPLCScript_2348 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1728 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_2350 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2350 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1730 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.serSize
d_serSize_2352 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer -> Integer
d_serSize_2352 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_2354 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2354 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1722 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_2370 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710
d_HSAbstractFunctions_2370 ~v0 = du_HSAbstractFunctions_2370
du_HSAbstractFunctions_2370 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710
du_HSAbstractFunctions_2370
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2981
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> 0 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2689
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
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_350
                     (coe v1)
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_364
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
