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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Properties
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show

-- _.THash
d_THash_26 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_26 = erased
-- _.Slot
d_Slot_84 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  ()
d_Slot_84 = erased
-- Ledger.Dijkstra.Specification.Script.Base._.Credential
d_Credential_132 a0 a1 a2 a3 a4 a5 a6 = ()
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure
d_P1ScriptStructure_328 a0 a1 a2 a3 = ()
data T_P1ScriptStructure_328
  = C_constructor_354 ([AgdaAny] ->
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.P1Script
d_P1Script_342 :: T_P1ScriptStructure_328 -> ()
d_P1Script_342 = erased
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.validP1Script
d_validP1Script_344 ::
  T_P1ScriptStructure_328 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_344 = erased
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_348 ::
  T_P1ScriptStructure_328 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_348 v0
  = case coe v0 of
      C_constructor_354 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_350 ::
  T_P1ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_350 v0
  = case coe v0 of
      C_constructor_354 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_352 ::
  T_P1ScriptStructure_328 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_352 v0
  = case coe v0 of
      C_constructor_354 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusLanguage
d_PlutusLanguage_356 a0 a1 a2 a3 = ()
data T_PlutusLanguage_356
  = C_V1_358 | C_V2_360 | C_V3_362 | C_V4_364
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure
d_PlutusStructure_366 a0 a1 a2 a3 = ()
data T_PlutusStructure_366
  = C_constructor_524 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
                      MAlonzo.Code.Function.Bundles.T_Injection_842
                      MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
                      MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      (AgdaAny ->
                       [AgdaAny] ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Script.Base._.T
d_T_420 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36 ->
  () ->
  () ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Injection_842 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 -> ()
d_T_420 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Dataʰ
d_Data'688'_446 ::
  T_PlutusStructure_366 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_446 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Language
d_Language_448 :: T_PlutusStructure_366 -> ()
d_Language_448 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusScript
d_PlutusScript_450 :: T_PlutusStructure_366 -> ()
d_PlutusScript_450 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.CostModel
d_CostModel_452 :: T_PlutusStructure_366 -> ()
d_CostModel_452 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Prices
d_Prices_454 :: T_PlutusStructure_366 -> ()
d_Prices_454 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.LangDepView
d_LangDepView_456 :: T_PlutusStructure_366 -> ()
d_LangDepView_456 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.ExUnits
d_ExUnits_458 :: T_PlutusStructure_366 -> ()
d_ExUnits_458 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_460 ::
  T_PlutusStructure_366 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_460 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_462 ::
  T_PlutusStructure_366 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_462 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_464 ::
  T_PlutusStructure_366 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_464 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_466 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_466 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_468 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_468 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-CostModel
d_Show'45'CostModel_470 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_470 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-Language
d_DecEq'45'Language_472 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_472 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-Language
d_Show'45'Language_474 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_474 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._≥ᵉ_
d__'8805''7497'__476 ::
  T_PlutusStructure_366 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__476 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_478 ::
  T_PlutusStructure_366 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_478 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_480 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_480 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_482 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_482 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_484 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_484 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-Prices
d_Show'45'Prices_486 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_486 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV1
d_PlutusV1_488 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_366 -> AgdaAny
d_PlutusV1_488 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV1_488 v4
du_PlutusV1_488 :: T_PlutusStructure_366 -> AgdaAny
du_PlutusV1_488 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_460 (coe v0)) (coe C_V1_358)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV2
d_PlutusV2_490 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_366 -> AgdaAny
d_PlutusV2_490 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV2_490 v4
du_PlutusV2_490 :: T_PlutusStructure_366 -> AgdaAny
du_PlutusV2_490 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_460 (coe v0)) (coe C_V2_360)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV3
d_PlutusV3_492 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_366 -> AgdaAny
d_PlutusV3_492 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV3_492 v4
du_PlutusV3_492 :: T_PlutusStructure_366 -> AgdaAny
du_PlutusV3_492 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_460 (coe v0)) (coe C_V3_362)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV4
d_PlutusV4_494 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_366 -> AgdaAny
d_PlutusV4_494 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV4_494 v4
du_PlutusV4_494 :: T_PlutusStructure_366 -> AgdaAny
du_PlutusV4_494 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_460 (coe v0)) (coe C_V4_364)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.T
d_T_498 :: T_PlutusStructure_366 -> ()
d_T_498 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.THash
d_THash_500 :: T_PlutusStructure_366 -> ()
d_THash_500 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.DecEq-T
d_DecEq'45'T_502 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_502 v0
  = let v1 = d_Data'688'_446 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.DecEq-THash
