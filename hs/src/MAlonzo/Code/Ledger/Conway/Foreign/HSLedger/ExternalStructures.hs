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
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Integer.Base
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
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSGlobalConstants
d_HSGlobalConstants_12 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_HSGlobalConstants_12 ~v0 = du_HSGlobalConstants_12
du_HSGlobalConstants_12 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_HSGlobalConstants_12
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.C_constructor_376
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_SlotsPerEpoch'7580'_46
      (coe
         MAlonzo.Code.Data.Nat.Base.C_constructor_120
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ActiveSlotCoeff_48
         erased)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_constructor_142
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_RandomnessStabilisationWindow'7580'_52
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_StabilityWindow'7580'_50
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_MaxLovelaceSupply'7580'_54
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Quorum_56
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_NetworkId_58
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSEpochStructure
d_HSEpochStructure_14 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_HSEpochStructure_14 ~v0 = du_HSEpochStructure_14
du_HSEpochStructure_14 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_HSEpochStructure_14
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe du_HSGlobalConstants_12)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSCryptoStructure
d_HSCryptoStructure_16 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_HSCryptoStructure_16 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.C_constructor_224
      (d_HSPKKScheme_26 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.C_mkIsHashableSet_34
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_DecEq'45'HSVKey_26
         (coe
            MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
            (coe
               (\ v1 ->
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkStoredHash_22
                    (coe v1)))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPKKScheme
d_HSPKKScheme_26 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_HSPKKScheme_26 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.C_constructor_138
      (\ v1 v2 -> 0 :: Integer)
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_extIsSigned_12
                 v0
                 (MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_hvkVKey_20
                    (coe v1))
                 v2 v3)
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
      (coe
         MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
         ("isSigned-correct evaluated" :: Data.Text.Text))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_48 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_64 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__98 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_100 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_100 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_106 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_110 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_110 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_112 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_114 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_114 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_116 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_118 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_120 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_120 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_126 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_126 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_128 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_128 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_130 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_132 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_134 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_134 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_136 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_136 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_138 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_138 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_140 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_140 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_142 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_142 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_144 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_144 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_148 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_148 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_150 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_150 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_152 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_160 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_160 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_162 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  () -> AgdaAny -> AgdaAny
d_toData_162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_164 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_164 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_242 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_256 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_258 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
d_ps_258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_300 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.T_Timelock_104 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_300 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.d_Dec'45'evalTimelock_162
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_302 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.d_DecEq'45'Timelock_118
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Timelock
d_Timelock_316 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.evalTimelock
d_evalTimelock_330 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_362 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_380
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_364 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock
d_HSTimelock_368 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_372 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSPlutusScript_372 ~v0
  = du_Hashable'45'HSPlutusScript_372
du_Hashable'45'HSPlutusScript_372 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSPlutusScript_372
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_394
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_374 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_374 ~v0 = du_Hashable'45'HSTimelock_374
du_Hashable'45'HSTimelock_374 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSTimelock_374
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_378
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_378 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_P1ScriptStructure'45'HTL_378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_396
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  Integer
d_psScriptHash_382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  Integer
d_psScriptSize_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.timelock
d_timelock_388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.T_Timelock_104
d_timelock_388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  Integer
d_tlScriptHash_390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  Integer
d_tlScriptSize_392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSScriptStructure
d_HSScriptStructure_394 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280
d_HSScriptStructure_394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.C_constructor_430
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_396
         (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14))
      (\ v1 v2 v3 v4 v5 -> coe du_hashRespectsUnion_406 v4 v5)
      (coe du_HSP2ScriptStructure_416)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_406 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_406 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hashRespectsUnion_406 v4 v5
du_hashRespectsUnion_406 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_hashRespectsUnion_406 v0 v1
  = coe
      MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
                -> coe MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18 v0 v3
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
                -> coe MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18 v1 v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_416 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
d_HSP2ScriptStructure_416 ~v0 = du_HSP2ScriptStructure_416
du_HSP2ScriptStructure_416 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
du_HSP2ScriptStructure_416
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.C_constructor_278
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Data'688'_80
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ExUnit'45'CommutativeMonoid_88
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_394)
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Show'45'ExUnits_92
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 ->
         coe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.du_toData_84)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_440 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_464 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_494 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  ()
