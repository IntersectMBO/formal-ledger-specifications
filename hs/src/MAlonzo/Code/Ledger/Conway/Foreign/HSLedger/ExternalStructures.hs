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
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Sort
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Bundles
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
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_100 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_128 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_134 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_136 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_144 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_164 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_306 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_162
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_308 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_118
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Timelock
d_Timelock_322 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.evalTimelock
d_evalTimelock_336 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_368 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_386
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_370 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock
d_HSTimelock_374 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_378 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSPlutusScript_378 ~v0
  = du_Hashable'45'HSPlutusScript_378
du_Hashable'45'HSPlutusScript_378 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSPlutusScript_378
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_400
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_380 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_380 ~v0 = du_Hashable'45'HSTimelock_380
du_Hashable'45'HSTimelock_380 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSTimelock_380
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_384
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_384 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_P1ScriptStructure'45'HTL_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_402
      (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388 ->
  Integer
d_psScriptHash_388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388 ->
  Integer
d_psScriptSize_390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.timelock
d_timelock_394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104
d_timelock_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368 ->
  Integer
d_tlScriptHash_396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368 ->
  Integer
d_tlScriptSize_398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSScriptStructure
d_HSScriptStructure_400 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_HSScriptStructure_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_constructor_436
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_402
         (coe d_HSCryptoStructure_16 (coe v0)) (coe du_HSEpochStructure_14))
      (\ v1 v2 v3 v4 v5 -> coe du_hashRespectsUnion_412 v4 v5)
      (coe du_HSP2ScriptStructure_422)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_412 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_412 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hashRespectsUnion_412 v4 v5
du_hashRespectsUnion_412 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_hashRespectsUnion_412 v0 v1
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
d_HSP2ScriptStructure_422 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_HSP2ScriptStructure_422 ~v0 = du_HSP2ScriptStructure_422
du_HSP2ScriptStructure_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
du_HSP2ScriptStructure_422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_constructor_278
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Data'688'_80
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_ExUnit'45'CommutativeMonoid_88
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_400)
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
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_'8805''7497''45'Dec_90
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_Show'45'ExUnits_94
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_450 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_476 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_508 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  ()
d_paramsWellFormed_508 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1580
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_538 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514
d_ppUpd_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_Emax_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepActivity_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_642 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  ()
d_UpdateT_642 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_644 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_646 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1538
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_656 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
         (coe du_HSGlobalConstants_12))
      (coe d_HSScriptStructure_400 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_658 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_662 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyPParamsUpdate_662 ~v0 = du_applyPParamsUpdate_662
du_applyPParamsUpdate_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_applyPParamsUpdate_662
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1282
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_Emax_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_726
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_a_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_696 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_b_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_698 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_692 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_ccMaxTermLength_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_748
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_ccMinSize_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_746
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_696 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_coinsPerUTxOByte_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_collateralPercentage_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_730
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_700 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdls_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_732
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_drepActivity_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_744
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_drepDeposit_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_742
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_706 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_734
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_govActionDeposit_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_740
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_govActionLifetime_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_738
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_keyDeposit_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_700
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxBlockSize_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_718 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxCollateralInputs_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxHeaderSize_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_722 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxRefScriptSizePerTx_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_728 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxTxSize_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxValSize_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_734 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_minUTxOValue_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_738 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_nopt_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_728
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_740 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_poolDeposit_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_742 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_736
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_744 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_746 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_748 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_750 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_752 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HsGovParams
d_HsGovParams_762 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548
d_HsGovParams_762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1546
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1282)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1218)
         (\ v1 -> coe du_ppWF_772 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
            (coe du_HSGlobalConstants_12))
         (coe d_HSScriptStructure_400 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF
d_ppWF_772 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_772 ~v0 v1 = du_ppWF_772 v1
du_ppWF_772 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_772 v0
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
d_trustMe_788
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe
d_trustMe_798
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_804 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3756
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
      (coe du_HSGlobalConstants_12) (d_HSCryptoStructure_16 (coe v0))
      (coe du_HSEpochStructure_14) (d_HSScriptStructure_400 (coe v0))
      (d_HsGovParams_762 (coe v0))
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_112
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ_
d__'43''7497'__810 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__810 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._+ᵉ'_
d__'43''7497'''__812 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__812 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._∙_
d__'8729'__814 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__814 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≈_
d__'8776'__816 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__816 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≤ᵗ_
d__'8804''7511'__818 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__818 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._≥ᵉ_
d__'8805''7497'__820 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__820 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_822 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_822 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  Bool
d_'61''61''45'GovAction_824 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_962
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_826 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_826 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_944
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_828 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Bool
d_'61''61''45'GovProposal_828 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1346
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.==-Set
d_'61''61''45'Set_830 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_830 ~v0 = du_'61''61''45'Set_830
du_'61''61''45'Set_830 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_830 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_932
      v1 v2 v3
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_832 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_832 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt
d_Acnt_834 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_838 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_838 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Addr
d_Addr_840 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_840 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor
d_Anchor_842 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_846 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_846 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_848 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_848 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr
d_BaseAddr_850 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_854 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_860 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CostModel
d_CostModel_864 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_864 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Credential
d_Credential_866 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CredentialOf
d_CredentialOf_868 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DCertsOf
d_DCertsOf_870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3522 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_DCertsOf_870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DReps
d_DReps_874 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_874 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DRepsOf
d_DRepsOf_876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T
d_T_878 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_878 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_880 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_880 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dataʰ
d_Data'688'_882 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_882 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Datum
d_Datum_884 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_884 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_886 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_886 ~v0 = du_Dec'45'isScript_886
du_Dec'45'isScript_886 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_886
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_300
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_888 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_890 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_890 ~v0 = du_Dec'45'isVKey_890
du_Dec'45'isVKey_890 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_890
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-pvCanFollowMajor
d_Dec'45'pvCanFollowMajor_892 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'pvCanFollowMajor_892 ~v0 = du_Dec'45'pvCanFollowMajor_892
du_Dec'45'pvCanFollowMajor_892 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'pvCanFollowMajor_892
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Dec'45'pvCanFollowMajor_1444
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-pvCanFollowMinor
d_Dec'45'pvCanFollowMinor_894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'pvCanFollowMinor_894 ~v0 = du_Dec'45'pvCanFollowMinor_894
du_Dec'45'pvCanFollowMinor_894 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'pvCanFollowMinor_894
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Dec'45'pvCanFollowMinor_1476
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_896 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_896 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_898 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_900 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_902 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_904 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_904 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1238
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_906 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_906 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_332
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_908 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_334
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_910 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_910 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_912 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_912 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_914 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_914 ~v0 = du_DecEq'45'DrepThresholds_914
du_DecEq'45'DrepThresholds_914 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_914
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_916 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_916 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_918 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_918 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_920 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_920 ~v0 = du_DecEq'45'GovActionType_920
du_DecEq'45'GovActionType_920 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_926
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_922 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_922 ~v0 = du_DecEq'45'GovRole_922
du_DecEq'45'GovRole_922 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_922
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_924 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_924 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1240
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1342
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_928 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_928 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_930 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_930 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_932 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_932 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1344
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_934 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_934 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_936 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_936 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_938 ~v0 = du_DecEq'45'PParamGroup_938
du_DecEq'45'PParamGroup_938 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_938
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_596
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_940 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_940 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_594
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_942 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_942 ~v0 = du_DecEq'45'PoolThresholds_942
du_DecEq'45'PoolThresholds_942 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_942
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_944 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_944 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_946 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_948 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_950 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_950 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_952 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_952 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_954 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_954 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1346
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-T
d_DecEq'45'T_956 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_956 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_958 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_958 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1346
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_960 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_962 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_962 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_964 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1344
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_966 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_966 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1580
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2506
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_968 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_968 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_970 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_970 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_972 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_972 ~v0 = du_DecEq'45'Vote_972
du_DecEq'45'Vote_972 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_974 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_974 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds
d_DrepThresholds_976 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Epoch
d_Epoch_982 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_982 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_984 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_984 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ExUnits
d_ExUnits_986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_986 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction
d_GovAction_988 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionData
d_GovActionData_992 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_GovActionData_992 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionID
d_GovActionID_994 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_994 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionOf
d_GovActionOf_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_GovActionOf_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_912
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState
d_GovActionState_998 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionType
d_GovActionType_1002 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_GovActionTypeOf_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams
d_GovParams_1006 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposal
d_GovProposal_1010 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3542 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106]
d_GovProposalsOf_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3550
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRole
d_GovRole_1016 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_1018 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  ()
d_GovRoleCredential_1018 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVote
d_GovVote_1020 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVoter
d_GovVoter_1024 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVoterOf
d_GovVoterOf_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002
d_GovVoterOf_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovVotes
d_GovVotes_1030 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasAttrSize
d_HasAttrSize_1036 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1040 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
d_HasAttrSize'45'BootstrapAddr_1040 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1040
du_HasAttrSize'45'BootstrapAddr_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
du_HasAttrSize'45'BootstrapAddr_1040
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_226
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_1042 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_1046 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1046 ~v0 = du_HasCast'45'Acnt_1046
du_HasCast'45'Acnt_1046 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_210
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1048 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1048 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1048
du_HasCast'45'GovAction'45'Sigma_1048 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_922
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_1050 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1050 ~v0 = du_HasCast'45'GovVote_1050
du_HasCast'45'GovVote_1050 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1338
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_1052 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1052 ~v0
  = du_HasCast'45'HashProtected_1052
