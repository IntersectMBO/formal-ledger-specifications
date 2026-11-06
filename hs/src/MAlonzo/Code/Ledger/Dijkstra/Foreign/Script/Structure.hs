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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Construct.DirectProduct
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Dijkstra.Foreign.Script.Structure._
d___12 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___12 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._
d___14 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d___14 ~v0 = du___14
du___14 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du___14
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSEpochStructure_10
-- Ledger.Dijkstra.Foreign.Script.Structure._
d___16 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d___16 ~v0 = du___16
du___16 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
du___16
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.Script.Structure._.P1ScriptStructure
d_P1ScriptStructure_20 a0 = ()
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusLanguage
d_PlutusLanguage_24 a0 = ()
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure
d_PlutusStructure_26 a0 = ()
-- Ledger.Dijkstra.Foreign.Script.Structure._.ScriptStructure
d_ScriptStructure_30 a0 = ()
-- Ledger.Dijkstra.Foreign.Script.Structure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_44 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_44 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_46 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.P1ScriptStructure.P1Script
d_P1Script_50 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  ()
d_P1Script_50 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.P1ScriptStructure.validP1Script
d_validP1Script_52 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_52 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure._≤ᵉᵘ_
d__'8804''7497''7512'__66 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__66 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.CostModel
d_CostModel_70 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_CostModel_70 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Dataʰ
d_Data'688'_76 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_76 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_80 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_80 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_82 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_82 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_84 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_86 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_88 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_90 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.ExUnits
d_ExUnits_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_ExUnits_98 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.LangDepView
d_LangDepView_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_LangDepView_104 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Language
d_Language_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Language_106 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.PlutusScript
d_PlutusScript_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_PlutusScript_108 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Prices
d_Prices_118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Prices_118 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Show-Language
d_Show'45'Language_126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.Show-Prices
d_Show'45'Prices_128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.language
d_language_138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny
d_language_138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.validPlutusScript
d_validPlutusScript_140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_140 = erased
-- Ledger.Dijkstra.Foreign.Script.Structure._.PlutusStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.ScriptStructure.p1s
d_p1s_256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.ScriptStructure.ps
d_ps_258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe v0)
-- Ledger.Dijkstra.Foreign.Script.Structure._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_394
      (coe d___12 (coe v0)) (coe du___14)
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
-- Ledger.Dijkstra.Foreign.Script.Structure._.EvalNativeScript
d_EvalNativeScript_280 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.Script.Structure._.NativeScript
d_NativeScript_282 a0 = ()
-- Ledger.Dijkstra.Foreign.Script.Structure.HSNativeScript
d_HSNativeScript_344 a0 = ()
data T_HSNativeScript_344
  = C_constructor_358 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324
                      Integer Integer
-- Ledger.Dijkstra.Foreign.Script.Structure.HSNativeScript.nativeScript
d_nativeScript_352 ::
  T_HSNativeScript_344 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324
d_nativeScript_352 v0
  = case coe v0 of
      C_constructor_358 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Script.Structure.HSNativeScript.nsScriptHash
d_nsScriptHash_354 :: T_HSNativeScript_344 -> Integer
d_nsScriptHash_354 v0
  = case coe v0 of
      C_constructor_358 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Script.Structure.HSNativeScript.nsScriptSize
d_nsScriptSize_356 :: T_HSNativeScript_344 -> Integer
d_nsScriptSize_356 v0
  = case coe v0 of
      C_constructor_358 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Script.Structure.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_360 ~v0
  = du_Hashable'45'HSNativeScript_360
du_Hashable'45'HSNativeScript_360 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSNativeScript_360
  = coe
      MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
      (coe (\ v0 -> d_nsScriptHash_354 (coe v0)))
-- Ledger.Dijkstra.Foreign.Script.Structure.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_362 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_358 v2 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          C_constructor_358 v6 v7 v8
                            -> let v9
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_340
                                            (coe d___12 (coe v0)) (coe du___14)
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
                                         v2 v6 in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then let v12
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v3) (coe v7) in
                                                coe
                                                  (case coe v12 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                       -> if coe v13
                                                            then let v15
                                                                       = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                           (coe v4) (coe v8) in
                                                                 coe
                                                                   (case coe v15 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                        -> if coe v16
                                                                             then coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       erased)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v13)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Script.Structure.HSP1ScriptStructure