d_paramsWellFormed_494 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466
d_ppUpd_512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_Emax_542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_548 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_552 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepActivity_560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  ()
d_UpdateT_614 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_628 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1412
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
         (coe du_HSGlobalConstants_12))
      (coe d_HSScriptStructure_394 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_630 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_634 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyPParamsUpdate_634 ~v0 = du_applyPParamsUpdate_634
du_applyPParamsUpdate_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_applyPParamsUpdate_634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1258
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_656 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_Emax_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_658 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_a_658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_660 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_700 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_b_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_674 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_664 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_ccMaxTermLength_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_724
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_666 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_ccMinSize_666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_coinsPerUTxOByte_668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_670 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_collateralPercentage_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_drepActivity_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_drepDeposit_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_govActionDeposit_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_govActionLifetime_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_keyDeposit_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_676
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_668
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxBlockSize_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_656
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxCollateralInputs_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_664
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_692 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxHeaderSize_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_660
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_696 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxRefScriptSizePerTx_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_666
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_700 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxTxSize_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_658
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxValSize_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_662
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_706 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_minUTxOValue_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_nopt_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_poolDeposit_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_678
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_718 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_722 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_694
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HsGovParams
d_HsGovParams_732 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500
d_HsGovParams_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1534
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1498
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1258)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1194)
         (\ v1 -> coe du_ppWF_742 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1412
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
            (coe du_HSGlobalConstants_12))
         (coe d_HSScriptStructure_394 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF
d_ppWF_742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_742 ~v0 v1 = du_ppWF_742 v1
du_ppWF_742 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_742 v0
  = let v1
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
                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_656
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_658
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_660
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_662
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_684
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_678
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_706
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_724
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_714
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_716
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_718
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
d_trustMe_758
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe
d_trustMe_768
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_774 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_774 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.C_constructor_3326
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
      (coe du_HSGlobalConstants_12) (d_HSCryptoStructure_16 (coe v0))
      (coe du_HSEpochStructure_14) (d_HSScriptStructure_394 (coe v0))
      (d_HsGovParams_732 (coe v0))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
      (\ v1 -> v1)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ_
d__'43''7497'__778 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__778 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ'_
d__'43''7497'''__780 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__780 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._∙_
d__'8729'__782 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__782 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≈_
d__'8776'__784 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__784 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≤ᵗ_
d__'8804''7511'__786 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__786 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≥ᵉ_
d__'8805''7497'__788 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__788 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_790 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_790 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_792 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_792 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt
d_Acnt_794 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_798 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_798 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Addr
d_Addr_800 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_800 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor
d_Anchor_802 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_806 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_806 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr
d_BaseAddr_808 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_812 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_818 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_444 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CostModel
d_CostModel_822 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_822 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Credential
d_Credential_824 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CredentialOf
d_CredentialOf_826 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_826 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T
d_T_830 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_830 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_832 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_832 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dataʰ
d_Data'688'_834 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_834 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Datum
d_Datum_836 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_836 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_838 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_838 ~v0 = du_Dec'45'isScript_838
du_Dec'45'isScript_838 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_838
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_840 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_840 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_842 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_842 ~v0 = du_Dec'45'isVKey_842
du_Dec'45'isVKey_842 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_842
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_844 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_844 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_846 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_846 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_848 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_848 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_850 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_850 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_852 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_852 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_854 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_854 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_856 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_856 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_858 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_858 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_860 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_860 ~v0 = du_DecEq'45'DrepThresholds_860
du_DecEq'45'DrepThresholds_860 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_860
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_568
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_862 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_862 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_864 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_864 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_866 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_866 ~v0 = du_DecEq'45'GovActionType_866
du_DecEq'45'GovActionType_866 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_866
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovActionType_1104
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_868 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_868 ~v0 = du_DecEq'45'GovRole_868
du_DecEq'45'GovRole_868 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_868
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovRole_1106
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_870 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_870 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'GovVoter_1112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_872 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_872 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_874 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_874 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_876 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_876 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_878 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_878 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_880 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_880 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'P1Script_124
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_882 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_882 ~v0 = du_DecEq'45'PParamGroup_882
du_DecEq'45'PParamGroup_882 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_574
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_884 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_884 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_572
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_886 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_886 ~v0 = du_DecEq'45'PoolThresholds_886
du_DecEq'45'PoolThresholds_886 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_886
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_570
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_888 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_890 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_890 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_892 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_892 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_894 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_896 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_896 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_898 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_900 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_902 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_904 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_904 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_906 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_906 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_908 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_910 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_910 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1532
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_912 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_912 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_914 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_914 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_916 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_916 ~v0 = du_DecEq'45'Vote_916
du_DecEq'45'Vote_916 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_916
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_918 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_918 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds
d_DrepThresholds_920 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Epoch
d_Epoch_926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_926 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_928 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_928 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnits
d_ExUnits_930 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_930 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction
d_GovAction_932 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionData
d_GovActionData_936 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_GovActionData_936 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionID
d_GovActionID_938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_938 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionOf
d_GovActionOf_940 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_GovActionOf_940 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState
d_GovActionState_942 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionType
d_GovActionType_946 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_948 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_GovActionTypeOf_948 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionTypeOf_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_950 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal
d_GovProposal_954 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRole
d_GovRole_958 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_GovRoleCredential_960 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote
d_GovVote_962 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVoter
d_GovVoter_966 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVoterOf
d_GovVoterOf_970 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_GovVoterOf_970 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovVoterOf_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVotes
d_GovVotes_972 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_978 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_982 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_982 ~v0 = du_HasCast'45'Acnt_982
du_HasCast'45'Acnt_982 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_982
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_194
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_984 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_984 ~v0
  = du_HasCast'45'GovAction'45'Sigma_984
du_HasCast'45'GovAction'45'Sigma_984 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_984
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_860
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_986 ~v0 = du_HasCast'45'GovVote_986
du_HasCast'45'GovVote_986 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_986
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovVote_1210
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_988 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_988 ~v0
  = du_HasCast'45'HashProtected_988
du_HasCast'45'HashProtected_988 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_988 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected_972
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_990 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_990 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_990
du_HasCast'45'HashProtected'45'MaybeScriptHash_990 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_990
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_974
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_992 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_992 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_HasCoin'45'TxOut_3324
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential
d_HasCredential_994 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_998 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_998 ~v0
  = du_HasCredential'45'RwdAddr_998
du_HasCredential'45'RwdAddr_998 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RwdAddr_998
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_164
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovAction
d_HasGovAction_1000 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1004 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovActionState_1004 ~v0
  = du_HasGovAction'45'GovActionState_1004
du_HasGovAction'45'GovActionState_1004 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
du_HasGovAction'45'GovActionState_1004
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1098
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1006 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovProposal_1006 ~v0
  = du_HasGovAction'45'GovProposal_1006
du_HasGovAction'45'GovProposal_1006 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
du_HasGovAction'45'GovProposal_1006
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1096
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType
d_HasGovActionType_1008 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1012 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovAction_1012 ~v0
  = du_HasGovActionType'45'GovAction_1012
du_HasGovActionType'45'GovAction_1012 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovAction_1012
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_858
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1014 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovActionState_1014 ~v0
  = du_HasGovActionType'45'GovActionState_1014
du_HasGovActionType'45'GovActionState_1014 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovActionState_1014
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1102
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1016 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovProposal_1016 ~v0
  = du_HasGovActionType'45'GovProposal_1016
du_HasGovActionType'45'GovProposal_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovProposal_1016
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1100
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovVoter
d_HasGovVoter_1018 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1022 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034
d_HasGovVoter'45'GovVote_1022 ~v0 = du_HasGovVoter'45'GovVote_1022
du_HasGovVoter'45'GovVote_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034
du_HasGovVoter'45'GovVote_1022
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1090
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId
d_HasNetworkId_1024 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1028 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_1028 ~v0
  = du_HasNetworkId'45'BaseAddr_1028
du_HasNetworkId'45'BaseAddr_1028 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BaseAddr_1028
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1030 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_1030 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1030
du_HasNetworkId'45'BootstrapAddr_1030 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BootstrapAddr_1030
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1032 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_1032 ~v0
  = du_HasNetworkId'45'RwdAddr_1032
du_HasNetworkId'45'RwdAddr_1032 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RwdAddr_1032
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams
d_HasPParams_1034 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPolicy
d_HasPolicy_1038 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1042 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074
d_HasPolicy'45'GovProposal_1042 ~v0
  = du_HasPolicy'45'GovProposal_1042
du_HasPolicy'45'GovProposal_1042 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074
du_HasPolicy'45'GovProposal_1042
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1094
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1044 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1044 ~v0 = du_HasReserves'45'Acnt_1044
du_HasReserves'45'Acnt_1044 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_182
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1046 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1046 ~v0 = du_HasTreasury'45'Acnt_1046
du_HasTreasury'45'Acnt_1046 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_180
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasUTxO
d_HasUTxO_1048 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVote
d_HasVote_1052 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1056 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054
d_HasVote'45'GovVote_1056 ~v0 = du_HasVote'45'GovVote_1056
du_HasVote'45'GovVote_1056 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054
du_HasVote'45'GovVote_1056
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasVote'45'GovVote_1092
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1058 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1062 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HashProtected
d_HashProtected_1066 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1066 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1068 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1070 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1070 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1072 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1072 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1078 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1082 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1086 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ix
d_Ix_1090 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1090 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_1092 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1092 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.KeyPair
d_KeyPair_1096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1096 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.LangDepView
d_LangDepView_1098 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1098 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Language
d_Language_1100 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1100 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1102 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1102 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1104 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1104 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NeedsHash
d_NeedsHash_1106 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_NeedsHash_1106 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Network
d_Network_1108 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1108 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkId
d_NetworkId_1112 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1112 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1114 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_1114 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1120 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1120 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1122 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1122 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1124 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1124 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1Script
d_P1Script_1126 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1126 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1128 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusScript
d_PlutusScript_1132 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamGroup
d_PParamGroup_1134 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_1136 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff
d_PParamsDiff_1140 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsOf
d_PParamsOf_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UpdateT
d_UpdateT_1146 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1146 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_1148 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV1
d_PlutusV1_1152 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1152 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV2
d_PlutusV2_1154 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1154 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV3
d_PlutusV3_1156 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1156 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Policy
d_Policy_1158 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1158 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PolicyOf
d_PolicyOf_1160 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1160 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_PolicyOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds
d_PoolThresholds_1162 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1166 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1166 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Prices
d_Prices_1168 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1168 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1170 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1170 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProtVer
d_ProtVer_1172 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProtVer_1172 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Quorum
d_Quorum_1174 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1174 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1176 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1176 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1178 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RdmrPtr
d_RdmrPtr_1180 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1180 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Redeemer
d_Redeemer_1182 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1182 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr
d_RwdAddr_1184 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SKey
d_SKey_1190 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1190 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Script
d_Script_1194 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1194 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptAddr
d_ScriptAddr_1196 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1196 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1198 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1198 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1200 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1200 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptHash
d_ScriptHash_1202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1202 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_1206 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ser
d_Ser_1212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1212 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1214 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential
d_Show'45'Credential_1216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1216 ~v0 = du_Show'45'Credential_1216
du_Show'45'Credential_1216 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1218 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1218 ~v0
  = du_Show'45'Credential'215'Coin_1218
du_Show'45'Credential'215'Coin_1218 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1220 ~v0 = du_Show'45'DrepThresholds_1220
du_Show'45'DrepThresholds_1220 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_576
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1222 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1222 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1224 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1226 ~v0 = du_Show'45'GovRole_1226
du_Show'45'GovRole_1226 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1226
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_Show'45'GovRole_792
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Network
d_Show'45'Network_1228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1228 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PParams
d_Show'45'PParams_1230 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1230 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_580
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1232 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1232 ~v0 = du_Show'45'PoolThresholds_1232
du_Show'45'PoolThresholds_1232 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_578
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Prices
d_Show'45'Prices_1234 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1234 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ProtVer
d_Show'45'ProtVer_1236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1236 ~v0 = du_Show'45'ProtVer_1236
du_Show'45'ProtVer_1236 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1236
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-RwdAddr
d_Show'45'RwdAddr_1238 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1238 ~v0 = du_Show'45'RwdAddr_1238
du_Show'45'RwdAddr_1238 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1238
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_288
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1240 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1240 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1242 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1242 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1244 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1244 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1246 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1246 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1248 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1248 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_Show'45'VDeleg_1212
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Sig
d_Sig_1250 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1250 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slot
d_Slot_1252 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1252 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1254 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1254 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slotʳ
d_Slot'691'_1256 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1256 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindow
d_StabilityWindow_1258 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1258 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1260 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1260 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1262 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1262 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1264 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1264 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1266 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1266 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-isHashable
d_T'45'isHashable_1268 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1268 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1272 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxId
d_TxId_1280 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1280 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxIn
d_TxIn_1282 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1282 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOut
d_TxOut_1284 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1284 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOutʰ
d_TxOut'688'_1286 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1286 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses
d_TxWitnesses_1288 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxO
d_UTxO_1292 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1292 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxOOf
d_UTxOOf_1294 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1294 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Update
d_Update_1296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1296 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VDeleg
d_VDeleg_1300 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKey
d_VKey_1302 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1302 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyAddr
d_VKeyAddr_1304 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1304 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1306 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1306 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1308 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1308 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value
d_Value_1312 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1312 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1314 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1314 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VoteDelegs
d_VoteDelegs_1316 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1316 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1318 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VoteOf
d_VoteOf_1320 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_VoteOf_1320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteOf_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Withdrawals
d_Withdrawals_1322 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1322 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.adHashingScheme
d_adHashingScheme_1326 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1326 ~v0 = du_adHashingScheme_1326
du_adHashingScheme_1326 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1326
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addEpoch
d_addEpoch_1328 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1328 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addSlot
d_addSlot_1330 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1330 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addValue
d_addValue_1332 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1332 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.applyUpdate
d_applyUpdate_1334 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_1334 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin
d_coin_1340 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1340 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1342 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1342 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1344 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1344 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1346 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1346 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cryptoStructure
d_cryptoStructure_1348 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1348 v0 = coe d_HSCryptoStructure_16 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1350 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1350 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epoch
d_epoch_1352 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1352 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epochStructure
d_epochStructure_1354 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1354 ~v0 = du_epochStructure_1354
du_epochStructure_1354 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1354 = coe du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.firstSlot
d_firstSlot_1356 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1356 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.gaData
d_gaData_1358 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_1358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.gaType
d_gaType_1360 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_1360 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getScriptHash
d_getScriptHash_1362 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_1362 ~v0 = du_getScriptHash_1362
du_getScriptHash_1362 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
du_getScriptHash_1362
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValue
d_getValue_1364 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1364 ~v0 = du_getValue_1364
du_getValue_1364 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1364
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue_3284
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValueʰ
d_getValue'688'_1366 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1366 ~v0 = du_getValue'688'_1366
du_getValue'688'_1366 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1366
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue'688'_3300
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.globalConstants
d_globalConstants_1368 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1368 ~v0 = du_globalConstants_1368
du_globalConstants_1368 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1368 = coe du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govParams
d_govParams_1370 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500
d_govParams_1370 v0 = coe d_HsGovParams_732 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govStructure
d_govStructure_1372 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1372 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1374 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1374 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_326
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.inject
d_inject_1376 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1376 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1378 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr?
d_isBootstrapAddr'63'_1380 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1380 ~v0 = du_isBootstrapAddr'63'_1380
du_isBootstrapAddr'63'_1380 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1380
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isGovVoterCredential
d_isGovVoterCredential_1382 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1382 ~v0 = du_isGovVoterCredential_1382
du_isGovVoterCredential_1382 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterCredential_1382
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterCredential_1218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1384 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1384 ~v0 = du_isGovVoterDRep_1384
du_isGovVoterDRep_1384 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1384
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterDRep_1214
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHash
d_isKeyHash_1386 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1386 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1388 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1388 ~v0 = du_isKeyHashObj_1388
du_isKeyHashObj_1388 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1388
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1390 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1390 ~v0 = du_isKeyHashObj'7495'_1390
du_isKeyHashObj'7495'_1390 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1390
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyPair
d_isKeyPair_1392 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1392 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isNativeScript
d_isNativeScript_1394 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1394 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP1Script
d_isP1Script_1396 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1396 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP1Script?
d_isP1Script'63'_1398 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1398 ~v0 = du_isP1Script'63'_1398
du_isP1Script'63'_1398 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1398
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP1Script'63'_408
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script
d_isP2Script_1400 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1400 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script?
d_isP2Script'63'_1402 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1402 ~v0 = du_isP2Script'63'_1402
du_isP2Script'63'_1402 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1402
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP2Script'63'_422
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScript
d_isScript_1404 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptAddr
d_isScriptAddr_1406 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1406 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptObj
d_isScriptObj_1408 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1408 ~v0 = du_isScriptObj_1408
du_isScriptObj_1408 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1408
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptRwdAddr
d_isScriptRwdAddr_1410 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1410 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned
d_isSigned_1412 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1412 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1414 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1414 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKey
d_isVKey_1416 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1418 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1418 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.khs
d_khs_1420 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1420 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.language
d_language_1422 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1422 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.monoid
d_monoid_1424 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1424 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.netId
d_netId_1426 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1426 ~v0 = du_netId_1426
du_netId_1426 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1426
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.p1s
d_p1s_1428 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1428 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1430 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1430 ~v0 = du_paramsWF'45'elim_1430
du_paramsWF'45'elim_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1430 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_548
      v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1432 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  ()
d_paramsWellFormed_1432 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.payCred
d_payCred_1434 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1434 ~v0 = du_payCred_1434
du_payCred_1434 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1434
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pkk
d_pkk_1436 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1436 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.policies
d_policies_1438 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1438 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.positivePParams
d_positivePParams_1440 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  [Integer]
d_positivePParams_1440 ~v0 = du_positivePParams_1440
du_positivePParams_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  [Integer]
du_positivePParams_1440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_460
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppUpd
d_ppUpd_1442 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466
d_ppUpd_1442 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF?
d_ppWF'63'_1444 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1444 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1446 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  ()
d_ppdWellFormed_1446 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.preoEpoch
d_preoEpoch_1448 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1448 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.proposedCC
d_proposedCC_1450 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1450 ~v0 = du_proposedCC_1450
du_proposedCC_1450 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1450
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_proposedCC_1224
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ps
d_ps_1452 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
d_ps_1452 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow
d_pvCanFollow_1454 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow?
d_pvCanFollow'63'_1456 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1456 ~v0 = du_pvCanFollow'63'_1456
du_pvCanFollow'63'_1456 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1418
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rawMonoid
d_rawMonoid_1458 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1458 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptOuts
d_scriptOuts_1460 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1460 ~v0 = du_scriptOuts_1460
du_scriptOuts_1460 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1460
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_scriptOuts_3310
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptStructure
d_scriptStructure_1462 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280
d_scriptStructure_1462 v0 = coe d_HSScriptStructure_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sign
d_sign_1464 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1464 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.size
d_size_1466 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1466 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.stakeCred
d_stakeCred_1468 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1468 ~v0 = du_stakeCred_1468
du_stakeCred_1468 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1468
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sucᵉ
d_suc'7497'_1470 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1470 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sumᵛ
d_sum'7515'_1472 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1472 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toData
d_toData_1474 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> AgdaAny -> Integer
d_toData_1474 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toP1Script
d_toP1Script_1476 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362
d_toP1Script_1476 ~v0 = du_toP1Script_1476
du_toP1Script_1476 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362
du_toP1Script_1476
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP1Script_416
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toP2Script
d_toP2Script_1478 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382
d_toP2Script_1478 ~v0 = du_toP2Script_1478
du_toP2Script_1478 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382
du_toP2Script_1478
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP2Script_428
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1480 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1480 ~v0 = du_tokenAlgebra_1480
du_tokenAlgebra_1480 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1480
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txInsScript
d_txInsScript_1482 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txInsScript_3318
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txInsVKey
d_txInsVKey_1484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txInsVKey_3304
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txOutHash
d_txOutHash_1486 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3290
      (coe d_HSTransactionStructure_774 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txidBytes
d_txidBytes_1488 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1488 ~v0 v1 = du_txidBytes_1488 v1
du_txidBytes_1488 :: Integer -> Integer
du_txidBytes_1488 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.updateGroups
d_updateGroups_1490 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_1490 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validP1Script
d_validP1Script_1498 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  ()
d_validP1Script_1498 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validPlutusScript
d_validPlutusScript_1500 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  ()
d_validPlutusScript_1500 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ε
d_ε_1502 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1502 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1504 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1504 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1506 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1506 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1508 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1508 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1510 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1510 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.reserves
d_reserves_1520 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_reserves_1520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.treasury
d_treasury_1522 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_treasury_1522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.hash
d_hash_1526 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886 ->
  Integer
d_hash_1526 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_hash_894
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.url
d_url_1528 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1528 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_url_892
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.net
d_net_1532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.pay
d_pay_1534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1534 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.stake
d_stake_1536 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1536 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1540 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1540 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.net
d_net_1542 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1542 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.pay
d_pay_1544 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P1
d_P1_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2a
d_P2a_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2b
d_P2b_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P3
d_P3_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P4
d_P4_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5a
d_P5a_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5b
d_P5b_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5c
d_P5c_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5d
d_P5d_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P6
d_P6_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_248 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction.gaData
d_gaData_1576 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_1576 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction.gaType
d_gaType_1578 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_1578 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.action
d_action_1582 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1582 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1584 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_expiresIn_1584 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.prevAction
d_prevAction_1586 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_prevAction_1586 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1588 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1588 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.votes
d_votes_1590 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918
d_votes_1590 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Anchor
d_Anchor_1610 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1620 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1620 ~v0 = du_DecEq'45'GovActionType_1620
du_DecEq'45'GovActionType_1620 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1620
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovActionType_1104
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1622 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1622 ~v0 = du_DecEq'45'GovRole_1622
du_DecEq'45'GovRole_1622 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1622
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovRole_1106
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1624 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1624 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'GovVoter_1112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1626 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1626 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1628 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1628 ~v0 = du_DecEq'45'Vote_1628
du_DecEq'45'Vote_1628 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1628
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovAction
d_GovAction_1630 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionData
d_GovActionData_1634 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_GovActionData_1634 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionID
d_GovActionID_1636 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1636 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionOf
d_GovActionOf_1638 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_GovActionOf_1638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionState
d_GovActionState_1640 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionType
d_GovActionType_1644 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1646 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_GovActionTypeOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionTypeOf_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal
d_GovProposal_1648 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovRole
d_GovRole_1652 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1654 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_GovRoleCredential_1654 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote
d_GovVote_1656 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoter
d_GovVoter_1660 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoterOf
d_GovVoterOf_1664 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_GovVoterOf_1664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovVoterOf_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes
d_GovVotes_1666 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1670 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1670 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1670
du_HasCast'45'GovAction'45'Sigma_1670 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1670
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_860
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1672 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1672 ~v0 = du_HasCast'45'GovVote_1672
du_HasCast'45'GovVote_1672 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1672
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovVote_1210
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1674 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1674 ~v0
  = du_HasCast'45'HashProtected_1674
du_HasCast'45'HashProtected_1674 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected_972
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1676 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1676 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1676
du_HasCast'45'HashProtected'45'MaybeScriptHash_1676 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1676
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_974
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction
d_HasGovAction_1678 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1682 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovActionState_1682 ~v0
  = du_HasGovAction'45'GovActionState_1682
du_HasGovAction'45'GovActionState_1682 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
du_HasGovAction'45'GovActionState_1682
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1098
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1684 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovProposal_1684 ~v0
  = du_HasGovAction'45'GovProposal_1684
du_HasGovAction'45'GovProposal_1684 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
du_HasGovAction'45'GovProposal_1684
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1096
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType
d_HasGovActionType_1686 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1690 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovAction_1690 ~v0
  = du_HasGovActionType'45'GovAction_1690
du_HasGovActionType'45'GovAction_1690 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovAction_1690
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_858
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1692 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovActionState_1692 ~v0
  = du_HasGovActionType'45'GovActionState_1692
du_HasGovActionType'45'GovActionState_1692 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovActionState_1692
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1102
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1694 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovProposal_1694 ~v0
  = du_HasGovActionType'45'GovProposal_1694
du_HasGovActionType'45'GovProposal_1694 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
du_HasGovActionType'45'GovProposal_1694
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1100
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovVoter
d_HasGovVoter_1696 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1700 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034
d_HasGovVoter'45'GovVote_1700 ~v0 = du_HasGovVoter'45'GovVote_1700
du_HasGovVoter'45'GovVote_1700 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034
du_HasGovVoter'45'GovVote_1700
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1090
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasPolicy
d_HasPolicy_1702 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1706 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074
d_HasPolicy'45'GovProposal_1706 ~v0
  = du_HasPolicy'45'GovProposal_1706
du_HasPolicy'45'GovProposal_1706 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074
du_HasPolicy'45'GovProposal_1706
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1094
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVote
d_HasVote_1708 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1712 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054
d_HasVote'45'GovVote_1712 ~v0 = du_HasVote'45'GovVote_1712
du_HasVote'45'GovVote_1712 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054
du_HasVote'45'GovVote_1712
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasVote'45'GovVote_1092
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1714 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HashProtected
d_HashProtected_1718 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1718 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.NeedsHash
d_NeedsHash_1722 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_NeedsHash_1722 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Policy
d_Policy_1728 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1728 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.PolicyOf
d_PolicyOf_1730 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1730 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_PolicyOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1734 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1734 ~v0 = du_Show'45'GovRole_1734
du_Show'45'GovRole_1734 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1734
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_Show'45'GovRole_792
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1736 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1736 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_Show'45'VDeleg_1212
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VDeleg
d_VDeleg_1744 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Vote
d_Vote_1746 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VoteDelegs
d_VoteDelegs_1748 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1748 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1750 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1750 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VoteOf
d_VoteOf_1752 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_VoteOf_1752 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteOf_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.gaData
d_gaData_1756 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_1756 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.gaType
d_gaType_1758 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_1758 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.isGovVoterCredential
d_isGovVoterCredential_1760 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1760 ~v0 = du_isGovVoterCredential_1760
du_isGovVoterCredential_1760 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterCredential_1760
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterCredential_1218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1762 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1762 ~v0 = du_isGovVoterDRep_1762
du_isGovVoterDRep_1762 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1762
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterDRep_1214
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.proposedCC
d_proposedCC_1766 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1766 ~v0 = du_proposedCC_1766
du_proposedCC_1766 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1766
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_proposedCC_1224
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.action
d_action_1782 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1782 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.anchor
d_anchor_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.deposit
d_deposit_1786 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1786 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.policy
d_policy_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe Integer
d_policy_1788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.prevAction
d_prevAction_1790 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1790 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1792 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1792 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.anchor
d_anchor_1804 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1804 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.gid
d_gid_1806 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1806 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.vote
d_vote_1808 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_vote_1808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.voter
d_voter_1810 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_voter_1810 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1814 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1814 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoter.gvRole
d_gvRole_1816 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes.gvCC
d_gvCC_1820 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1820 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCC_926
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1822 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1822 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvDRep_928
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1824 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1824 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvSPO_930
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1828 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_GovActionOf_1828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1832 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_GovActionTypeOf_1832 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionTypeOf_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1836 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_GovVoterOf_1836 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovVoterOf_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1840 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1840 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_PolicyOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1844 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_VoteOf_1844 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteOf_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1848 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1848 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  ()
d_UpdateT_1870 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466
d_ppUpd_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1878 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  AgdaAny -> ()
d_ppdWellFormed_1878 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_444 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_1888 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1888 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1892 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_1892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_1900 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1904 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1904 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_1908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1908 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1912 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1914 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_1916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1916 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_1920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1920 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_1922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1922 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1924 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1926 ~v0 = du_isMagmaIsomorphism_1926
du_isMagmaIsomorphism_1926 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1926 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1928 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1928 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1928 v2
du_isMagmaMonomorphism_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1928 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1930 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1932 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1934 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1934 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1936 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1936 ~v0 ~v1 v2 = du_isRelIsomorphism_1936 v2
du_isRelIsomorphism_1936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1936 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1938 ~v0 ~v1 v2 = du_isRelMonomorphism_1938 v2
du_isRelMonomorphism_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1938 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1942 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1944 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_1948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1948 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1950 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1952 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1954 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1954 ~v0 = du_isMagmaMonomorphism_1954
du_isMagmaMonomorphism_1954 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1954 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1956 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1960 ~v0 ~v1 v2 = du_isRelMonomorphism_1960 v2
du_isRelMonomorphism_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1962 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_1964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1964 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1968 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1968 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1970 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1970 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1972 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1972 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_1974 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_1974 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1976 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1976 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_Emax_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepActivity_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  ()
d_UpdateT_2064 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2070 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny -> ()
d_ppdWellFormed_2070 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2076 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2076 ~v0 = du__'63''8599'__2076
du__'63''8599'__2076 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2076 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1210
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2078 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2078 v0
  = let v1 = d_HSTransactionStructure_774 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1412
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2080 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2084 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyPParamsUpdate_2084 ~v0 = du_applyPParamsUpdate_2084
du_applyPParamsUpdate_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_applyPParamsUpdate_2084
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1258
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2086 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_modifiedUpdateGroups_2086 ~v0 = du_modifiedUpdateGroups_2086
du_modifiedUpdateGroups_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
du_modifiedUpdateGroups_2086
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1194
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2088 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesEconomicGroup_2088 ~v0 = du_modifiesEconomicGroup_2088
du_modifiesEconomicGroup_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
du_modifiesEconomicGroup_2088
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_890
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2090 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesGovernanceGroup_2090 ~v0
  = du_modifiesGovernanceGroup_2090
du_modifiesGovernanceGroup_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
du_modifiesGovernanceGroup_2090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1042
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2092 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesNetworkGroup_2092 ~v0 = du_modifiesNetworkGroup_2092
du_modifiesNetworkGroup_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
du_modifiesNetworkGroup_2092
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_814
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2094 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesSecurityGroup_2094 ~v0 = du_modifiesSecurityGroup_2094
du_modifiesSecurityGroup_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
du_modifiesSecurityGroup_2094
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1118
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesTechnicalGroup_2096 ~v0 = du_modifiesTechnicalGroup_2096
du_modifiesTechnicalGroup_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
du_modifiesTechnicalGroup_2096
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_966
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2098 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  ()
d_paramsUpdateWellFormed_2098 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2100 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_656
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_658
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_660
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_662
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_684
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_678
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_706
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_724
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_714
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_716
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_718
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2102 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2102 ~v0 = du_'8801''45'update_2102
du_'8801''45'update_2102 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2102 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1224
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_Emax_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_a_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_700 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_b_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_674 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_ccMaxTermLength_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_724
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_ccMinSize_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_coinsPerUTxOByte_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_collateralPercentage_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_drepActivity_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_drepDeposit_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_govActionDeposit_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_govActionLifetime_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_keyDeposit_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_676
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_668
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxBlockSize_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_656
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxCollateralInputs_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_664
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxHeaderSize_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_660
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_666
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxTxSize_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_658
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxValSize_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_662
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_minUTxOValue_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_nopt_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_poolDeposit_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_678
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_694
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2178 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2178 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2180 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_2180 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T
d_T_2182 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_2182 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.THash
d_THash_2184 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_2184 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2186 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Datum
d_Datum_2188 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_2188 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2190 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2192 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2192 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2194 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2196 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2196 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2198 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2200 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2202 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2202 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2204 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2204 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2206 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2206 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2208 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2208 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2210 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2212 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2212 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_2214 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2214 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2216 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2216 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2218 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2220 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2222 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2222 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_2224 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2224 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2226 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2228 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2230 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2232 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2232 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2234 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2234 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2236 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2236 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2238 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_2240 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2240 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.toData
d_toData_2242 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  () -> AgdaAny -> AgdaAny
d_toData_2242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2244 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2244 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q1
d_Q1_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q4
d_Q4_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q5
d_Q5_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.net
d_net_2260 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  Integer
d_net_2260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RwdAddr.stake
d_stake_2262 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2262 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2266 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2266 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2268 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_CostModel_2268 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T
d_T_2270 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_T_2270 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.THash
d_THash_2272 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_THash_2272 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2274 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2274 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Datum
d_Datum_2276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Datum_2276 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2278 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2278 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2280 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2280 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2282 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2284 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2286 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2286 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2288 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2288 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2290 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2292 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2294 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2294 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2296 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2296 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2298 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2298 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2300 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_ExUnits_2300 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2302 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2304 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2304 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2306 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2306 ~v0 = du_Hashable'45'Script_2306
du_Hashable'45'Script_2306 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2306
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2308 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_LangDepView_2308 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Language
d_Language_2310 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Language_2310 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2312 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_P1Script_2312 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2314 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_PlutusScript_2314 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2316 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV1_2316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2318 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV2_2318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2320 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV3_2320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Prices
d_Prices_2322 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Prices_2322 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2324 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Redeemer_2324 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Script
d_Script_2326 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Script_2326 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2328 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2328 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2330 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2332 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2334 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2334 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2336 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2336 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2338 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2338 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2340 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2342 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2342 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_2344 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2344 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2346 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2346 ~v0 = du_isP1Script'63'_2346
du_isP1Script'63'_2346 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2346 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP1Script'63'_408
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_2348 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2348 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2350 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2350 ~v0 = du_isP2Script'63'_2350
du_isP2Script'63'_2350 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2350 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP2Script'63'_422
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.language
d_language_2352 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny
d_language_2352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_2354 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2354 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_2356 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
d_ps_2356 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toData
d_toData_2358 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  () -> AgdaAny -> AgdaAny
d_toData_2358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_2360 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2360 ~v0 = du_toP1Script_2360
du_toP1Script_2360 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2360 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP1Script_416
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_2362 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2362 ~v0 = du_toP2Script_2362
du_toP2Script_2362 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP2Script_428
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2364 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2364 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2366 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2366 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2370 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2370 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2372 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2372 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2374 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2374 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2376 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2376 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2378 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2378 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2380 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2384 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2388 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value
d_Value_2392 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2392 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2394 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2396 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2396 ~v0 = du_addValue_2396
du_addValue_2396 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_2396
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin
d_coin_2398 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2398 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2400 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2400 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2402 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2402 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2404 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2404 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.inject
d_inject_2406 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2408 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2408 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.policies
d_policies_2410 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2410 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2412 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2412 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.size
d_size_2414 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2414 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2416 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2416 ~v0 = du_sum'7515'_2416
du_sum'7515'_2416 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2416
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.ε
d_ε_2418 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2418 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2422 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2428 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2430 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2434 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2440 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2440 ~v0 = du_isMagmaIsomorphism_2440
du_isMagmaIsomorphism_2440 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2440 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2442 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2442 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2442 v2
du_isMagmaMonomorphism_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2450 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2450 ~v0 ~v1 v2 = du_isRelIsomorphism_2450 v2
du_isRelIsomorphism_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2452 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2452 ~v0 ~v1 v2 = du_isRelMonomorphism_2452 v2
du_isRelMonomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2452 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2456 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2458 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2462 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2468 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2468 ~v0 = du_isMagmaMonomorphism_2468
du_isMagmaMonomorphism_2468 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2468 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2474 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2474 ~v0 ~v1 v2 = du_isRelMonomorphism_2474 v2
du_isRelMonomorphism_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2476 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2478 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scripts
d_scripts_2482 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362]
d_scriptsP1_2484 ~v0 = du_scriptsP1_2484
du_scriptsP1_2484 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362]
du_scriptsP1_2484
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_scriptsP1_3280
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txdats
d_txdats_2486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [Integer]
d_txdats_2486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2488 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2488 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2490 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2512 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2512 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2514 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2516 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2518 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2520 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__2522 a0 a1 a2 a3
                                                      a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__2524 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CCHotKeys