du_HasCast'45'HashProtected_1052 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1054 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1054 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1054
du_HasCast'45'HashProtected'45'MaybeScriptHash_1054 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1054
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1102
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_1056 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3754
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential
d_HasCredential_1058 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1062 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1062 ~v0
  = du_HasCredential'45'RewardAddress_1062
du_HasCredential'45'RewardAddress_1062 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1062
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDCerts
d_HasDCerts_1064 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_1068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3522
d_HasDCerts'45'Tx_1068 ~v0 = du_HasDCerts'45'Tx_1068
du_HasDCerts'45'Tx_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3522
du_HasDCerts'45'Tx_1068
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3630
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps
d_HasDReps_1070 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_1074 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_1074 ~v0 = du_HasDonations'45'Tx_1074
du_HasDonations'45'Tx_1074 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_1074
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3640
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_1076 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_1076 ~v0 = du_HasDonations'45'TxBody_1076
du_HasDonations'45'TxBody_1076 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_1076
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3578
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasFees-Tx
d_HasFees'45'Tx_1078 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_1078 ~v0 = du_HasFees'45'Tx_1078
du_HasFees'45'Tx_1078 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Tx_1078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3628
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovAction
d_HasGovAction_1080 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1084 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
d_HasGovAction'45'GovActionState_1084 ~v0
  = du_HasGovAction'45'GovActionState_1084
du_HasGovAction'45'GovActionState_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
du_HasGovAction'45'GovActionState_1084
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1226
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1086 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
d_HasGovAction'45'GovProposal_1086 ~v0
  = du_HasGovAction'45'GovProposal_1086
du_HasGovAction'45'GovProposal_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
du_HasGovAction'45'GovProposal_1086
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1224
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType
d_HasGovActionType_1088 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1092 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
d_HasGovActionType'45'GovAction_1092 ~v0
  = du_HasGovActionType'45'GovAction_1092
du_HasGovActionType'45'GovAction_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
du_HasGovActionType'45'GovAction_1092
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_920
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1094 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
d_HasGovActionType'45'GovActionState_1094 ~v0
  = du_HasGovActionType'45'GovActionState_1094
du_HasGovActionType'45'GovActionState_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
du_HasGovActionType'45'GovActionState_1094
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1230
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
d_HasGovActionType'45'GovProposal_1096 ~v0
  = du_HasGovActionType'45'GovProposal_1096
du_HasGovActionType'45'GovProposal_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
du_HasGovActionType'45'GovProposal_1096
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1228
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovProposals
d_HasGovProposals_1098 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_1102 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3542
d_HasGovProposals'45'Tx_1102 ~v0 = du_HasGovProposals'45'Tx_1102
du_HasGovProposals'45'Tx_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3542
du_HasGovProposals'45'Tx_1102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3632
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovVoter
d_HasGovVoter_1104 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1108 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162
d_HasGovVoter'45'GovVote_1108 ~v0 = du_HasGovVoter'45'GovVote_1108
du_HasGovVoter'45'GovVote_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162
du_HasGovVoter'45'GovVote_1108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_1110 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId
d_HasNetworkId_1114 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1118 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BaseAddr_1118 ~v0
  = du_HasNetworkId'45'BaseAddr_1118
du_HasNetworkId'45'BaseAddr_1118 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BaseAddr_1118
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1120 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BootstrapAddr_1120 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1120
du_HasNetworkId'45'BootstrapAddr_1120 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BootstrapAddr_1120
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_220
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1122 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_1122 ~v0
  = du_HasNetworkId'45'RewardAddress_1122
du_HasNetworkId'45'RewardAddress_1122 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'RewardAddress_1122
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams
d_HasPParams_1124 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPolicy
d_HasPolicy_1128 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1132 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202
d_HasPolicy'45'GovProposal_1132 ~v0
  = du_HasPolicy'45'GovProposal_1132