d_DecEq'45'THash_504 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_504 v0
  = let v1 = d_Data'688'_446 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.Show-THash
d_Show'45'THash_506 ::
  T_PlutusStructure_366 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_506 v0
  = let v1 = d_Data'688'_446 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.T-Hashable
d_T'45'Hashable_508 ::
  T_PlutusStructure_366 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_508 v0
  = let v1 = d_Data'688'_446 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.T-isHashable
d_T'45'isHashable_510 ::
  T_PlutusStructure_366 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_510 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe d_Data'688'_446 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Datum
d_Datum_512 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_366 -> ()
d_Datum_512 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Redeemer
d_Redeemer_514 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_366 -> ()
d_Redeemer_514 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.validPlutusScript
d_validPlutusScript_516 ::
  T_PlutusStructure_366 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_516 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_520 ::
  T_PlutusStructure_366 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_520 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.language
d_language_522 :: T_PlutusStructure_366 -> AgdaAny -> AgdaAny
d_language_522 v0
  = case coe v0 of
      C_constructor_524 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure
d_ScriptStructure_526 a0 a1 a2 a3 = ()
data T_ScriptStructure_526
  = C_constructor_698 T_P1ScriptStructure_328
                      (() ->
                       () ->
                       () ->
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10)
                      T_PlutusStructure_366
-- Ledger.Dijkstra.Specification.Script.Base._.Dec-validP1Script
d_Dec'45'validP1Script_532 ::
  T_P1ScriptStructure_328 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_532 v0
  = coe d_Dec'45'validP1Script_348 (coe v0)
-- Ledger.Dijkstra.Specification.Script.Base._.DecEq-P1Script
d_DecEq'45'P1Script_534 ::
  T_P1ScriptStructure_328 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_534 v0 = coe d_DecEq'45'P1Script_352 (coe v0)
-- Ledger.Dijkstra.Specification.Script.Base._.Hashable-P1Script
d_Hashable'45'P1Script_536 ::
  T_P1ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_536 v0
  = coe d_Hashable'45'P1Script_350 (coe v0)
-- Ledger.Dijkstra.Specification.Script.Base._.P1Script
d_P1Script_538 :: T_P1ScriptStructure_328 -> ()
d_P1Script_538 = erased
-- Ledger.Dijkstra.Specification.Script.Base._.validP1Script
d_validP1Script_540 ::
  T_P1ScriptStructure_328 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_540 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.p1s
d_p1s_552 :: T_ScriptStructure_526 -> T_P1ScriptStructure_328
d_p1s_552 v0
  = case coe v0 of
      C_constructor_698 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Dec-validP1Script