d_CCHotKeys_2526 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_2526 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv
d_CertEnv_2540 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState
d_CertState_2544 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertStateOf
d_CertStateOf_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_CertStateOf_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DCert
d_DCert_2552 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DReps
d_DReps_2562 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_2562 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DRepsOf
d_DRepsOf_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState
d_DState_2566 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DStateOf
d_DStateOf_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_DStateOf_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2572 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1132
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe d_HSTransactionStructure_774 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv
d_DelegEnv_2574 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositPurpose
d_DepositPurpose_2578 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Deposits
d_Deposits_2580 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2580 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositsOf
d_DepositsOf_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState
d_GState_2590 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GStateOf
d_GStateOf_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_GStateOf_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_2598 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_2602 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'CertState_2602 ~v0
  = du_HasCCHotKeys'45'CertState_2602
du_HasCCHotKeys'45'CertState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154
du_HasCCHotKeys'45'CertState_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1534
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2604 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'GState_2604 ~v0 = du_HasCCHotKeys'45'GState_2604
du_HasCCHotKeys'45'GState_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154
du_HasCCHotKeys'45'GState_2604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1522
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_2606 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2606 ~v0 = du_HasCast'45'CertEnv_2606
du_HasCast'45'CertEnv_2606 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_2608 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2608 ~v0 = du_HasCast'45'CertState_2608
du_HasCast'45'CertState_2608 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1558
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_2610 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2610 ~v0 = du_HasCast'45'DState_2610
du_HasCast'45'DState_2610 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1552
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2612 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2612 ~v0 = du_HasCast'45'DelegEnv_2612
du_HasCast'45'DelegEnv_2612 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1560
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_2614 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2614 ~v0 = du_HasCast'45'GState_2614
du_HasCast'45'GState_2614 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1556
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_2616 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2616 ~v0 = du_HasCast'45'PState_2616
du_HasCast'45'PState_2616 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1554
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCertState
d_HasCertState_2618 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2622 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1548
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe d_HSTransactionStructure_774 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps
d_HasDReps_2624 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_2628 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'CertState_2628 ~v0 = du_HasDReps'45'CertState_2628
du_HasDReps'45'CertState_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'CertState_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1532
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_2630 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'GState_2630 ~v0 = du_HasDReps'45'GState_2630
du_HasDReps'45'GState_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'GState_2630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1520
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState
d_HasDState_2632 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_2636 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430
d_HasDState'45'CertState_2636 ~v0 = du_HasDState'45'CertState_2636
du_HasDState'45'CertState_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430
du_HasDState'45'CertState_2636
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1524
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDeposits
d_HasDeposits_2638 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState
d_HasGState_2642 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_2646 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470
d_HasGState'45'CertState_2646 ~v0 = du_HasGState'45'CertState_2646
du_HasGState'45'CertState_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470
du_HasGState'45'CertState_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1528
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_2648 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
d_HasPParams'45'CertEnv_2648 ~v0 = du_HasPParams'45'CertEnv_2648
du_HasPParams'45'CertEnv_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
du_HasPParams'45'CertEnv_2648
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1506
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState
d_HasPState_2650 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_2654 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
d_HasPState'45'CertState_2654 ~v0 = du_HasPState'45'CertState_2654
du_HasPState'45'CertState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
du_HasPState'45'CertState_2654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1526
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools
d_HasPools_2656 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_2660 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
d_HasPools'45'CertState_2660 ~v0 = du_HasPools'45'CertState_2660
du_HasPools'45'CertState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
du_HasPools'45'CertState_2660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1536
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_2662 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
d_HasPools'45'PState_2662 ~v0 = du_HasPools'45'PState_2662
du_HasPools'45'PState_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
du_HasPools'45'PState_2662
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1516
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRetiring
d_HasRetiring_2664 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_2668 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202
d_HasRetiring'45'PState_2668 ~v0 = du_HasRetiring'45'PState_2668
du_HasRetiring'45'PState_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202
du_HasRetiring'45'PState_2668
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1518
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards
d_HasRewards_2670 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_2674 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'CertState_2674 ~v0
  = du_HasRewards'45'CertState_2674