du_HasPolicy'45'GovProposal_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202
du_HasPolicy'45'GovProposal_1132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1222
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1134 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1134 ~v0 = du_HasReserves'45'Acnt_1134
du_HasReserves'45'Acnt_1134 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1134
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_186
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1136 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1140 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1140 ~v0 = du_HasTreasury'45'Acnt_1140
du_HasTreasury'45'Acnt_1140 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_184
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxBody
d_HasTxBody_1142 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1146 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3502
d_HasTxBody'45'Tx_1146 ~v0 = du_HasTxBody'45'Tx_1146
du_HasTxBody'45'Tx_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3502
du_HasTxBody'45'Tx_1146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3626
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxId
d_HasTxId_1148 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1152 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3562
d_HasTxId'45'Tx_1152 ~v0 = du_HasTxId'45'Tx_1152
du_HasTxId'45'Tx_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3562
du_HasTxId'45'Tx_1152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3638
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasUTxO
d_HasUTxO_1154 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVote
d_HasVote_1158 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1162 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182
d_HasVote'45'GovVote_1162 ~v0 = du_HasVote'45'GovVote_1162
du_HasVote'45'GovVote_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182
du_HasVote'45'GovVote_1162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1220
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1164 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1168 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1172 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'Tx_1172 ~v0 = du_HasWithdrawals'45'Tx_1172
du_HasWithdrawals'45'Tx_1172 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'Tx_1172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3636
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1174 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'TxBody_1174 ~v0
  = du_HasWithdrawals'45'TxBody_1174
du_HasWithdrawals'45'TxBody_1174 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'TxBody_1174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3634
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HashProtected
d_HashProtected_1176 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1176 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1178 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1178 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1180 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1180 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1182 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1182 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1184 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2640
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1190 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1194 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1198 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ix
d_Ix_1202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1202 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.THash
d_THash_1204 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1204 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.KeyPair
d_KeyPair_1208 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1208 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.LangDepView
d_LangDepView_1210 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1210 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Language
d_Language_1212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1212 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LanguageCostModels_1214 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1216 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1220 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NeedsHash
d_NeedsHash_1222 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_1222 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Network
d_Network_1224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1224 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkId
d_NetworkId_1228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1228 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1230 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_1230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1236 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1238 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1238 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1240 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1240 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1Script
d_P1Script_1242 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1242 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1244 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusScript
d_PlutusScript_1248 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1248 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.POSIXTimeRange
d_POSIXTimeRange_1250 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_POSIXTimeRange_1250 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamGroup
d_PParamGroup_1252 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams
d_PParams_1254 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff
d_PParamsDiff_1258 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsOf
d_PParamsOf_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UpdateT
d_UpdateT_1264 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1264 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure
d_PlutusStructure_1266 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV1
d_PlutusV1_1270 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1270 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV2
d_PlutusV2_1272 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1272 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusV3
d_PlutusV3_1274 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1274 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Policy
d_Policy_1276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1276 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PolicyOf
d_PolicyOf_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds
d_PoolThresholds_1280 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1284 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1284 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Prices
d_Prices_1286 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1286 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1288 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1288 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ProtVer
d_ProtVer_1290 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProtVer_1290 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Quorum
d_Quorum_1292 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1292 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1294 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1294 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1296 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RdmrPtr
d_RdmrPtr_1298 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1298 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Redeemer
d_Redeemer_1300 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1300 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardAddress
d_RewardAddress_1302 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1306 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_1306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SKey
d_SKey_1310 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1310 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Script
d_Script_1314 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1314 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptAddr
d_ScriptAddr_1316 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1316 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1318 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1318 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1320 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1320 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptHash
d_ScriptHash_1322 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1322 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure
d_ScriptStructure_1326 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Ser
d_Ser_1332 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1332 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1334 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1334 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential
d_Show'45'Credential_1336 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1336 ~v0 = du_Show'45'Credential_1336
du_Show'45'Credential_1336 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1336 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_348
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1338 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1338 ~v0
  = du_Show'45'Credential'215'Coin_1338
