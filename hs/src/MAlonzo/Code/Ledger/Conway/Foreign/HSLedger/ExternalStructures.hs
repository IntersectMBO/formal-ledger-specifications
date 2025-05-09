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
import qualified MAlonzo.Code.Agda.Primitive
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
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
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
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSGlobalConstants
d_HSGlobalConstants_12 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_HSGlobalConstants_12 ~v0 = du_HSGlobalConstants_12
du_HSGlobalConstants_12 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_HSGlobalConstants_12
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_6529
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_SlotsPerEpoch'7580'_46
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ActiveSlotCoeff_48
         erased)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_StabilityWindow'7580'_50
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Quorum_52
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_NetworkId_54
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSEpochStructure
d_HSEpochStructure_14 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_HSEpochStructure_14 ~v0 = du_HSEpochStructure_14
du_HSEpochStructure_14 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_HSEpochStructure_14
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_310
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
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
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
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
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
              MAlonzo.Code.Data.Bool.Properties.d__'8799'__3104
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
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_72009
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
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4263
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Data'688'_76
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ExUnit'45'CommutativeMonoid_84
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
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Show'45'ExUnits_88
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 ->
         coe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.du_toData_80)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_352 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_372 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_402 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> ()
d_paramsWellFormed_402 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_418 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_418 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_424 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_424 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_462 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_Emax_462 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_464 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_464 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_466 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_466 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_468 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_468 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_470 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_470 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_472 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_472 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_474 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_474 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_476 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_476 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_478 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_478 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_480 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepActivity_480 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_482 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_482 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_484 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_484 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_486 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_488 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_490 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_490 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_492 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_494 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_496 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_496 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_498 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_498 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_500 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_500 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_502 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_502 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_504 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_506 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_508 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_508 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_510 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_510 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_512 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_512 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_514 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_514 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_516 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_516 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_518 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_518 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_520 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_520 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_522 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_522 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_524 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_524 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_526 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_526 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_528 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_528 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_530 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_530 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_534 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> ()
d_UpdateT_534 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_536 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_536 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_538 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_538 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_542 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_542 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1490 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_548 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_548 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1418
      (let v1 = coe du_HSGlobalConstants_12 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1323
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3794
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v1)))
            (\ v2 ->
               mulInt
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v1)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_292
               (coe v1))
            (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
      (coe d_HSScriptStructure_308 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_550 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_552 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyPParamsUpdate_552 ~v0 = du_applyPParamsUpdate_552
du_applyPParamsUpdate_552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_applyPParamsUpdate_552
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1264
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_574 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_Emax_574 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_710 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_576 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_a_576 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_680 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_578 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_578 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_708 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_580 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_b_580 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_682 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_582 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_582 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_732 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_584 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_584 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_730 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_586 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_586 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_588 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_588 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_714 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_590 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_716 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_592 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_drepActivity_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_728 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_594 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_726 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_596 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_718 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_598 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_600 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_600 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_722 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_602 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_602 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_684 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_604 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_604 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_676 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_606 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_606 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_664 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_608 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_608 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_610 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_610 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_668 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_612 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_612 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_614 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_614 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_616 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_616 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_674 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_618 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_618 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_666 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_620 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_620 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_622 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_622 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_624 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_624 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_706 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_626 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_626 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_688 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_628 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_nopt_628 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_712 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_630 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_630 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_686 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_632 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_720 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_634 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_634 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_636 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_636 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_678 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_638 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_638 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_640 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_640 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_702 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_642 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_642 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_690 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HsGovParams
d_HsGovParams_650 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504
d_HsGovParams_650 v0
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_964369
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_963665
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1264)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1200)
         (\ v1 -> coe du_ppWF_660 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1418
         (let v1 = coe du_HSGlobalConstants_12 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1323
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3794
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
               MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
                       (coe v1)))
               (\ v2 ->
                  mulInt
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
                       (coe v1)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_292
                  (coe v1))
               (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
         (coe d_HSScriptStructure_308 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF
d_ppWF_660 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_660 ~v0 v1 = du_ppWF_660 v1
du_ppWF_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_660 v0
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
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_664 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_666 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_668 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_670 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_692
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_686 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_714
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_732
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_722
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_724
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_726
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
d_trustMe_676
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe
d_trustMe_686
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_692 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_692 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_14611
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
      (coe du_HSGlobalConstants_12) (d_HSCrypto_16 (coe v0))
      (coe du_HSEpochStructure_14) (d_HSScriptStructure_308 (coe v0))
      (d_HsGovParams_650 (coe v0))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
      (\ v1 -> v1)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ_
d__'43''7497'__696 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__696 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ'_
d__'43''7497'''__698 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__698 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._∙_
d__'8729'__700 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__700 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≈_
d__'8776'__702 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__702 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≤ᵗ_
d__'8804''7511'__704 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__704 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≥ᵉ_
d__'8805''7497'__706 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__706 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_708 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_708 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_710 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt
d_Acnt_712 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_714 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_714 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ActiveSlotCoeff_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Addr
d_Addr_716 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_716 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor
d_Anchor_718 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_720 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_720 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr
d_BaseAddr_722 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_724 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CostModel
d_CostModel_730 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_730 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Credential
d_Credential_732 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CredentialOf
d_CredentialOf_734 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26 ->
  AgdaAny -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_CredentialOf_734 v0
  = coe MAlonzo.Code.Ledger.Address.d_CredentialOf_34 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T
d_T_738 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_738 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_740 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_740 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dataʰ
d_Data'688'_742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_742 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Datum
d_Datum_744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_744 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_746 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_746 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_748 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_748 ~v0 = du_Dec'45'isScript_748
du_Dec'45'isScript_748 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_748
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_750 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_750 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_752 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_752 ~v0 = du_Dec'45'isVKey_752
du_Dec'45'isVKey_752 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_752
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_754 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_754 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_426
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_756 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_756 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_758 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_758 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_760 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_760 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_762 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_762 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_234
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_764 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_764 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_236
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_766 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_766 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_768 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_768 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_770 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_770 ~v0 = du_DecEq'45'DrepThresholds_770
du_DecEq'45'DrepThresholds_770 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_770
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_576
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_772 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_772 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_774 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_774 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_776 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_776 ~v0 = du_DecEq'45'GovActionType_776
du_DecEq'45'GovActionType_776 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_776
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovActionType_878
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_778 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_778 ~v0 = du_DecEq'45'GovRole_778
du_DecEq'45'GovRole_778 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_778
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_880
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_780 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_780 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1242
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_782 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_782 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_784 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_784 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_786 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_786 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_788 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_788 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_426
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_790 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_790 ~v0 = du_DecEq'45'PParamGroup_790
du_DecEq'45'PParamGroup_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_790
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_582
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_792 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_792 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_580
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_794 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_794 ~v0 = du_DecEq'45'PoolThresholds_794
du_DecEq'45'PoolThresholds_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_794
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_578
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_796 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_796 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_798 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_798 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_800 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_800 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_802 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_802 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_804 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_804 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_806 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_806 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1246 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_808 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_808 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_810 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_810 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1246 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_812 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_812 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_814 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_814 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_816 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_816 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_818 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_818 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1244
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_820 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_820 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2322 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_822 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_822 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_884
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2450 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_824 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_826 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_826 ~v0 = du_DecEq'45'Vote_826
du_DecEq'45'Vote_826 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_826
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_882
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_828 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_828 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds
d_DrepThresholds_830 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Epoch
d_Epoch_834 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_834 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_836 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_836 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnits
d_ExUnits_838 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_838 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction
d_GovAction_840 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionData
d_GovActionData_842 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_GovActionData_842 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionID
d_GovActionID_844 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_844 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState
d_GovActionState_846 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionType
d_GovActionType_848 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_850 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal
d_GovProposal_852 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRole
d_GovRole_854 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote
d_GovVote_856 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_860 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_860 ~v0 = du_HasCast'45'Acnt_860
du_HasCast'45'Acnt_860 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_860
  = coe MAlonzo.Code.Ledger.PParams.du_HasCast'45'Acnt_184
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_862 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_862 ~v0
  = du_HasCast'45'GovAction'45'Sigma_862
du_HasCast'45'GovAction'45'Sigma_862 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_862
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_788
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_864 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_864 ~v0 = du_HasCast'45'GovVote_864
du_HasCast'45'GovVote_864 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_864
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'GovVote_886
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_866 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_866 ~v0
  = du_HasCast'45'HashProtected_866
du_HasCast'45'HashProtected_866 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_866 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected_800
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_868 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_868 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_868
du_HasCast'45'HashProtected'45'MaybeScriptHash_868 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_868
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_802
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_870 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_870 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_3338
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential
d_HasCredential_872 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_874 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_HasCredential_26
d_HasCredential'45'RwdAddr_874 ~v0
  = du_HasCredential'45'RwdAddr_874
du_HasCredential'45'RwdAddr_874 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26
du_HasCredential'45'RwdAddr_874
  = coe MAlonzo.Code.Ledger.Address.du_HasCredential'45'RwdAddr_128
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId
d_HasNetworkId_876 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_878 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'BaseAddr_878 ~v0
  = du_HasNetworkId'45'BaseAddr_878
du_HasNetworkId'45'BaseAddr_878 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'BaseAddr_878
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'BaseAddr_122
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_880 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'BootstrapAddr_880 ~v0
  = du_HasNetworkId'45'BootstrapAddr_880
du_HasNetworkId'45'BootstrapAddr_880 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'BootstrapAddr_880
  = coe
      MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'BootstrapAddr_124
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_882 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_882 ~v0 = du_HasNetworkId'45'RwdAddr_882
du_HasNetworkId'45'RwdAddr_882 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_882
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'RwdAddr_126
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams
d_HasPParams_884 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxBody
d_HasTxBody_886 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_HasTxBody_3074
d_HasTxBody'45'Tx_888 ~v0 = du_HasTxBody'45'Tx_888
du_HasTxBody'45'Tx_888 ::
  MAlonzo.Code.Ledger.Transaction.T_HasTxBody_3074
du_HasTxBody'45'Tx_888
  = coe MAlonzo.Code.Ledger.Transaction.du_HasTxBody'45'Tx_3198
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasUTxO
d_HasUTxO_890 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWdrls-Tx
d_HasWdrls'45'Tx_892 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
d_HasWdrls'45'Tx_892 ~v0 = du_HasWdrls'45'Tx_892
du_HasWdrls'45'Tx_892 :: MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
du_HasWdrls'45'Tx_892
  = coe MAlonzo.Code.Ledger.Transaction.du_HasWdrls'45'Tx_3208
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWdrls-TxBody
d_HasWdrls'45'TxBody_894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
d_HasWdrls'45'TxBody_894 ~v0 = du_HasWdrls'45'TxBody_894
du_HasWdrls'45'TxBody_894 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
du_HasWdrls'45'TxBody_894
  = coe MAlonzo.Code.Ledger.Transaction.du_HasWdrls'45'TxBody_3206
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasccMaxTermLength
d_HasccMaxTermLength_896 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasgovActionDeposit
d_HasgovActionDeposit_898 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
d_HasgovActionDeposit'45'PParams_900 ~v0
  = du_HasgovActionDeposit'45'PParams_900
du_HasgovActionDeposit'45'PParams_900 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
du_HasgovActionDeposit'45'PParams_900
  = coe
      MAlonzo.Code.Ledger.PParams.du_HasgovActionDeposit'45'PParams_458
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HashProtected
d_HashProtected_902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_902 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_904 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_904 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_426
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_906 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_906 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_908 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastreasury
d_Hastreasury_910 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxcerts
d_Hastxcerts_912 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxcerts-Tx
d_Hastxcerts'45'Tx_914 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Hastxcerts_3110
d_Hastxcerts'45'Tx_914 ~v0 = du_Hastxcerts'45'Tx_914
du_Hastxcerts'45'Tx_914 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxcerts_3110
du_Hastxcerts'45'Tx_914
  = coe MAlonzo.Code.Ledger.Transaction.du_Hastxcerts'45'Tx_3202
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxfee
d_Hastxfee_916 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxfee-Tx
d_Hastxfee'45'Tx_918 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Hastxfee_3092
d_Hastxfee'45'Tx_918 ~v0 = du_Hastxfee'45'Tx_918
du_Hastxfee'45'Tx_918 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxfee_3092
du_Hastxfee'45'Tx_918
  = coe MAlonzo.Code.Ledger.Transaction.du_Hastxfee'45'Tx_3200
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxid
d_Hastxid_920 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxid-Tx
d_Hastxid'45'Tx_922 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Hastxid_3146
d_Hastxid'45'Tx_922 ~v0 = du_Hastxid'45'Tx_922
du_Hastxid'45'Tx_922 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxid_3146
du_Hastxid'45'Tx_922
  = coe MAlonzo.Code.Ledger.Transaction.du_Hastxid'45'Tx_3210
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxprop
d_Hastxprop_924 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxprop-Tx
d_Hastxprop'45'Tx_926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Hastxprop_3128
d_Hastxprop'45'Tx_926 ~v0 = du_Hastxprop'45'Tx_926
du_Hastxprop'45'Tx_926 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxprop_3128
du_Hastxprop'45'Tx_926
  = coe MAlonzo.Code.Ledger.Transaction.du_Hastxprop'45'Tx_3204
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_932 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_934 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_936 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ix
d_Ix_938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_938 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_940 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_940 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.KeyPair
d_KeyPair_944 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_944 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.LangDepView
d_LangDepView_946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_946 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Language
d_Language_948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_948 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_950 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_950 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NeedsHash
d_NeedsHash_952 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_NeedsHash_952 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Network
d_Network_954 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_954 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkId
d_NetworkId_958 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_958 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_960 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108 ->
  AgdaAny -> Integer
d_NetworkIdOf_960 v0
  = coe MAlonzo.Code.Ledger.Address.d_NetworkIdOf_116 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_966 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_966 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_290
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_968 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_968 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_286
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_970 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_970 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1Script
d_P1Script_972 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_972 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_974 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusScript
d_PlutusScript_976 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_976 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamGroup
d_PParamGroup_978 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_980 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff
d_PParamsDiff_982 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsOf
d_PParamsOf_984 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_984 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UpdateT
d_UpdateT_986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_986 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_988 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV1
d_PlutusV1_990 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_990 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV2
d_PlutusV2_992 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_992 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV3
d_PlutusV3_994 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_994 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds
d_PoolThresholds_996 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Prices
d_Prices_998 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_998 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1000 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1000 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProtVer
d_ProtVer_1002 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProtVer_1002 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Quorum
d_Quorum_1004 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1004 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RdmrPtr
d_RdmrPtr_1006 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1006 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Redeemer
d_Redeemer_1008 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1008 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr
d_RwdAddr_1022 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SKey
d_SKey_1026 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1026 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Script
d_Script_1030 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1030 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptAddr
d_ScriptAddr_1032 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1032 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1034 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1034 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1036 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1036 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptHash
d_ScriptHash_1038 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1038 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_1042 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ser
d_Ser_1046 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1046 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1048 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1048 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential
d_Show'45'Credential_1050 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1050 ~v0 = du_Show'45'Credential_1050
du_Show'45'Credential_1050 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1050 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_250 v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1052 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1052 ~v0
  = du_Show'45'Credential'215'Coin_1052
du_Show'45'Credential'215'Coin_1052 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1052 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_254 v1
      v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1054 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1054 ~v0 = du_Show'45'DrepThresholds_1054
du_Show'45'DrepThresholds_1054 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1054
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_584
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1056 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1056 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1058 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1058 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Network
d_Show'45'Network_1060 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1060 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_282
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PParams
d_Show'45'PParams_1062 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1062 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_588
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1064 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1064 ~v0 = du_Show'45'PoolThresholds_1064
du_Show'45'PoolThresholds_1064 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1064
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_586
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Prices
d_Show'45'Prices_1066 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1066 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ProtVer
d_Show'45'ProtVer_1068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1068 ~v0 = du_Show'45'ProtVer_1068
du_Show'45'ProtVer_1068 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1068
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-RwdAddr
d_Show'45'RwdAddr_1070 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1070 ~v0 = du_Show'45'RwdAddr_1070
du_Show'45'RwdAddr_1070 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1070
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_252
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1072 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1072 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1074 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1074 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1246 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1076 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1076 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1078 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1078 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Sig
d_Sig_1080 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1080 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slot
d_Slot_1082 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1082 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1084 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1084 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slotʳ
d_Slot'691'_1086 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1086 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindow
d_StabilityWindow_1088 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1088 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1090 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1090 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_292
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1092 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1092 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1246 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1094 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1094 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1096 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_448
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-isHashable
d_T'45'isHashable_1098 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1098 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Timelock
d_Timelock_1102 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1104 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx
d_Tx_1110 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody
d_TxBody_1112 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBodyOf
d_TxBodyOf_1114 ::
  MAlonzo.Code.Ledger.Transaction.T_HasTxBody_3074 ->
  AgdaAny -> MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_TxBodyOf_1114 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_TxBodyOf_3082 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxId
d_TxId_1116 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1116 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxIn
d_TxIn_1118 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1118 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOut
d_TxOut_1120 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1120 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOutʰ
d_TxOut'688'_1122 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1122 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses
d_TxWitnesses_1124 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxO
d_UTxO_1126 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1126 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxOOf
d_UTxOOf_1128 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1128 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2982 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Update
d_Update_1130 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1130 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VDeleg
d_VDeleg_1134 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKey
d_VKey_1136 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1136 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyAddr
d_VKeyAddr_1138 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1138 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1140 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1140 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1142 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1142 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value
d_Value_1146 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1146 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1148 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1148 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Voter
d_Voter_1150 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1150 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Wdrl
d_Wdrl_1152 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Wdrl_1152 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.adHashingScheme
d_adHashingScheme_1156 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1156 ~v0 = du_adHashingScheme_1156
du_adHashingScheme_1156 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_adHashingScheme_1156
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addEpoch
d_addEpoch_1158 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1158 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addSlot
d_addSlot_1160 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1160 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addValue
d_addValue_1162 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1162 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_214
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.applyUpdate
d_applyUpdate_1164 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_1164 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2322 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_1170 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_1170 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin
d_coin_1172 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1172 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1174 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1174 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1176 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1176 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1178 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.crypto
d_crypto_1182 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1182 v0 = coe d_HSCrypto_16 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epoch
d_epoch_1184 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1184 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epochStructure
d_epochStructure_1186 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1186 ~v0 = du_epochStructure_1186
du_epochStructure_1186 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_epochStructure_1186 = coe du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.evalTimelock
d_evalTimelock_1200 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.firstSlot
d_firstSlot_1202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1202 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.gaData
d_gaData_1204 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 -> AgdaAny
d_gaData_1204 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.gaType
d_gaType_1206 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758
d_gaType_1206 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_782 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getDRepVote
d_getDRepVote_1208 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1208 ~v0 = du_getDRepVote_1208
du_getDRepVote_1208 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1208
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_888
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getScriptHash
d_getScriptHash_1210 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_60 -> Integer
d_getScriptHash_1210 ~v0 = du_getScriptHash_1210
du_getScriptHash_1210 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_60 -> Integer
du_getScriptHash_1210
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_228
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValue
d_getValue_1212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1212 ~v0 = du_getValue_1212
du_getValue_1212 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1212
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_3212
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValueʰ
d_getValue'688'_1214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1214 ~v0 = du_getValue'688'_1214
du_getValue'688'_1214 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1214
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_3228
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.globalConstants
d_globalConstants_1216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1216 ~v0 = du_globalConstants_1216
du_globalConstants_1216 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_globalConstants_1216 = coe du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govActionDepositOf
d_govActionDepositOf_1218 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_1218 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govParams
d_govParams_1220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504
d_govParams_1220 v0 = coe d_HsGovParams_650 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govStructure
d_govStructure_1222 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1222 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2450
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1224 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.inject
d_inject_1226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1226 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1228 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr?
d_isBootstrapAddr'63'_1230 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1230 ~v0 = du_isBootstrapAddr'63'_1230
du_isBootstrapAddr'63'_1230 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1230
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_182
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHash
d_isKeyHash_1232 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1232 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1234 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1234 ~v0 = du_isKeyHashObj_1234
du_isKeyHashObj_1234 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isKeyHashObj_1234
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_40
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1236 ~v0 = du_isKeyHashObj'7495'_1236
du_isKeyHashObj'7495'_1236 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1236
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_44
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyPair
d_isKeyPair_1238 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1238 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script
d_isP2Script_1240 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1240 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script?
d_isP2Script'63'_1242 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1242 ~v0 = du_isP2Script'63'_1242
du_isP2Script'63'_1242 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1242
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script'63'_3332
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScript
d_isScript_1244 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptAddr
d_isScriptAddr_1246 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1246 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptObj
d_isScriptObj_1248 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1248 ~v0 = du_isScriptObj_1248
du_isScriptObj_1248 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isScriptObj_1248
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_50
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptRwdAddr
d_isScriptRwdAddr_1250 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> ()
d_isScriptRwdAddr_1250 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned
d_isSigned_1252 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1252 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1254 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1254 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKey
d_isVKey_1256 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1258 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1258 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.khs
d_khs_1260 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1260 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.language
d_language_1262 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1262 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1264 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_3314
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.monoid
d_monoid_1266 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1266 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1036
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.netId
d_netId_1268 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1268 ~v0 = du_netId_1268
du_netId_1268 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1268 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.p1s
d_p1s_1272 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1272 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1274 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1274 ~v0 = du_paramsWF'45'elim_1274
du_paramsWF'45'elim_1274 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1274 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_548 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> ()
d_paramsWellFormed_1276 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.payCred
d_payCred_1278 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1278 ~v0 = du_payCred_1278
du_payCred_1278 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1278 = coe MAlonzo.Code.Ledger.Address.du_payCred_152
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pkk
d_pkk_1280 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1280 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.policies
d_policies_1282 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1282 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.positivePParams
d_positivePParams_1284 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> [Integer]
d_positivePParams_1284 ~v0 = du_positivePParams_1284
du_positivePParams_1284 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> [Integer]
du_positivePParams_1284
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_460
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppUpd
d_ppUpd_1286 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_1286 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2322 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF?
d_ppWF'63'_1288 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1288 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2322 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1290 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> ()
d_ppdWellFormed_1290 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.preoEpoch
d_preoEpoch_1292 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1292 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.proposedCC
d_proposedCC_1294 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_proposedCC_1294 ~v0 = du_proposedCC_1294
du_proposedCC_1294 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_proposedCC_1294
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_892
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ps
d_ps_1296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1296 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow
d_pvCanFollow_1298 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow?
d_pvCanFollow'63'_1300 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1300 ~v0 = du_pvCanFollow'63'_1300
du_pvCanFollow'63'_1300 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1300
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1424
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rawMonoid
d_rawMonoid_1302 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1302 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScriptCostStride>0
d_refScriptCostStride'62'0_1304 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1304 ~v0
  = du_refScriptCostStride'62'0_1304
du_refScriptCostStride'62'0_1304 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_1304 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_570 v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScripts
d_refScripts_1306 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1306 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_3252
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptOuts
d_scriptOuts_1308 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1308 ~v0 = du_scriptOuts_1308
du_scriptOuts_1308 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1308
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_3238
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptStructure
d_scriptStructure_1310 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1310 v0 = coe d_HSScriptStructure_308 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sign
d_sign_1312 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1312 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.size
d_size_1314 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1314 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_202
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.stakeCred
d_stakeCred_1316 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1316 ~v0 = du_stakeCred_1316
du_stakeCred_1316 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1316
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_154
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sucᵉ
d_suc'7497'_1318 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1318 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sumᵛ
d_sum'7515'_1320 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1320 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_232
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toData
d_toData_1322 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> AgdaAny -> Integer
d_toData_1322 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1324 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1324 ~v0 = du_tokenAlgebra_1324
du_tokenAlgebra_1324 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
du_tokenAlgebra_1324
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.treasuryOf
d_treasuryOf_1326 ::
  MAlonzo.Code.Ledger.PParams.T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_1326 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryOf_168 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txOutHash
d_txOutHash_1328 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1328 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_3218
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txcertsOf
d_txcertsOf_1330 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxcerts_3110 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcertsOf_1330 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcertsOf_3118 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txfeeOf
d_txfeeOf_1332 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxfee_3092 ->
  AgdaAny -> Integer
d_txfeeOf_1332 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfeeOf_3100 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txidBytes
d_txidBytes_1334 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1334 ~v0 v1 = du_txidBytes_1334 v1
du_txidBytes_1334 :: Integer -> Integer
du_txidBytes_1334 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txidOf
d_txidOf_1336 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxid_3146 ->
  AgdaAny -> Integer
d_txidOf_1336 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txidOf_3154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txinsScript
d_txinsScript_1338 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1338 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_3246
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txinsVKey
d_txinsVKey_1340 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1340 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_3232
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txpropOf
d_txpropOf_1342 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxprop_3128 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txpropOf_1342 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txpropOf_3136 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txscripts
d_txscripts_1344 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1344 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_3304
      (coe d_HSTransactionStructure_692 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.updateGroups
d_updateGroups_1346 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_1346 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1490
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2322 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validP1Script
d_validP1Script_1348 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  ()
d_validP1Script_1348 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validPlutusScript
d_validPlutusScript_1350 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  ()
d_validPlutusScript_1350 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ε
d_ε_1352 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1352 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2340 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1354 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1354 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1356 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1356 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_310
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1260 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1358 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1358 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.reserves
d_reserves_1366 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_1366 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.treasury
d_treasury_1368 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_1368 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.hash
d_hash_1372 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748 -> Integer
d_hash_1372 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_756 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.url
d_url_1374 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1374 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_754 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.net
d_net_1378 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_66 -> Integer
d_net_1378 v0 = coe MAlonzo.Code.Ledger.Address.d_net_74 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.pay
d_pay_1380 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_66 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1380 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_76 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.stake
d_stake_1382 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_66 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1382 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1386 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 -> Integer
d_attrsSize_1386 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_92 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.net
d_net_1388 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 -> Integer
d_net_1388 v0 = coe MAlonzo.Code.Ledger.Address.d_net_88 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.pay
d_pay_1390 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1390 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_90 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P1
d_P1_1400 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1400 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2a
d_P2a_1402 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1402 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_222 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2b
d_P2b_1404 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1404 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P3
d_P3_1406 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1406 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P4
d_P4_1408 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1408 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5a
d_P5a_1410 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1410 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5b
d_P5b_1412 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1412 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5c
d_P5c_1414 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1414 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5d
d_P5d_1416 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1416 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P6
d_P6_1418 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1418 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction.gaData
d_gaData_1422 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 -> AgdaAny
d_gaData_1422 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction.gaType
d_gaType_1424 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758
d_gaType_1424 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_782 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.action
d_action_1428 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_1428 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_874 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1430 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  Integer
d_expiresIn_1430 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_872 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.prevAction
d_prevAction_1432 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  AgdaAny
d_prevAction_1432 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_876 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1434 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_1434 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_870 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.votes
d_votes_1436 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1436 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_868 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1456 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1456 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1458 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 -> ()
d_UpdateT_1458 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1460 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_1460 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1462 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_1462 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1464 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1464 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1466 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 -> AgdaAny -> ()
d_ppdWellFormed_1466 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1468 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_1468 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1490
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.action
d_action_1472 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_1472 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_844 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.anchor
d_anchor_1474 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_1474 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_854 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.deposit
d_deposit_1476 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> Integer
d_deposit_1476 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_850 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.policy
d_policy_1478 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  Maybe Integer
d_policy_1478 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_848 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.prevAction
d_prevAction_1480 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> AgdaAny
d_prevAction_1480 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_846 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_1482 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_1482 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.anchor
d_anchor_1494 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_1494 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_828 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.gid
d_gid_1496 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1496 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_822 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.vote
d_vote_1498 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_804
d_vote_1498 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_826 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote.voter
d_voter_1500 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1500 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_824 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_1504 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1512 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1512 ~v0 = du_DecEq'45'GovActionType_1512
du_DecEq'45'GovActionType_1512 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1512
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovActionType_878
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1514 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1514 ~v0 = du_DecEq'45'GovRole_1514
du_DecEq'45'GovRole_1514 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1514
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_880
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1516 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1516 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_884
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2450 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1518 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1518 ~v0 = du_DecEq'45'Vote_1518
du_DecEq'45'Vote_1518 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1518
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_882
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_1520 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionData
d_GovActionData_1522 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_GovActionData_1522 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_1524 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1524 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_1526 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovActionType
d_GovActionType_1528 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_1530 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_1532 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_1534 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1536 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1536 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1536
du_HasCast'45'GovAction'45'Sigma_1536 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1536
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_788
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_1538 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1538 ~v0 = du_HasCast'45'GovVote_1538
du_HasCast'45'GovVote_1538 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1538
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'GovVote_886
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1540 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1540 ~v0
  = du_HasCast'45'HashProtected_1540
du_HasCast'45'HashProtected_1540 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1540 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected_800
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1542 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1542
du_HasCast'45'HashProtected'45'MaybeScriptHash_1542 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1542
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_802
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_1544 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1544 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_1548 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_NeedsHash_1548 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_1562 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Vote
d_Vote_1564 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.Voter
d_Voter_1566 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1566 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.gaData
d_gaData_1574 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 -> AgdaAny
d_gaData_1574 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.gaType
d_gaType_1576 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758
d_gaType_1576 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_782 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.getDRepVote
d_getDRepVote_1578 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1578 ~v0 = du_getDRepVote_1578
du_getDRepVote_1578 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1578
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_888
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovernanceActions.proposedCC
d_proposedCC_1584 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_proposedCC_1584 ~v0 = du_proposedCC_1584
du_proposedCC_1584 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_proposedCC_1584
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_892
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_1608 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26 ->
  AgdaAny -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_CredentialOf_1608 v0
  = coe MAlonzo.Code.Ledger.Address.d_CredentialOf_34 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1612 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108 ->
  AgdaAny -> Integer
d_NetworkIdOf_1612 v0
  = coe MAlonzo.Code.Ledger.Address.d_NetworkIdOf_116 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_1616 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_1616 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_HasTxBody_3074 ->
  AgdaAny -> MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_TxBodyOf_1620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_TxBodyOf_3082 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_HasUTxO_2974 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1624 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_UTxOOf_2982 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_1628 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_1628 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_1632 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_1632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastreasury.treasuryOf
d_treasuryOf_1636 ::
  MAlonzo.Code.Ledger.PParams.T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_1636 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryOf_168 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxcerts.txcertsOf
d_txcertsOf_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxcerts_3110 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcertsOf_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcertsOf_3118 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxfee.txfeeOf
d_txfeeOf_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxfee_3092 ->
  AgdaAny -> Integer
d_txfeeOf_1644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfeeOf_3100 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxid.txidOf
d_txidOf_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxid_3146 ->
  AgdaAny -> Integer
d_txidOf_1648 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txidOf_3154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hastxprop.txpropOf
d_txpropOf_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_Hastxprop_3128 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txpropOf_1652 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txpropOf_3136 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_1656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1656 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1658 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1660 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1662 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_1664 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1664 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_1668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1668 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_1670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1670 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1672 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1674 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1674 ~v0 = du_isMagmaIsomorphism_1674
du_isMagmaIsomorphism_1674 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1674 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1676 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1676 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1676 v2
du_isMagmaMonomorphism_1676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1676 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1678 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1680 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1680 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1682 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1682 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1684 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1684 ~v0 ~v1 v2 = du_isRelIsomorphism_1684 v2
du_isRelIsomorphism_1684 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1684 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1686 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1686 ~v0 ~v1 v2 = du_isRelMonomorphism_1686 v2
du_isRelMonomorphism_1686 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1686 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_1688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1688 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1690 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1690 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_1692 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1692 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_1696 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1696 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_1698 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1698 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1700 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1700 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1702 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1702 ~v0 = du_isMagmaMonomorphism_1702
du_isMagmaMonomorphism_1702 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1702 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1704 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1704 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1706 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1706 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1708 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1708 ~v0 ~v1 v2 = du_isRelMonomorphism_1708 v2
du_isRelMonomorphism_1708 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1708 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1710 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1710 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_1712 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1712 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1716 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1716 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1718 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1718 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1720 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_1722 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1722 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1724 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1724 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_1740 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_Emax_1740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_1742 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_1742 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_1744 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1744 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_1746 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_1746 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1748 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_1748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_1750 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1752 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_1752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_1754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_1754 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_1756 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_1758 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepActivity_1758 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_1760 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_1760 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_1762 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_1764 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_1766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_1766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_1768 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_1768 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_1772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_1772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1774 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_1774 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_1776 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1778 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_1778 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_1780 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1782 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_1784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_1786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1788 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_1790 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_1790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_1794 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_1794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_1796 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_1796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_1800 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_1802 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1802 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1804 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1804 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_1806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_1806 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_1808 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_1812 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> ()
d_UpdateT_1812 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_1814 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_1814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_1816 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1818 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> AgdaAny -> ()
d_ppdWellFormed_1818 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_1820 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_1820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1490 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__1824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1824 ~v0 = du__'63''8599'__1824
du__'63''8599'__1824 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1824 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1216 v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1826 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1826 v0
  = let v1 = d_HSTransactionStructure_692 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1418
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1874 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1828 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1830 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyPParamsUpdate_1830 ~v0 = du_applyPParamsUpdate_1830
du_applyPParamsUpdate_1830 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_applyPParamsUpdate_1830
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1264
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1832 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_modifiedUpdateGroups_1832 ~v0 = du_modifiedUpdateGroups_1832
du_modifiedUpdateGroups_1832 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
du_modifiedUpdateGroups_1832
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1200
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1834 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesEconomicGroup_1834 ~v0 = du_modifiesEconomicGroup_1834
du_modifiesEconomicGroup_1834 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesEconomicGroup_1834
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_896
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1836 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesGovernanceGroup_1836 ~v0
  = du_modifiesGovernanceGroup_1836
du_modifiesGovernanceGroup_1836 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesGovernanceGroup_1836
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_1048
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1838 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesNetworkGroup_1838 ~v0 = du_modifiesNetworkGroup_1838
du_modifiesNetworkGroup_1838 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesNetworkGroup_1838
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_820
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1840 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesSecurityGroup_1840 ~v0 = du_modifiesSecurityGroup_1840
du_modifiesSecurityGroup_1840 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesSecurityGroup_1840
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesSecurityGroup_1124
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1842 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesTechnicalGroup_1842 ~v0 = du_modifiesTechnicalGroup_1842
du_modifiesTechnicalGroup_1842 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesTechnicalGroup_1842
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_972
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1844 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> ()
d_paramsUpdateWellFormed_1844 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1846 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1846 ~v0
  = du_paramsUpdateWellFormed'63'_1846
du_paramsUpdateWellFormed'63'_1846 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1846
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_816
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_1848 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1848 ~v0 = du_'8801''45'update_1848
du_'8801''45'update_1848 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_1848 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1230 v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1852 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_Emax_1852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_710 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_1854 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_a_1854 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_680 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1856 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_708 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_1858 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_b_1858 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_682 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1860 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_1860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_732 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1862 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_1862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_730 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1864 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_1864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1866 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_1866 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_714 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1868 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_716 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1870 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_drepActivity_1870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_728 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1872 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_1872 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_726 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1874 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_1874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_718 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_1876 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_1878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_722 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1880 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_1880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_684 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1882 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1882 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_676 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_1884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_664 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1886 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_1886 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1888 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_1888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_668 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1890 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_1890 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1892 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_1892 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1894 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_674 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_1896 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_666 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_1898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1900 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_1902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_706 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_688 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_nopt_1906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_712 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_1908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_686 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_1910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_720 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_1912 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1914 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_678 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1916 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_1918 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_702 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_690 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1924 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1924 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_1926 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1926 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T
d_T_1928 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1928 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.THash
d_THash_1930 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1930 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_1932 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1932 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Datum
d_Datum_1934 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1934 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1936 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1936 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1938 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1938 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1940 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1940 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1942 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1942 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1944 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1944 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1946 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1946 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_1948 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1948 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1950 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1950 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1952 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1952 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_1954 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1954 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1956 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1956 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_1958 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1958 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_1960 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1960 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_1962 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1962 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_1964 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1964 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_1966 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1966 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_1968 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1968 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_1970 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1970 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_1972 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1972 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1974 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1974 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1976 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1976 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_1978 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1978 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_1980 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1980 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_1982 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1982 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_1984 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1984 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_1986 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1986 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_1988 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1988 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_1990 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1990 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q1
d_Q1_1994 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1994 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_252 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_1996 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1996 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_254 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_1998 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1998 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q4
d_Q4_2000 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2000 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q5
d_Q5_2002 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2002 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5_260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.net
d_net_2006 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> Integer
d_net_2006 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.stake
d_stake_2008 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2008 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2012 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2012 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2014 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_2014 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T
d_T_2016 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_2016 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.THash
d_THash_2018 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_2018 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2020 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2020 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Datum
d_Datum_2022 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_2022 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2024 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2024 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2026 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2026 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2028 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2028 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2030 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2030 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2032 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2032 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2034 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2034 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2036 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2036 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2038 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2038 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2040 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2040 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2042 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2042 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2044 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2044 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2046 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_2046 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2048 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2048 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2050 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2050 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2052 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2052 ~v0 = du_Hashable'45'Script_2052
du_Hashable'45'Script_2052 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_2052
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2054 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_2054 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Language
d_Language_2056 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_2056 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2058 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_2058 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2060 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_2060 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2062 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_2062 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2064 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_2064 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2066 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_2066 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Prices
d_Prices_2068 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_2068 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2070 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_2070 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Script
d_Script_2072 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_2072 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2074 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2074 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2076 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2076 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2078 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2078 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2080 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2080 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2082 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2082 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2084 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2084 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2086 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2086 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.language
d_language_2088 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_2088 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_2090 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2090 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_2092 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2092 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toData
d_toData_2094 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_2094 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2096 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2096 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2098 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2098 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2116 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2118 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2120 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2122 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2124 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2126 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2128 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2130 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value
d_Value_2132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2134 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2136 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2136 ~v0 = du_addValue_2136
du_addValue_2136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_2136
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_214
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin
d_coin_2138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2138 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2140 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2140 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2142 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_208
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2144 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.inject
d_inject_2146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2146 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2148 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.policies
d_policies_2150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2150 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2152 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.size
d_size_2154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2154 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2156 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2156 ~v0 = du_sum'7515'_2156
du_sum'7515'_2156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2156
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.ε
d_ε_2158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2158 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2162 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2168 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2170 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2174 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2180 ~v0 = du_isMagmaIsomorphism_2180
du_isMagmaIsomorphism_2180 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2180 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2182 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2182 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2182 v2
du_isMagmaMonomorphism_2182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2190 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2190 ~v0 ~v1 v2 = du_isRelIsomorphism_2190 v2
du_isRelIsomorphism_2190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2192 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2192 ~v0 ~v1 v2 = du_isRelMonomorphism_2192 v2
du_isRelMonomorphism_2192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2192 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2196 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2198 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2202 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2204 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2206 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2208 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2208 ~v0 = du_isMagmaMonomorphism_2208
du_isMagmaMonomorphism_2208 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2208 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2210 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2214 ~v0 ~v1 v2 = du_isRelMonomorphism_2214 v2
du_isRelMonomorphism_2214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2214 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2216 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2218 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2218 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.body
d_body_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_body_2222 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.isValid
d_isValid_2224 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Bool
d_isValid_2224 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.txAD
d_txAD_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Maybe Integer
d_txAD_2226 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3196 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.wits
d_wits_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160
d_wits_2228 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.collateral
d_collateral_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2232 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_3064 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.curTreasury
d_curTreasury_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe Integer
d_curTreasury_2234 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_3058 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.mint
d_mint_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_mint_2236 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_3038 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.refInputs
d_refInputs_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2238 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_3032 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.reqSigHash
d_reqSigHash_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> [Integer]
d_reqSigHash_2240 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_3066 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.scriptIntHash
d_scriptIntHash_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe Integer
d_scriptIntHash_2242 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_3068 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txADhash
d_txADhash_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe Integer
d_txADhash_2244 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_3054 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Maybe Integer
d_txNetworkId_2246 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_3056 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txcerts
d_txcerts_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_2248 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_3042 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txdonation
d_txdonation_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txdonation_2250 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_3050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txfee
d_txfee_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txfee_2252 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_3036 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txid
d_txid_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txid_2254 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_3062 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txins
d_txins_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2256 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_3030 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txouts
d_txouts_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2258 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_3034 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txprop
d_txprop_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txprop_2260 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_3048 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txsize
d_txsize_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 -> Integer
d_txsize_2262 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_3060 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txup
d_txup_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2264 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_3052 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txvldt
d_txvldt_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2266 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_3040 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txvote
d_txvote_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_txvote_2268 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_3046 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txwdrls
d_txwdrls_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2270 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_3044 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scripts
d_scripts_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2274 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_3172 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336]
d_scriptsP1_2276 ~v0 = du_scriptsP1_2276
du_scriptsP1_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336]
du_scriptsP1_2276
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_3178
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txdats
d_txdats_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2278 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_3174 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2280 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_3176 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2282 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_3170 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2318 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2320 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2320 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2322 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2324 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2326 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2328 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv
d_CertEnv_2338 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState
d_CertState_2340 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertStateOf
d_CertStateOf_2342 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1212 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_CertStateOf_2342 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DCert
d_DCert_2346 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DReps
d_DReps_2356 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_2356 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DRepsOf
d_DRepsOf_2358 ::
  MAlonzo.Code.Ledger.Certs.T_HasDReps_960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2358 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DRepsOf_968 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState
d_DState_2360 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DStateOf
d_DStateOf_2362 ::
  MAlonzo.Code.Ledger.Certs.T_HasDState_1096 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_DState_1076
d_DStateOf_2362 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DStateOf_1104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2364 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2364 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_974
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2450
         (coe d_HSTransactionStructure_692 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv
d_DelegEnv_2366 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositPurpose
d_DepositPurpose_2368 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Deposits
d_Deposits_2370 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2370 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositsOf
d_DepositsOf_2372 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2372 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_932 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState
d_GState_2380 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GStateOf
d_GStateOf_2382 ::
  MAlonzo.Code.Ledger.Certs.T_HasGState_1176 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_GState_1160
d_GStateOf_2382 v0
  = coe MAlonzo.Code.Ledger.Certs.d_GStateOf_1184 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovCertEnv
d_GovCertEnv_2386 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovCertEnv_2386 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_2388 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2388 ~v0 = du_HasCast'45'CertEnv_2388
du_HasCast'45'CertEnv_2388 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2388
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1262
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_2390 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2390 ~v0 = du_HasCast'45'CertState_2390
du_HasCast'45'CertState_2390 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2390
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertState_1270
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_2392 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2392 ~v0 = du_HasCast'45'DState_2392
du_HasCast'45'DState_2392 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2392
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'DState_1264
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2394 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2394 ~v0 = du_HasCast'45'DelegEnv_2394
du_HasCast'45'DelegEnv_2394 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2394
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'DelegEnv_1272
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_2396 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2396 ~v0 = du_HasCast'45'GState_2396
du_HasCast'45'GState_2396 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2396
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'GState_1268
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_2398 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2398 ~v0 = du_HasCast'45'PState_2398
du_HasCast'45'PState_2398 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2398
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'PState_1266
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCertState
d_HasCertState_2400 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2402 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2402 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_1260
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2450
         (coe d_HSTransactionStructure_692 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps
d_HasDReps_2404 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_2406 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasDReps_960
d_HasDReps'45'CertState_2406 ~v0 = du_HasDReps'45'CertState_2406
du_HasDReps'45'CertState_2406 ::
  MAlonzo.Code.Ledger.Certs.T_HasDReps_960
du_HasDReps'45'CertState_2406
  = coe MAlonzo.Code.Ledger.Certs.du_HasDReps'45'CertState_1234
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_2408 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasDReps_960
d_HasDReps'45'GState_2408 ~v0 = du_HasDReps'45'GState_2408
du_HasDReps'45'GState_2408 ::
  MAlonzo.Code.Ledger.Certs.T_HasDReps_960
du_HasDReps'45'GState_2408
  = coe MAlonzo.Code.Ledger.Certs.du_HasDReps'45'GState_1190
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState
d_HasDState_2410 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_2412 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasDState_1096
d_HasDState'45'CertState_2412 ~v0 = du_HasDState'45'CertState_2412
du_HasDState'45'CertState_2412 ::
  MAlonzo.Code.Ledger.Certs.T_HasDState_1096
du_HasDState'45'CertState_2412
  = coe MAlonzo.Code.Ledger.Certs.du_HasDState'45'CertState_1226
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDeposits
d_HasDeposits_2414 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState
d_HasGState_2416 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_2418 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasGState_1176
d_HasGState'45'CertState_2418 ~v0 = du_HasGState'45'CertState_2418
du_HasGState'45'CertState_2418 ::
  MAlonzo.Code.Ledger.Certs.T_HasGState_1176
du_HasGState'45'CertState_2418
  = coe MAlonzo.Code.Ledger.Certs.du_HasGState'45'CertState_1230
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState
d_HasPState_2420 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_2422 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasPState_1146
d_HasPState'45'CertState_2422 ~v0 = du_HasPState'45'CertState_2422
du_HasPState'45'CertState_2422 ::
  MAlonzo.Code.Ledger.Certs.T_HasPState_1146
du_HasPState'45'CertState_2422
  = coe MAlonzo.Code.Ledger.Certs.du_HasPState'45'CertState_1228
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards
d_HasRewards_2424 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_2426 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasRewards_942
d_HasRewards'45'CertState_2426 ~v0
  = du_HasRewards'45'CertState_2426
du_HasRewards'45'CertState_2426 ::
  MAlonzo.Code.Ledger.Certs.T_HasRewards_942
du_HasRewards'45'CertState_2426
  = coe MAlonzo.Code.Ledger.Certs.du_HasRewards'45'CertState_1232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_2428 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasRewards_942
d_HasRewards'45'DState_2428 ~v0 = du_HasRewards'45'DState_2428
du_HasRewards'45'DState_2428 ::
  MAlonzo.Code.Ledger.Certs.T_HasRewards_942
du_HasRewards'45'DState_2428
  = coe MAlonzo.Code.Ledger.Certs.du_HasRewards'45'DState_1130
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVDelegs
d_HasVDelegs_2430 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVDelegs-DState
d_HasVDelegs'45'DState_2432 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasVDelegs_1114
d_HasVDelegs'45'DState_2432 ~v0 = du_HasVDelegs'45'DState_2432
du_HasVDelegs'45'DState_2432 ::
  MAlonzo.Code.Ledger.Certs.T_HasVDelegs_1114
du_HasVDelegs'45'DState_2432
  = coe MAlonzo.Code.Ledger.Certs.du_HasVDelegs'45'DState_1128
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWdrls
d_HasWdrls_2434 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWdrls-CertEnv
d_HasWdrls'45'CertEnv_2436 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
d_HasWdrls'45'CertEnv_2436 ~v0 = du_HasWdrls'45'CertEnv_2436
du_HasWdrls'45'CertEnv_2436 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
du_HasWdrls'45'CertEnv_2436
  = coe MAlonzo.Code.Ledger.Certs.du_HasWdrls'45'CertEnv_1074
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState
d_PState_2442 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PStateOf
d_PStateOf_2444 ::
  MAlonzo.Code.Ledger.Certs.T_HasPState_1146 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_PState_1132
d_PStateOf_2444 v0
  = coe MAlonzo.Code.Ledger.Certs.d_PStateOf_1154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolEnv
d_PoolEnv_2448 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2448 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams
d_PoolParams_2450 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Rewards
d_Rewards_2452 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_2452 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardsOf
d_RewardsOf_2454 ::
  MAlonzo.Code.Ledger.Certs.T_HasRewards_942 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2454 v0
  = coe MAlonzo.Code.Ledger.Certs.d_RewardsOf_950 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cwitness
d_cwitness_2458 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2458 ~v0 = du_cwitness_2458
du_cwitness_2458 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_998 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_cwitness_2458 = coe MAlonzo.Code.Ledger.Certs.du_cwitness_1016
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rewardsBalance
d_rewardsBalance_2474 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DState_1076 -> Integer
d_rewardsBalance_2474 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewardsBalance_1254
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2450
         (coe d_HSTransactionStructure_692 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.voteDelegsOf
d_voteDelegsOf_2476 ::
  MAlonzo.Code.Ledger.Certs.T_HasVDelegs_1114 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_2476 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegsOf_1122 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.wdrlsOf
d_wdrlsOf_2478 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2478 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrlsOf_1068 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_2522 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_2522 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_1054 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.epoch
d_epoch_2524 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 -> Integer
d_epoch_2524 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_1046 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.pp
d_pp_2526 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pp_2526 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_1048 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.votes
d_votes_2528 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_votes_2528 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_1050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.wdrls
d_wdrls_2530 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2530 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_1052 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.dState
d_dState_2534 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.Certs.T_DState_1076
d_dState_2534 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_1200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.gState
d_gState_2536 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.Certs.T_GState_1160
d_gState_2536 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_1204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.pState
d_pState_2538 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_1192 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1132
d_pState_2538 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_1202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.rewards
d_rewards_2560 ::
  MAlonzo.Code.Ledger.Certs.T_DState_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2560 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_1088 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_2562 ::
  MAlonzo.Code.Ledger.Certs.T_DState_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2562 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_1086 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.voteDelegs
d_voteDelegs_2564 ::
  MAlonzo.Code.Ledger.Certs.T_DState_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2564 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_1084 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.delegatees
d_delegatees_2568 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_1236 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_2568 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_1248 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pools
d_pools_2570 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_1236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2570 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_1246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pparams
d_pparams_2572 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_1236 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2572 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_1244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_2586 ::
  MAlonzo.Code.Ledger.Certs.T_GState_1160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2586 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_1168 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.dreps
d_dreps_2588 ::
  MAlonzo.Code.Ledger.Certs.T_GState_1160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2588 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_1166 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_2592 ::
  MAlonzo.Code.Ledger.Certs.T_HasCertState_1212 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_CertState_1192
d_CertStateOf_2592 v0
  = coe MAlonzo.Code.Ledger.Certs.d_CertStateOf_1220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps.DRepsOf
d_DRepsOf_2596 ::
  MAlonzo.Code.Ledger.Certs.T_HasDReps_960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2596 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DRepsOf_968 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState.DStateOf
d_DStateOf_2600 ::
  MAlonzo.Code.Ledger.Certs.T_HasDState_1096 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_DState_1076
d_DStateOf_2600 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DStateOf_1104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_2604 ::
  MAlonzo.Code.Ledger.Certs.T_HasDeposits_924 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2604 v0
  = coe MAlonzo.Code.Ledger.Certs.d_DepositsOf_932 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState.GStateOf
d_GStateOf_2608 ::
  MAlonzo.Code.Ledger.Certs.T_HasGState_1176 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_GState_1160
d_GStateOf_2608 v0
  = coe MAlonzo.Code.Ledger.Certs.d_GStateOf_1184 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState.PStateOf
d_PStateOf_2612 ::
  MAlonzo.Code.Ledger.Certs.T_HasPState_1146 ->
  AgdaAny -> MAlonzo.Code.Ledger.Certs.T_PState_1132
d_PStateOf_2612 v0
  = coe MAlonzo.Code.Ledger.Certs.d_PStateOf_1154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_2616 ::
  MAlonzo.Code.Ledger.Certs.T_HasRewards_942 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2616 v0
  = coe MAlonzo.Code.Ledger.Certs.d_RewardsOf_950 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVDelegs.voteDelegsOf
d_voteDelegsOf_2620 ::
  MAlonzo.Code.Ledger.Certs.T_HasVDelegs_1114 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_2620 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegsOf_1122 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWdrls.wdrlsOf
d_wdrlsOf_2624 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2624 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrlsOf_1068 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.pools
d_pools_2628 ::
  MAlonzo.Code.Ledger.Certs.T_PState_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2628 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_1138 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.retiring
d_retiring_2630 ::
  MAlonzo.Code.Ledger.Certs.T_PState_1132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2630 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_1140 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.cost
d_cost_2634 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_976 -> Integer
d_cost_2634 v0 = coe MAlonzo.Code.Ledger.Certs.d_cost_990 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.margin
d_margin_2636 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_976 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2636 v0
  = coe MAlonzo.Code.Ledger.Certs.d_margin_992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.owners
d_owners_2638 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_976 -> [Integer]
d_owners_2638 v0
  = coe MAlonzo.Code.Ledger.Certs.d_owners_988 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.pledge
d_pledge_2640 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_976 -> Integer
d_pledge_2640 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pledge_994 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolParams.rewardAccount
d_rewardAccount_2642 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_976 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAccount_2642 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAccount_996 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_2646 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_2652 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1956
d_indexOfImp_2652 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1998 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.runPLCScript
d_runPLCScript_2654 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer] -> Bool
d_runPLCScript_2654 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_2000 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_2656 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2656 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_2002 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.serSize
d_serSize_2658 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  Integer -> Integer
d_serSize_2658 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1996 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_2660 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2660 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1994 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_2676 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982
d_HSAbstractFunctions_2676 ~v0 = du_HSAbstractFunctions_2676
du_HSAbstractFunctions_2676 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982
du_HSAbstractFunctions_2676
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_4589
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> 0 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_4297
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