du_HasRewards'45'CertState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218
du_HasRewards'45'CertState_2674
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1530
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_2676 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'DState_2676 ~v0 = du_HasRewards'45'DState_2676
du_HasRewards'45'DState_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218
du_HasRewards'45'DState_2676
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1514
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStake
d_HasStake_2678 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_2682 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_2686 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'CertState_2686 ~v0
  = du_HasStakeDelegs'45'CertState_2686
du_HasStakeDelegs'45'CertState_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
du_HasStakeDelegs'45'CertState_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1540
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_2688 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'DState_2688 ~v0
  = du_HasStakeDelegs'45'DState_2688
du_HasStakeDelegs'45'DState_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
du_HasStakeDelegs'45'DState_2688
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1512
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_2690 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'CertState_2690 ~v0
  = du_HasVoteDelegs'45'CertState_2690
du_HasVoteDelegs'45'CertState_2690 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'CertState_2690
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1538
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2692 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'DState_2692 ~v0
  = du_HasVoteDelegs'45'DState_2692
du_HasVoteDelegs'45'DState_2692 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'DState_2692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1510
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_2694 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_2694 ~v0
  = du_HasWithdrawals'45'CertEnv_2694
du_HasWithdrawals'45'CertEnv_2694 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'CertEnv_2694
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1508
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState
d_PState_2700 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PStateOf
d_PStateOf_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_PStateOf_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolEnv
d_PoolEnv_2708 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2708 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Pools
d_Pools_2710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_2710 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolsOf
d_PoolsOf_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Retiring
d_Retiring_2714 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_2714 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RetiringOf
d_RetiringOf_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Rewards
d_Rewards_2718 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_2718 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardsOf
d_RewardsOf_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Stake
d_Stake_2722 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_2722 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakeDelegs
d_StakeDelegs_2724 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_2724 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1258
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakeOf
d_StakeOf_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams
d_StakePoolParams_2730 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cwitness
d_cwitness_2736 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_2736 ~v0 = du_cwitness_2736
du_cwitness_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_2736
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1308
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isPoolRegistered
d_isPoolRegistered_2744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076
d_isPoolRegistered_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1640
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe d_HSTransactionStructure_774 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rewardsBalance
d_rewardsBalance_2754 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  Integer
d_rewardsBalance_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1542
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe d_HSTransactionStructure_774 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.epoch
d_epoch_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  Integer
d_epoch_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.pp
d_pp_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pp_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.votes
d_votes_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_votes_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.wdrls
d_wdrls_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.dState
d_dState_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.gState
d_gState_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_gState_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.pState
d_pState_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.rewards
d_rewards_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.voteDelegs
d_voteDelegs_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.delegatees
d_delegatees_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1410 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pools
d_pools_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pparams
d_pparams_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1410 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.dreps
d_dreps_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_CertStateOf_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps.DRepsOf
d_DRepsOf_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState.DStateOf
d_DStateOf_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_DStateOf_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState.GStateOf
d_GStateOf_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_GStateOf_2892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState.PStateOf
d_PStateOf_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_PStateOf_2896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStake.StakeOf
d_StakeOf_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1258
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.fPools
d_fPools_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.pools
d_pools_2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.retiring
d_retiring_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.cost
d_cost_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_cost_2928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1090 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.margin
d_margin_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1092
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.owners
d_owners_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  [Integer]
d_owners_2932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.pledge
d_pledge_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_pledge_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1094
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1096
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_2940 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_indexOf_2172
d_indexOfImp_2950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.runPLCScript
d_runPLCScript_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer] -> Bool
d_runPLCScript_2952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_runPLCScript_2218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.serSize
d_serSize_2956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  Integer -> Integer
d_serSize_2956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2212
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_2974 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200
d_HSAbstractFunctions_2974 ~v0 = du_HSAbstractFunctions_2974
du_HSAbstractFunctions_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200
du_HSAbstractFunctions_2974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2222
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> 0 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2198
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
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_374
                     (coe v1)
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_390
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