du_Show'45'Credential'215'Coin_1338 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1338 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_352
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1340 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1340 ~v0 = du_Show'45'DrepThresholds_1340
du_Show'45'DrepThresholds_1340 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_598
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1342 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1342 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1344 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1344 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1346 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1346 ~v0 = du_Show'45'GovRole_1346
du_Show'45'GovRole_1346 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_854
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Language
d_Show'45'Language_1348 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1348 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1350 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1350 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Show.Instances.du_Show'45'List_16
         (coe
            MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Network
d_Show'45'Network_1352 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1352 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PParams
d_Show'45'PParams_1354 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1354 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_604
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1356 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1356 ~v0 = du_Show'45'PoolThresholds_1356
du_Show'45'PoolThresholds_1356 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_600
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-Prices
d_Show'45'Prices_1358 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1358 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ProtVer
d_Show'45'ProtVer_1360 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1360 ~v0 = du_Show'45'ProtVer_1360
du_Show'45'ProtVer_1360 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1360
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1362 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1362 ~v0 = du_Show'45'RewardAddress_1362
du_Show'45'RewardAddress_1362 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1362
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_350
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1364 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1364 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1366 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1366 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1346
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1368 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1368 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-THash
d_Show'45'THash_1370 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1370 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1372 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1372 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Sig
d_Sig_1374 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1374 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slot
d_Slot_1376 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1376 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1378 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1378 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Slotʳ
d_Slot'691'_1380 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1380 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindow
d_StabilityWindow_1382 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1382 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1384 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1384 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1386 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1386 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1346
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1388 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1388 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-Hashable
d_T'45'Hashable_1390 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1390 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.T-isHashable
d_T'45'isHashable_1392 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1392 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1396 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx
d_Tx_1404 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody
d_TxBody_1408 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBodyOf
d_TxBodyOf_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_TxBodyOf_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3510
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxId
d_TxId_1414 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1414 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxIdOf
d_TxIdOf_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3562 ->
  AgdaAny -> Integer
d_TxIdOf_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3570
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxIn
d_TxIn_1418 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1418 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOut
d_TxOut_1420 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1420 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxOutʰ
d_TxOut'688'_1422 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1422 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses
d_TxWitnesses_1424 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxO
d_UTxO_1428 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1428 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.UTxOOf
d_UTxOOf_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Update
d_Update_1432 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1432 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VDeleg
d_VDeleg_1436 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKey
d_VKey_1438 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1438 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyAddr
d_VKeyAddr_1440 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1440 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1442 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1442 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1444 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1444 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value
d_Value_1448 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1448 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1450 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1450 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VoteDelegs
d_VoteDelegs_1452 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1452 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1084
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.VoteOf
d_VoteOf_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_VoteOf_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Withdrawals
d_Withdrawals_1458 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1458 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1460 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1460 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1462 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1462 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1490
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.activeInEpoch
d_activeInEpoch_1464 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1464 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.adHashingScheme
d_adHashingScheme_1466 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1466 ~v0 = du_adHashingScheme_1466
du_adHashingScheme_1466 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1466
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addEpoch
d_addEpoch_1468 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1468 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addSlot
d_addSlot_1470 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1470 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.addValue
d_addValue_1472 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1472 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.applyUpdate
d_applyUpdate_1474 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_1474 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1530
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2506
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin
d_coin_1480 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1480 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1482 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1482 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1484 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1486 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1486 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cryptoStructure
d_cryptoStructure_1488 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1488 v0 = coe d_HSCryptoStructure_16 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1490 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1490 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epoch
d_epoch_1492 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1492 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.epochStructure
d_epochStructure_1494 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1494 ~v0 = du_epochStructure_1494
du_epochStructure_1494 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1494 = coe du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.firstSlot
d_firstSlot_1496 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1496 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.gaData
d_gaData_1498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  AgdaAny
d_gaData_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_900
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.gaType
d_gaType_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_gaType_1500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getLanguage
d_getLanguage_1502 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguage_1502 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getScriptHash
d_getScriptHash_1504 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_1504 ~v0 = du_getScriptHash_1504
du_getScriptHash_1504 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
du_getScriptHash_1504
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_326
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValue
d_getValue_1506 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1506 ~v0 = du_getValue_1506
du_getValue_1506 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3642
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.getValueʰ
d_getValue'688'_1508 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1508 ~v0 = du_getValue'688'_1508
du_getValue'688'_1508 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3658
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.globalConstants
d_globalConstants_1510 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1510 ~v0 = du_globalConstants_1510
du_globalConstants_1510 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1510 = coe du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govParams
d_govParams_1512 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548
d_govParams_1512 v0 = coe d_HsGovParams_762 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govStructure
d_govStructure_1514 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.govVoterCredential
d_govVoterCredential_1516 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1516 ~v0 = du_govVoterCredential_1516
du_govVoterCredential_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1446
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1518 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1518 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.inject
d_inject_1520 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1520 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1522 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isBootstrapAddr?
d_isBootstrapAddr'63'_1524 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1524 ~v0 = du_isBootstrapAddr'63'_1524
du_isBootstrapAddr'63'_1524 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1524
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_280
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1526 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1526 ~v0 = du_isGovVoterDRep_1526
du_isGovVoterDRep_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1442
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHash
d_isKeyHash_1528 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1528 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1530 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1530 ~v0 = du_isKeyHashObj_1530
du_isKeyHashObj_1530 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1530
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1532 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1532 ~v0 = du_isKeyHashObj'7495'_1532
du_isKeyHashObj'7495'_1532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1532
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isKeyPair
d_isKeyPair_1534 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1534 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isNativeScript
d_isNativeScript_1536 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1536 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP1Script
d_isP1Script_1538 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1538 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP1Script?
d_isP1Script'63'_1540 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1540 ~v0 = du_isP1Script'63'_1540
du_isP1Script'63'_1540 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script
d_isP2Script_1542 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1542 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isP2Script?
d_isP2Script'63'_1544 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1544 ~v0 = du_isP2Script'63'_1544
du_isP2Script'63'_1544 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScript
d_isScript_1546 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptAddr
d_isScriptAddr_1548 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1548 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptObj
d_isScriptObj_1550 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1550 ~v0 = du_isScriptObj_1550
du_isScriptObj_1550 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1550
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1552 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1552 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned
d_isSigned_1554 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1554 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1556 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1556 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKey
d_isVKey_1558 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1560 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1560 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.khs
d_khs_1562 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1562 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.language
d_language_1564 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1564 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1566 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3740
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.monoid
d_monoid_1568 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1568 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.netId
d_netId_1570 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1570 ~v0 = du_netId_1570
du_netId_1570 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1570
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.p1s
d_p1s_1572 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1572 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1574 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1574 ~v0 = du_paramsWF'45'elim_1574
du_paramsWF'45'elim_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1574 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_570
      v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1576 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  ()
d_paramsWellFormed_1576 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.payCred
d_payCred_1578 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1578 ~v0 = du_payCred_1578
du_payCred_1578 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1578
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pkk
d_pkk_1580 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1580 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.policies
d_policies_1582 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1582 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.positivePParams
d_positivePParams_1584 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [Integer]
d_positivePParams_1584 ~v0 = du_positivePParams_1584
du_positivePParams_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [Integer]
du_positivePParams_1584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_480
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppUpd
d_ppUpd_1586 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514
d_ppUpd_1586 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2506
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppWF?
d_ppWF'63'_1588 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1588 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1538
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2506
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1590 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  ()
d_ppdWellFormed_1590 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.preoEpoch
d_preoEpoch_1592 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1592 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.proposedCC
d_proposedCC_1594 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1594 ~v0 = du_proposedCC_1594
du_proposedCC_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1454
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ps
d_ps_1596 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_1596 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow
d_pvCanFollow_1598 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_pvCanFollow_1598 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollow?
d_pvCanFollow'63'_1600 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1600 ~v0 = du_pvCanFollow'63'_1600
du_pvCanFollow'63'_1600 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1512
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollowMajor
d_pvCanFollowMajor_1602 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollowMajor?
d_pvCanFollowMajor'63'_1604 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_pvCanFollowMajor'63'_1604 ~v0 = du_pvCanFollowMajor'63'_1604
du_pvCanFollowMajor'63'_1604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_pvCanFollowMajor'63'_1604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollowMajor'63'_1504
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollowMinor
d_pvCanFollowMinor_1606 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvCanFollowMinor?
d_pvCanFollowMinor'63'_1608 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_pvCanFollowMinor'63'_1608 ~v0 = du_pvCanFollowMinor'63'_1608
du_pvCanFollowMinor'63'_1608 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_pvCanFollowMinor'63'_1608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollowMinor'63'_1506
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvMajor
d_pvMajor_1610 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_pvMajor_1610 ~v0 v1 = du_pvMajor_1610 v1
du_pvMajor_1610 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_pvMajor_1610 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.pvMinor
d_pvMinor_1612 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_pvMinor_1612 ~v0 v1 = du_pvMinor_1612 v1
du_pvMinor_1612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_pvMinor_1612 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rawMonoid
d_rawMonoid_1614 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1614 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.refScripts
d_refScripts_1616 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3682
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptOuts
d_scriptOuts_1618 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1618 ~v0 = du_scriptOuts_1618
du_scriptOuts_1618 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1618
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3668
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.scriptStructure
d_scriptStructure_1620 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_scriptStructure_1620 v0 = coe d_HSScriptStructure_400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sign
d_sign_1622 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1622 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1394
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.size
d_size_1624 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1624 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.stakeCred
d_stakeCred_1626 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1626 ~v0 = du_stakeCred_1626
du_stakeCred_1626 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1626
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_252
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sucᵉ
d_suc'7497'_1628 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1628 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.sumᵛ
d_sum'7515'_1630 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1630 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toP1Script
d_toP1Script_1632 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368
d_toP1Script_1632 ~v0 = du_toP1Script_1632
du_toP1Script_1632 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368
du_toP1Script_1632
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.toP2Script
d_toP2Script_1634 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388
d_toP2Script_1634 ~v0 = du_toP2Script_1634
du_toP2Script_1634 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388
du_toP2Script_1634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1636 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1636 ~v0 = du_tokenAlgebra_1636
du_tokenAlgebra_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1636
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_112
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txInsScript
d_txInsScript_1638 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3676
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txInsVKey
d_txInsVKey_1640 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3662
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txOutHash
d_txOutHash_1642 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3648
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txidBytes
d_txidBytes_1644 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1644 ~v0 v1 = du_txidBytes_1644 v1
du_txidBytes_1644 :: Integer -> Integer
du_txidBytes_1644 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.txscripts
d_txscripts_1646 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3730
      (coe d_HSTransactionStructure_804 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.updateGroups
d_updateGroups_1648 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_1648 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1532
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2506
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validP1Script
d_validP1Script_1656 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368 ->
  ()
d_validP1Script_1656 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.validPlutusScript
d_validPlutusScript_1658 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388 ->
  ()
d_validPlutusScript_1658 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ε
d_ε_1660 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1660 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2524
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1662 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1662 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1664 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1664 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1360
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1666 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1666 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1668 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1668 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1670 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1670 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.reserves
d_reserves_1680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_reserves_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_180
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Acnt.treasury
d_treasury_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_treasury_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.hash
d_hash_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014 ->
  Integer
d_hash_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1022
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Anchor.url
d_url_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1020
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.net
d_net_1692 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.pay
d_pay_1694 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BaseAddr.stake
d_stake_1696 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1700 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.net
d_net_1702 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.BootstrapAddr.pay
d_pay_1704 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P1
d_P1_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2a
d_P2a_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_248 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P2b
d_P2b_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_250 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P3
d_P3_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_252 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P4
d_P4_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_254 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5a
d_P5a_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5b
d_P5b_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5c
d_P5c_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P5d
d_P5d_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DrepThresholds.P6
d_P6_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction.gaData
d_gaData_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  AgdaAny
d_gaData_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_900
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovAction.gaType
d_gaType_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_gaType_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.action
d_action_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_action_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1152
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_expiresIn_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.prevAction
d_prevAction_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  AgdaAny
d_prevAction_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1154
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActionState.votes
d_votes_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1046
d_votes_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1146
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1770 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  Bool
d_'61''61''45'GovAction_1770 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_962
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1772 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1772 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_944
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1774 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Bool
d_'61''61''45'GovProposal_1774 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1346
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.==-Set
d_'61''61''45'Set_1776 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1776 ~v0 = du_'61''61''45'Set_1776
du_'61''61''45'Set_1776 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1776 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_932
      v1 v2 v3
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Anchor
d_Anchor_1778 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DReps
d_DReps_1788 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_1788 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DRepsOf
d_DRepsOf_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1792 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1792 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1238
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1794 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1794 ~v0 = du_DecEq'45'GovActionType_1794
du_DecEq'45'GovActionType_1794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1794
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_926
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1796 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1796 ~v0 = du_DecEq'45'GovRole_1796
du_DecEq'45'GovRole_1796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1796
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1798 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1798 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1240
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1800 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1800 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1344
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1802 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1802 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1804 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1804 ~v0 = du_DecEq'45'Vote_1804
du_DecEq'45'Vote_1804 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1234
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovAction
d_GovAction_1806 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionData
d_GovActionData_1810 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_GovActionData_1810 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionID
d_GovActionID_1812 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1812 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionOf
d_GovActionOf_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_GovActionOf_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_912
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionState
d_GovActionState_1816 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionType
d_GovActionType_1820 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_GovActionTypeOf_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal
d_GovProposal_1824 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovRole
d_GovRole_1828 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1830 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  ()
d_GovRoleCredential_1830 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote
d_GovVote_1832 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoter
d_GovVoter_1836 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoterOf
d_GovVoterOf_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002
d_GovVoterOf_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes
d_GovVotes_1842 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1846 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1846 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1846
du_HasCast'45'GovAction'45'Sigma_1846 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1846
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_922
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1848 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1848 ~v0 = du_HasCast'45'GovVote_1848
du_HasCast'45'GovVote_1848 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1338
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1850 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1850 ~v0
  = du_HasCast'45'HashProtected_1850
du_HasCast'45'HashProtected_1850 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1100
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1852 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1852 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1852
du_HasCast'45'HashProtected'45'MaybeScriptHash_1852 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1102
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasDReps
d_HasDReps_1854 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction
d_HasGovAction_1858 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1862 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
d_HasGovAction'45'GovActionState_1862 ~v0
  = du_HasGovAction'45'GovActionState_1862
du_HasGovAction'45'GovActionState_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
du_HasGovAction'45'GovActionState_1862
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1226
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1864 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
d_HasGovAction'45'GovProposal_1864 ~v0
  = du_HasGovAction'45'GovProposal_1864
du_HasGovAction'45'GovProposal_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906
du_HasGovAction'45'GovProposal_1864
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1224
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType
d_HasGovActionType_1866 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1870 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
d_HasGovActionType'45'GovAction_1870 ~v0
  = du_HasGovActionType'45'GovAction_1870
du_HasGovActionType'45'GovAction_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
du_HasGovActionType'45'GovAction_1870
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_920
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1872 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
d_HasGovActionType'45'GovActionState_1872 ~v0
  = du_HasGovActionType'45'GovActionState_1872
du_HasGovActionType'45'GovActionState_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
du_HasGovActionType'45'GovActionState_1872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1230
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1874 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
d_HasGovActionType'45'GovProposal_1874 ~v0
  = du_HasGovActionType'45'GovProposal_1874
du_HasGovActionType'45'GovProposal_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876
du_HasGovActionType'45'GovProposal_1874
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1228
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovVoter
d_HasGovVoter_1876 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1880 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162
d_HasGovVoter'45'GovVote_1880 ~v0 = du_HasGovVoter'45'GovVote_1880
du_HasGovVoter'45'GovVote_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162
du_HasGovVoter'45'GovVote_1880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasPolicy
d_HasPolicy_1882 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1886 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202
d_HasPolicy'45'GovProposal_1886 ~v0
  = du_HasPolicy'45'GovProposal_1886
du_HasPolicy'45'GovProposal_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202
du_HasPolicy'45'GovProposal_1886
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1222
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVote
d_HasVote_1888 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1892 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182
d_HasVote'45'GovVote_1892 ~v0 = du_HasVote'45'GovVote_1892
du_HasVote'45'GovVote_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182
du_HasVote'45'GovVote_1892
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1220
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1894 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HashProtected
d_HashProtected_1898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1898 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.NeedsHash
d_NeedsHash_1902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_1902 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Policy
d_Policy_1908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1908 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.PolicyOf
d_PolicyOf_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1914 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1914 ~v0 = du_Show'45'GovRole_1914
du_Show'45'GovRole_1914 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1914
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_854
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1916 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1916 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VDeleg
d_VDeleg_1924 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.Vote
d_Vote_1926 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VoteDelegs
d_VoteDelegs_1928 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1928 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1084
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.VoteOf
d_VoteOf_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_VoteOf_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1936 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1936 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1490
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.activeInEpoch
d_activeInEpoch_1938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1938 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.gaData
d_gaData_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  AgdaAny
d_gaData_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_900
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.gaType
d_gaType_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_gaType_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_898
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.govVoterCredential
d_govVoterCredential_1944 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1944 ~v0 = du_govVoterCredential_1944
du_govVoterCredential_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1944
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1446
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1946 ~v0 = du_isGovVoterDRep_1946
du_isGovVoterDRep_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1442
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.proposedCC
d_proposedCC_1950 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1950 ~v0 = du_proposedCC_1950
du_proposedCC_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1950
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1454
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.action
d_action_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_action_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.anchor
d_anchor_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014
d_anchor_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.deposit
d_deposit_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Integer
d_deposit_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.policy
d_policy_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  Maybe Integer
d_policy_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.prevAction
d_prevAction_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  AgdaAny
d_prevAction_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.anchor
d_anchor_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1014
d_anchor_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.gid
d_gid_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1036
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.vote
d_vote_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_vote_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1040
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVote.voter
d_voter_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002
d_voter_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1038
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  AgdaAny
d_gvCredential_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1010
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVoter.gvRole
d_gvRole_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846
d_gvRole_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1008
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes.gvCC
d_gvCC_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1054
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1056
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1058
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_906 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892
d_GovActionOf_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_912
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_876 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858
d_GovActionTypeOf_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1002
d_GovVoterOf_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1202 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVote.VoteOf
d_VoteOf_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_VoteOf_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1084
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1580
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.UpdateT
d_UpdateT_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  ()
d_UpdateT_2058 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1530
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppUpd
d_ppUpd_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514
d_ppUpd_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1538
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_2066 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  AgdaAny -> ()
d_ppdWellFormed_2066 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GovParams.updateGroups
d_updateGroups_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1548 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1566
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2072 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_2072 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_464 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_2080 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3522 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_DCertsOf_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3542 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106]
d_GovProposalsOf_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3550
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2092 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2096 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_2096 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_PParamsOf_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2104 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_2104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_TxBodyOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3510
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3562 ->
  AgdaAny -> Integer
d_TxIdOf_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3570
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3406 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2120 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2120 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_2124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2124 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2126 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2126 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2128 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2130 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_2132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2132 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2136 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2138 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2142 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2142 ~v0 = du_isMagmaIsomorphism_2142
du_isMagmaIsomorphism_2142 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2142 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2144 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2144 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2144 v2
du_isMagmaMonomorphism_2144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2150 v0
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
d_isRelIsomorphism_2152 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2152 ~v0 ~v1 v2 = du_isRelIsomorphism_2152 v2
du_isRelIsomorphism_2152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2154 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2154 ~v0 ~v1 v2 = du_isRelMonomorphism_2154 v2
du_isRelMonomorphism_2154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2154 v0
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
d_surjective_2156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2158 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2160 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2164 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2166 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2170 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2170 ~v0 = du_isMagmaMonomorphism_2170
du_isMagmaMonomorphism_2170 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2170 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2176 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2176 ~v0 ~v1 v2 = du_isRelMonomorphism_2176 v2
du_isRelMonomorphism_2176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2178 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2180 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_2190 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2192 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.Emax
d_Emax_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_Emax_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a
d_a_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_a_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.a0
d_a0_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.b
d_b_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_b_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMaxTermLength_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_ccMinSize_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_coinsPerUTxOByte_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_collateralPercentage_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdls
d_costmdls_2224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2224 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_436
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepActivity
d_drepActivity_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepActivity_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_434
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_drepDeposit_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionDeposit_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_govActionLifetime_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_428
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_keyDeposit_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxBlockSize_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxCollateralInputs_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxHeaderSize_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerBlock_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxRefScriptSizePerTx_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxTxSize_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.maxValSize
d_maxValSize_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_maxValSize_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_minUTxOValue_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.nopt
d_nopt_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_nopt_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  Integer
d_poolDeposit_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.prices
d_prices_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.pv
d_pv_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_380 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  ()
d_UpdateT_2282 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyUpdate_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1538
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2288 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  AgdaAny -> ()
d_ppdWellFormed_2288 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_updateGroups_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2294 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2294 ~v0 = du__'63''8599'__2294
du__'63''8599'__2294 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2294 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1234
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2296 v0
  = let v1 = d_HSTransactionStructure_804 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2014
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2298 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2302 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_applyPParamsUpdate_2302 ~v0 = du_applyPParamsUpdate_2302
du_applyPParamsUpdate_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_applyPParamsUpdate_2302
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1282
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2304 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
d_modifiedUpdateGroups_2304 ~v0 = du_modifiedUpdateGroups_2304
du_modifiedUpdateGroups_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_212]
du_modifiedUpdateGroups_2304
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1218
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2306 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesEconomicGroup_2306 ~v0 = du_modifiesEconomicGroup_2306
du_modifiesEconomicGroup_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesEconomicGroup_2306
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_914
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2308 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesGovernanceGroup_2308 ~v0
  = du_modifiesGovernanceGroup_2308