d_Dec'45'validP1Script_556 ::
  T_ScriptStructure_526 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_556 v0
  = coe d_Dec'45'validP1Script_348 (coe d_p1s_552 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-P1Script
d_DecEq'45'P1Script_558 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_558 v0
  = coe d_DecEq'45'P1Script_352 (coe d_p1s_552 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Hashable-P1Script
d_Hashable'45'P1Script_560 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_560 v0
  = coe d_Hashable'45'P1Script_350 (coe d_p1s_552 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.P1Script
d_P1Script_562 :: T_ScriptStructure_526 -> ()
d_P1Script_562 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.validP1Script
d_validP1Script_564 ::
  T_ScriptStructure_526 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_564 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_572 ::
  T_ScriptStructure_526 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_572 v0
  = case coe v0 of
      C_constructor_698 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.ps
d_ps_574 :: T_ScriptStructure_526 -> T_PlutusStructure_366
d_ps_574 v0
  = case coe v0 of
      C_constructor_698 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._._≥ᵉ_
d__'8805''7497'__578 ::
  T_ScriptStructure_526 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__578 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.CostModel
d_CostModel_580 :: T_ScriptStructure_526 -> ()
d_CostModel_580 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.T
d_T_582 :: T_ScriptStructure_526 -> ()
d_T_582 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.THash
d_THash_584 :: T_ScriptStructure_526 -> ()
d_THash_584 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Dataʰ
d_Data'688'_586 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_586 v0 = coe d_Data'688'_446 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Datum
d_Datum_588 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> ()
d_Datum_588 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_590 ::
  T_ScriptStructure_526 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_590 v0
  = coe d_Dec'45'validPlutusScript_520 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEQ-Prices
d_DecEQ'45'Prices_592 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_592 v0
  = coe d_DecEQ'45'Prices_482 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-CostModel
d_DecEq'45'CostModel_594 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_594 v0
  = coe d_DecEq'45'CostModel_466 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_596 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_596 v0
  = coe d_DecEq'45'ExUnits_480 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_598 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_598 v0
  = coe d_DecEq'45'LangDepView_468 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-Language
d_DecEq'45'Language_600 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_600 v0
  = coe d_DecEq'45'Language_472 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-T
d_DecEq'45'T_602 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_602 v0
  = let v1 = d_Data'688'_446 (coe d_ps_574 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-THash
d_DecEq'45'THash_604 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_604 v0
  = let v1 = d_Data'688'_446 (coe d_ps_574 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_606 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_606 v0
  = coe d_ExUnit'45'CommutativeMonoid_462 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.ExUnits
d_ExUnits_608 :: T_ScriptStructure_526 -> ()
d_ExUnits_608 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_610 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_610 v0
  = coe d_Hashable'45'PlutusScript_464 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.LangDepView
d_LangDepView_612 :: T_ScriptStructure_526 -> ()
d_LangDepView_612 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Language
d_Language_614 :: T_ScriptStructure_526 -> ()
d_Language_614 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusScript
d_PlutusScript_616 :: T_ScriptStructure_526 -> ()
d_PlutusScript_616 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV1
d_PlutusV1_618 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> AgdaAny
d_PlutusV1_618 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV1_618 v4
du_PlutusV1_618 :: T_ScriptStructure_526 -> AgdaAny
du_PlutusV1_618 v0 = coe du_PlutusV1_488 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV2
d_PlutusV2_620 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> AgdaAny
d_PlutusV2_620 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV2_620 v4
du_PlutusV2_620 :: T_ScriptStructure_526 -> AgdaAny
du_PlutusV2_620 v0 = coe du_PlutusV2_490 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV3
d_PlutusV3_622 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> AgdaAny
d_PlutusV3_622 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV3_622 v4
du_PlutusV3_622 :: T_ScriptStructure_526 -> AgdaAny
du_PlutusV3_622 v0 = coe du_PlutusV3_492 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV4
d_PlutusV4_624 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> AgdaAny
d_PlutusV4_624 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV4_624 v4
du_PlutusV4_624 :: T_ScriptStructure_526 -> AgdaAny
du_PlutusV4_624 v0 = coe du_PlutusV4_494 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Prices
d_Prices_626 :: T_ScriptStructure_526 -> ()
d_Prices_626 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Redeemer
d_Redeemer_628 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> ()
d_Redeemer_628 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-CostModel
d_Show'45'CostModel_630 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_630 v0
  = coe d_Show'45'CostModel_470 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-ExUnits
d_Show'45'ExUnits_632 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_632 v0
  = coe d_Show'45'ExUnits_484 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-Language
d_Show'45'Language_634 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_634 v0
  = coe d_Show'45'Language_474 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-Prices
d_Show'45'Prices_636 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_636 v0
  = coe d_Show'45'Prices_486 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-THash
d_Show'45'THash_638 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_638 v0
  = let v1 = d_Data'688'_446 (coe d_ps_574 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.T-Hashable
d_T'45'Hashable_640 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_640 v0
  = let v1 = d_Data'688'_446 (coe d_ps_574 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.T-isHashable
d_T'45'isHashable_642 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe d_Data'688'_446 (coe d_ps_574 (coe v0)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.fromPlutusLanguage
d_fromPlutusLanguage_644 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_644 v0
  = coe d_fromPlutusLanguage_460 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.language
d_language_646 :: T_ScriptStructure_526 -> AgdaAny -> AgdaAny
d_language_646 v0 = coe d_language_522 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.validPlutusScript
d_validPlutusScript_648 ::
  T_ScriptStructure_526 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_648 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_650 ::
  T_ScriptStructure_526 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_650 v0
  = coe d_'8805''7497''45'Dec_478 (coe d_ps_574 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.Script
d_Script_652 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> ()
d_Script_652 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.Hashable-Script
d_Hashable'45'Script_654 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_654 ~v0 ~v1 ~v2 ~v3 v4
  = du_Hashable'45'Script_654 v4
du_Hashable'45'Script_654 ::
  T_ScriptStructure_526 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_654 v0
  = coe
      d_hashRespectsUnion_572 v0 erased erased erased
      (d_Hashable'45'P1Script_350 (coe d_p1s_552 (coe v0)))
      (d_Hashable'45'PlutusScript_464 (coe d_ps_574 (coe v0)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP1Script
d_isP1Script_656 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_656 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP1Script?
d_isP1Script'63'_660 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isP1Script'63'_660 v5
du_isP1Script'63'_660 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_660 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isNativeScript
d_isNativeScript_666 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_666 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.toP1Script
d_toP1Script_668 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_668 ~v0 ~v1 ~v2 ~v3 ~v4 = du_toP1Script_668
du_toP1Script_668 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_668 = coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP2Script
d_isP2Script_670 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_670 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP2Script?
d_isP2Script'63'_674 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_674 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isP2Script'63'_674 v5
du_isP2Script'63'_674 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_674 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.toP2Script
d_toP2Script_680 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_680 ~v0 ~v1 ~v2 ~v3 ~v4 = du_toP2Script_680
du_toP2Script_680 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_680 = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.LanguageCostModels
d_LanguageCostModels_682 a0 a1 a2 a3 a4 = ()
newtype T_LanguageCostModels_682
  = C_mkLanguageCostModels_688 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_686 ::
  T_LanguageCostModels_682 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_686 v0
  = case coe v0 of
      C_mkLanguageCostModels_688 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_690 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_690 ~v0 ~v1 ~v2 ~v3 v4
  = du_DecEq'45'LanguageCostModels_690 v4
du_DecEq'45'LanguageCostModels_690 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_690 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_mkLanguageCostModels_688 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_mkLanguageCostModels_688 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Data.List.Properties.du_'8801''45'dec_60
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               (d_DecEq'45'Language_472 (coe d_ps_574 (coe v0)))
                                               (d_DecEq'45'CostModel_466 (coe d_ps_574 (coe v0)))))
                                         (coe v2) (coe v4) in
                               coe
                                 (case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                      -> if coe v6
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._
d___694 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d___694 ~v0 ~v1 ~v2 ~v3 ~v4 = du___694
du___694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du___694 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6 v4 v5
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_696 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_696 ~v0 ~v1 ~v2 ~v3 v4
  = du_Show'45'LanguageCostModels_696 v4
du_Show'45'LanguageCostModels_696 ::
  T_ScriptStructure_526 -> MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_696 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_mkLanguageCostModels_688 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("mkLanguageCostModels" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Data.String.Base.d_braces_48
                           (coe
                              MAlonzo.Code.Data.String.Base.d_intersperse_30
                              (", " :: Data.Text.Text)
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    MAlonzo.Code.Class.Show.Core.d_show_16
                                    (coe
                                       du___694 () erased () erased
                                       (d_Show'45'Language_474 (coe d_ps_574 (coe v0)))
                                       (d_Show'45'CostModel_470 (coe d_ps_574 (coe v0)))))
                                 (coe v2)))))
              _ -> MAlonzo.RTE.mazUnreachableError))