d_HSP1ScriptStructure_364 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_HSP1ScriptStructure_364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_constructor_350
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_394
           (coe d___12 (coe v0)) (coe du___14)
           (coe
              MAlonzo.Code.Class.DecEq.Core.C_constructor_32
              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
           (coe v1) (coe v2) (coe v3) (coe d_nativeScript_352 (coe v4)))
      (coe du_Hashable'45'HSNativeScript_360)
      (d_DecEq'45'HSNativeScript_362 (coe v0))
-- Ledger.Dijkstra.Foreign.Script.Structure.HSPlutusScript
d_HSPlutusScript_372 a0 = ()
data T_HSPlutusScript_372
  = C_MkHSPlutusScript_386 Integer Integer
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
-- Ledger.Dijkstra.Foreign.Script.Structure.HSPlutusScript.psScriptHash
d_psScriptHash_380 :: T_HSPlutusScript_372 -> Integer
d_psScriptHash_380 v0
  = case coe v0 of
      C_MkHSPlutusScript_386 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Script.Structure.HSPlutusScript.psScriptSize
d_psScriptSize_382 :: T_HSPlutusScript_372 -> Integer
d_psScriptSize_382 v0
  = case coe v0 of
      C_MkHSPlutusScript_386 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Script.Structure.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_384 ::
  T_HSPlutusScript_372 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_384 v0
  = case coe v0 of
      C_MkHSPlutusScript_386 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Script.Structure.fromPlutusLanguage
d_fromPlutusLanguage_388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_388 ~v0 = du_fromPlutusLanguage_388
du_fromPlutusLanguage_388 ::
  MAlonzo.Code.Function.Bundles.T_Injection_842
du_fromPlutusLanguage_388
  = coe
      MAlonzo.Code.Function.Bundles.C_constructor_916
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V1_354
                -> coe MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV1_12
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V2_356
                -> coe MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV2_14
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V3_358
                -> coe MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV3_16
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V4_360
                -> coe MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.C_PV4_18
              _ -> MAlonzo.RTE.mazUnreachableError))
      erased
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V1_354
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V1_354
                            -> erased
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V2_356
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V3_358
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V4_360
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V2_356
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V1_354
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V2_356
                            -> erased
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V3_358
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V4_360
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V3_358
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V1_354
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V2_356
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V3_358
                            -> erased
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V4_360
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V4_360
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V1_354
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V2_356
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V3_358
                            -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_V4_360
                            -> erased
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Script.Structure.HSP2ScriptStructure
d_HSP2ScriptStructure_398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_HSP2ScriptStructure_398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_constructor_528
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_HashableSet'45'ℕ_36
      (coe du_fromPlutusLanguage_388)
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Algebra.Construct.DirectProduct.du_commutativeMonoid_1546
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476)
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476)))
      (coe du_Hashable'45'HSPlutusScript_412)
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v1 v2 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v1 v2 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v1 -> seq (coe v1) (coe ("tt" :: Data.Text.Text)))))
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
           (coe
              MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (\ v1 v2 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
         (coe MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36)
         (coe MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v1 -> seq (coe v1) (coe ("tt" :: Data.Text.Text)))))
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
           (coe
              MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_extValidPlutusScript_20
              (coe v0))
           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      (\ v1 -> d_psScriptLanguage_384 (coe v1))
-- Ledger.Dijkstra.Foreign.Script.Structure._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSPlutusScript_412 ~v0
  = du_Hashable'45'HSPlutusScript_412
du_Hashable'45'HSPlutusScript_412 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSPlutusScript_412
  = coe
      MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
      (coe (\ v0 -> d_psScriptHash_380 (coe v0)))
-- Ledger.Dijkstra.Foreign.Script.Structure.HSScriptStructure
d_HSScriptStructure_440 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530
d_HSScriptStructure_440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_constructor_706
      (coe d_HSP1ScriptStructure_364 (coe v0))
      (\ v1 v2 v3 v4 v5 -> coe du_hashRespectsUnion_452 v4 v5)
      (coe d_HSP2ScriptStructure_398 (coe v0))
-- Ledger.Dijkstra.Foreign.Script.Structure._.hashRespectsUnion
d_hashRespectsUnion_452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_452 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hashRespectsUnion_452 v4 v5
du_hashRespectsUnion_452 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_hashRespectsUnion_452 v0 v1
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