du_modifiesGovernanceGroup_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesGovernanceGroup_2308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1066
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2310 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesNetworkGroup_2310 ~v0 = du_modifiesNetworkGroup_2310
du_modifiesNetworkGroup_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesNetworkGroup_2310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_838
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2312 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesSecurityGroup_2312 ~v0 = du_modifiesSecurityGroup_2312
du_modifiesSecurityGroup_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesSecurityGroup_2312
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1142
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2314 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
d_modifiesTechnicalGroup_2314 ~v0 = du_modifiesTechnicalGroup_2314
du_modifiesTechnicalGroup_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Bool
du_modifiesTechnicalGroup_2314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_990
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2316 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  ()
d_paramsUpdateWellFormed_2316 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2318 v0
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
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2320 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2320 ~v0 = du_'8801''45'update_2320
du_'8801''45'update_2320 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2320 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1248
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_Emax_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_726
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_a_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_696 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_b_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_698 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_ccMaxTermLength_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_748
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_ccMinSize_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_746
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_coinsPerUTxOByte_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_collateralPercentage_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_730
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdls_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_732
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_drepActivity_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_744
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_drepDeposit_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_742
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_224
d_drepThresholds_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_734
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_govActionDeposit_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_740
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_govActionLifetime_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_738
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_keyDeposit_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_700
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxBlockSize_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxCollateralInputs_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxHeaderSize_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxTxSize_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_maxValSize_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_minUTxOValue_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_nopt_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_728
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe Integer
d_poolDeposit_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268
d_poolThresholds_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_736
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_608 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2396 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_2398 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T
d_T_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_2400 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.THash
d_THash_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_2402 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Datum
d_Datum_2406 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_2406 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2420 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2422 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2426 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2430 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Language
d_Language_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2432 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2434 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Prices
d_Prices_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2442 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2444 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2444 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2454 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2456 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.language
d_language_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2462 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q1
d_Q1_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_280 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_282 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_284 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q4
d_Q4_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_286 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolThresholds.Q5
d_Q5_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_268 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_288 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardAddress.net
d_net_2480 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  Integer
d_net_2480 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardAddress.stake
d_stake_2482 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2486 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_CostModel_2488 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T
d_T_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_T_2490 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.THash
d_THash_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_THash_2492 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Datum
d_Datum_2496 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Datum_2496 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2514 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2516 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_ExUnits_2520 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2526 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2526 ~v0 = du_Hashable'45'Script_2526
du_Hashable'45'Script_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_LangDepView_2528 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Language
d_Language_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Language_2530 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_P1Script_2532 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_PlutusScript_2534 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV1_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV2_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV3_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Prices
d_Prices_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Prices_2542 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2544 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Redeemer_2544 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Script
d_Script_2546 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Script_2546 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2556 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2558 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2560 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.getLanguage
d_getLanguage_2562 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2562 ~v0 = du_getLanguage_2562
du_getLanguage_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2562
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2566 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2566 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_2568 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2568 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2570 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2570 ~v0 = du_isP1Script'63'_2570
du_isP1Script'63'_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2570 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_2572 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2572 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2574 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2574 ~v0 = du_isP2Script'63'_2574
du_isP2Script'63'_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2574 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.language
d_language_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny
d_language_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.p1s
d_p1s_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.ps
d_ps_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_2582 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2582 ~v0 = du_toP1Script_2582
du_toP1Script_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_2584 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2584 ~v0 = du_toP2Script_2584
du_toP2Script_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2586 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2588 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2594 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2596 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2598 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2604 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2608 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2612 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value
d_Value_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2616 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2620 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2620 ~v0 = du_addValue_2620
du_addValue_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_2620
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin
d_coin_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2624 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2624 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2628 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.inject
d_inject_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2632 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.policies
d_policies_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2636 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.size
d_size_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2640 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2640 ~v0 = du_sum'7515'_2640
du_sum'7515'_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.ε
d_ε_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2642 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2646 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2646 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2648 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2652 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2654 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2658 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2660 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2662 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2664 ~v0 = du_isMagmaIsomorphism_2664
du_isMagmaIsomorphism_2664 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2664 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2666 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2666 v2
du_isMagmaMonomorphism_2666 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2666 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2668 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2670 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2672 v0
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
d_isRelIsomorphism_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2674 ~v0 ~v1 v2 = du_isRelIsomorphism_2674 v2
du_isRelIsomorphism_2674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2674 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2676 ~v0 ~v1 v2 = du_isRelMonomorphism_2676 v2
du_isRelMonomorphism_2676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2676 v0
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
d_surjective_2678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2678 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2680 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2680 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2682 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2682 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2686 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2686 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2688 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2690 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2690 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2692 ~v0 = du_isMagmaMonomorphism_2692
du_isMagmaMonomorphism_2692 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2692 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2694 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2694 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2696 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2696 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2698 ~v0 ~v1 v2 = du_isRelMonomorphism_2698 v2
du_isRelMonomorphism_2698 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2698 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2700 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2700 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2702 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2702 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.body
d_body_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_body_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.isValid
d_isValid_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Bool
d_isValid_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.txAD
d_txAD_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Maybe Integer
d_txAD_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3622
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.txsize
d_txsize_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_txsize_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Tx.wits
d_wits_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
d_wits_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3464
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe Integer
d_currentTreasury_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3488
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.mint
d_mint_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_mint_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.refInputs
d_refInputs_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3462
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [Integer]
d_reqSignerHashes_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3492
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe Integer
d_scriptIntegrityHash_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3494
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txADhash
d_txADhash_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe Integer
d_txADhash_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txCerts
d_txCerts_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_txCerts_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3470
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txDonation
d_txDonation_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_txDonation_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txFee
d_txFee_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_txFee_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1106]
d_txGovProposals_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3484
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_txGovVotes_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3482
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txId
d_txId_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Integer
d_txId_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3468
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txIns
d_txIns_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  Maybe Integer
d_txNetworkId_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3486
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txOuts
d_txOuts_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3466
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txVldt
d_txVldt_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3476
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3474
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scripts
d_scripts_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3592
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2758 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368]
d_scriptsP1_2758 ~v0 = du_scriptsP1_2758
du_scriptsP1_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_368]
du_scriptsP1_2758
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3598
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txdats
d_txdats_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580 ->
  [Integer]
d_txdats_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3594
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3596
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3590
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2788 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2788 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2790 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2792 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2794 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2796 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__2798 a0 a1 a2 a3
                                                      a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__2800 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CCHotKeys
d_CCHotKeys_2802 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_2802 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv
d_CertEnv_2816 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState
d_CertState_2820 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertStateOf
d_CertStateOf_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DCert
d_DCert_2828 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState
d_DState_2838 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DStateOf
d_DStateOf_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_DStateOf_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_2844 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1378
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe d_HSTransactionStructure_804 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2846 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe d_HSTransactionStructure_804 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_2848 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1376
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe d_HSTransactionStructure_804 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv
d_DelegEnv_2850 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositPurpose
d_DepositPurpose_2854 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Deposits
d_Deposits_2856 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2856 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DepositsOf
d_DepositsOf_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState
d_GState_2866 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GStateOf
d_GStateOf_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454
d_GStateOf_2870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_2874 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_2878 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
d_HasCCHotKeys'45'CertState_2878 ~v0
  = du_HasCCHotKeys'45'CertState_2878
du_HasCCHotKeys'45'CertState_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
du_HasCCHotKeys'45'CertState_2878
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1606
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2880 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
d_HasCCHotKeys'45'GState_2880 ~v0 = du_HasCCHotKeys'45'GState_2880
du_HasCCHotKeys'45'GState_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242
du_HasCCHotKeys'45'GState_2880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1594
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_2882 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2882 ~v0 = du_HasCast'45'CertEnv_2882
du_HasCast'45'CertEnv_2882 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1622
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_2884 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2884 ~v0 = du_HasCast'45'CertState_2884
du_HasCast'45'CertState_2884 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1630
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_2886 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2886 ~v0 = du_HasCast'45'DState_2886
du_HasCast'45'DState_2886 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2886
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1624
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2888 ~v0 = du_HasCast'45'DelegEnv_2888
du_HasCast'45'DelegEnv_2888 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2888
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1632
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_2890 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2890 ~v0 = du_HasCast'45'GState_2890
du_HasCast'45'GState_2890 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2890
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1628
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_2892 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2892 ~v0 = du_HasCast'45'PState_2892
du_HasCast'45'PState_2892 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2892
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1626
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCertState
d_HasCertState_2894 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1620
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe d_HSTransactionStructure_804 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_2900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'CertState_2900 ~v0 = du_HasDReps'45'CertState_2900
du_HasDReps'45'CertState_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
du_HasDReps'45'CertState_2900
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1604
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_2902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'GState_2902 ~v0 = du_HasDReps'45'GState_2902
du_HasDReps'45'GState_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
du_HasDReps'45'GState_2902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1592
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState
d_HasDState_2904 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_2908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502
d_HasDState'45'CertState_2908 ~v0 = du_HasDState'45'CertState_2908
du_HasDState'45'CertState_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502
du_HasDState'45'CertState_2908
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1596
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDeposits
d_HasDeposits_2910 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState
d_HasGState_2914 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_2918 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542
d_HasGState'45'CertState_2918 ~v0 = du_HasGState'45'CertState_2918
du_HasGState'45'CertState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542
du_HasGState'45'CertState_2918
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1600
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_2920 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
d_HasPParams'45'CertEnv_2920 ~v0 = du_HasPParams'45'CertEnv_2920
du_HasPParams'45'CertEnv_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_444
du_HasPParams'45'CertEnv_2920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1578
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState
d_HasPState_2922 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_2926 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522
d_HasPState'45'CertState_2926 ~v0 = du_HasPState'45'CertState_2926
du_HasPState'45'CertState_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522
du_HasPState'45'CertState_2926
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1598
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools
d_HasPools_2928 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_2932 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
d_HasPools'45'CertState_2932 ~v0 = du_HasPools'45'CertState_2932
du_HasPools'45'CertState_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
du_HasPools'45'CertState_2932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1608
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_2934 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
d_HasPools'45'PState_2934 ~v0 = du_HasPools'45'PState_2934
du_HasPools'45'PState_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258
du_HasPools'45'PState_2934
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1588
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRetiring
d_HasRetiring_2936 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_2940 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1274
d_HasRetiring'45'PState_2940 ~v0 = du_HasRetiring'45'PState_2940
du_HasRetiring'45'PState_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1274
du_HasRetiring'45'PState_2940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1590
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards
d_HasRewards_2942 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_2946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'CertState_2946 ~v0
  = du_HasRewards'45'CertState_2946
du_HasRewards'45'CertState_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'CertState_2946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1602
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_2948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
d_HasRewards'45'DState_2948 ~v0 = du_HasRewards'45'DState_2948
du_HasRewards'45'DState_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290
du_HasRewards'45'DState_2948
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1586
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStake
d_HasStake_2950 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_2954 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_2958 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1322
d_HasStakeDelegs'45'CertState_2958 ~v0
  = du_HasStakeDelegs'45'CertState_2958
du_HasStakeDelegs'45'CertState_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1322
du_HasStakeDelegs'45'CertState_2958
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1612
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_2960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1322
d_HasStakeDelegs'45'DState_2960 ~v0
  = du_HasStakeDelegs'45'DState_2960
du_HasStakeDelegs'45'DState_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1322
du_HasStakeDelegs'45'DState_2960
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1584
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_2962 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
d_HasVoteDelegs'45'CertState_2962 ~v0
  = du_HasVoteDelegs'45'CertState_2962
du_HasVoteDelegs'45'CertState_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
du_HasVoteDelegs'45'CertState_2962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1610
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2964 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
d_HasVoteDelegs'45'DState_2964 ~v0
  = du_HasVoteDelegs'45'DState_2964
du_HasVoteDelegs'45'DState_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1076
du_HasVoteDelegs'45'DState_2964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1582
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_2966 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'CertEnv_2966 ~v0
  = du_HasWithdrawals'45'CertEnv_2966
du_HasWithdrawals'45'CertEnv_2966 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'CertEnv_2966
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1580
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState
d_PState_2972 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PStateOf
d_PStateOf_2976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_PStateOf_2976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolEnv
d_PoolEnv_2980 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2980 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Pools
d_Pools_2982 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_2982 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PoolsOf
d_PoolsOf_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1266
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Retiring
d_Retiring_2986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_2986 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RetiringOf
d_RetiringOf_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Rewards
d_Rewards_2990 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_2990 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.RewardsOf
d_RewardsOf_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.Stake
d_Stake_2994 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_2994 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakeDelegs
d_StakeDelegs_2996 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_2996 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1322 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1330
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakeOf
d_StakeOf_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1306 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1314
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams
d_StakePoolParams_3002 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.cwitness
d_cwitness_3008 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_3008 ~v0 = du_cwitness_3008
du_cwitness_3008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_3008
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1380
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.isPoolRegistered
d_isPoolRegistered_3016 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166
d_isPoolRegistered_3016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1712
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe d_HSTransactionStructure_804 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rewardsBalance
d_rewardsBalance_3026 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  Integer
d_rewardsBalance_3026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1614
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
         (coe d_HSTransactionStructure_804 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_3074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.epoch
d_epoch_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  Integer
d_epoch_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.pp
d_pp_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pp_3078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1412 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.votes
d_votes_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_votes_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertEnv.wdrls
d_wdrls_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_3082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.dState
d_dState_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_dState_3086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1474
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.gState
d_gState_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454
d_gState_3088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.CertState.pState
d_pState_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_3090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.rewards
d_rewards_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1434
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DState.voteDelegs
d_voteDelegs_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.delegatees
d_delegatees_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1482 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_3120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1494
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pools
d_pools_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1492
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DelegEnv.pparams
d_pparams_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1482 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.GState.dreps
d_dreps_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466
d_CertStateOf_3148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1570
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1422
d_DStateOf_3152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1454
d_GStateOf_3160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_PStateOf_3164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1258 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1266
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1274 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1290 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1298
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1306 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1314
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1322 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1330
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.fPools
d_fPools_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1448
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.pools
d_pools_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.PState.retiring
d_retiring_3192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.cost
d_cost_3196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  Integer
d_cost_3196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1180 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.margin
d_margin_3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1182
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.owners
d_owners_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  [Integer]
d_owners_3200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.pledge
d_pledge_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  Integer
d_pledge_3202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1166 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_3204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1186
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3208 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_3220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2522
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.UTCTime
d_UTCTime_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_UTCTime_3222 = erased
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  Integer -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_3224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2538
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_getLanguageView_2536
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_indexOf_2466
d_indexOfImp_3228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2528
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.runPLCScript
d_runPLCScript_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer] -> Bool
d_runPLCScript_3230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_runPLCScript_2530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.serSize
d_serSize_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  Integer -> Integer
d_serSize_3234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2526
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.transVITime
d_transVITime_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_transVITime_3236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_transVITime_2540
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_3238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2524
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2424 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2410 ->
  Integer
d_valContext_3240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_valContext_2534
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3256 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496
d_HSAbstractFunctions_3256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2542
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (\ v1 v2 -> 0 :: Integer) (\ v1 -> 0 :: Integer)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2492
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1378
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
                               (coe d_HSTransactionStructure_804 (coe v0))))
                         (coe v3) (coe v1))
                    v2)))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                            (coe
                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                         (coe v3) (coe du_rewardAddressToSOP_3262 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3276))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3262)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2)))))))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1346
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2642
                          (coe d_HSTransactionStructure_804 (coe v0)))
                       (coe v1))
                    v2))))
      (\ v1 v2 v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
             -> coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_380
                  (coe v2)
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
             -> coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_396
                  (coe v2)
           _ -> MAlonzo.RTE.mazUnreachableError)
      (\ v1 v2 -> 0 :: Integer)
      (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v1 ->
         coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
      (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.rewardAddressToSOP
d_rewardAddressToSOP_3262 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3262 ~v0 v1 = du_rewardAddressToSOP_3262 v1
du_rewardAddressToSOP_3262 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3262 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))
             MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.ExternalStructures._.DecTotalOrder-RewardAddressSOP
d_DecTotalOrder'45'RewardAddressSOP_3276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3276 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3276
du_DecTotalOrder'45'RewardAddressSOP_3276 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3276
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict.du_'215''45'isDecTotalOrder_334
         (coe
            MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)
         (coe
            MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder.du_'8846''45''60''45'isDecTotalOrder_596
            (coe
               MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)
            (coe
               MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)))
