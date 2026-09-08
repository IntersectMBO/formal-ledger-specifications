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
d_THash_58 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_58 = erased
-- _.Slot
d_Slot_128 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  ()
d_Slot_128 = erased
-- Ledger.Dijkstra.Specification.Script.Base._.Credential
d_Credential_174 a0 a1 a2 a3 a4 a5 a6 = ()
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure
d_P1ScriptStructure_370 a0 a1 a2 a3 = ()
data T_P1ScriptStructure_370
  = C_constructor_396 ([AgdaAny] ->
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.P1Script
d_P1Script_384 :: T_P1ScriptStructure_370 -> ()
d_P1Script_384 = erased
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.validP1Script
d_validP1Script_386 ::
  T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_386 = erased
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_390 ::
  T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_390 v0
  = case coe v0 of
      C_constructor_396 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_392 ::
  T_P1ScriptStructure_370 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_392 v0
  = case coe v0 of
      C_constructor_396 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_394 ::
  T_P1ScriptStructure_370 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_394 v0
  = case coe v0 of
      C_constructor_396 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusLanguage
d_PlutusLanguage_398 a0 a1 a2 a3 = ()
data T_PlutusLanguage_398
  = C_V1_400 | C_V2_402 | C_V3_404 | C_V4_406
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure
d_PlutusStructure_408 a0 a1 a2 a3 = ()
data T_PlutusStructure_408
  = C_constructor_566 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
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
d_T_462 ::
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
d_T_462 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Dataʰ
d_Data'688'_488 ::
  T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_488 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Language
d_Language_490 :: T_PlutusStructure_408 -> ()
d_Language_490 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusScript
d_PlutusScript_492 :: T_PlutusStructure_408 -> ()
d_PlutusScript_492 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.CostModel
d_CostModel_494 :: T_PlutusStructure_408 -> ()
d_CostModel_494 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Prices
d_Prices_496 :: T_PlutusStructure_408 -> ()
d_Prices_496 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.LangDepView
d_LangDepView_498 :: T_PlutusStructure_408 -> ()
d_LangDepView_498 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.ExUnits
d_ExUnits_500 :: T_PlutusStructure_408 -> ()
d_ExUnits_500 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_502 ::
  T_PlutusStructure_408 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_502 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_504 ::
  T_PlutusStructure_408 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_504 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_506 ::
  T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_506 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_508 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_508 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_510 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_510 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-CostModel
d_Show'45'CostModel_512 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_512 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-Language
d_DecEq'45'Language_514 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_514 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-Language
d_Show'45'Language_516 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_516 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._≥ᵉ_
d__'8805''7497'__518 ::
  T_PlutusStructure_408 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__518 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_520 ::
  T_PlutusStructure_408 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_520 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_522 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_522 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_524 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_524 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_526 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_526 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Show-Prices
d_Show'45'Prices_528 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_528 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV1
d_PlutusV1_530 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_408 -> AgdaAny
d_PlutusV1_530 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV1_530 v4
du_PlutusV1_530 :: T_PlutusStructure_408 -> AgdaAny
du_PlutusV1_530 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_502 (coe v0)) (coe C_V1_400)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV2
d_PlutusV2_532 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_408 -> AgdaAny
d_PlutusV2_532 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV2_532 v4
du_PlutusV2_532 :: T_PlutusStructure_408 -> AgdaAny
du_PlutusV2_532 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_502 (coe v0)) (coe C_V2_402)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV3
d_PlutusV3_534 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_408 -> AgdaAny
d_PlutusV3_534 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV3_534 v4
du_PlutusV3_534 :: T_PlutusStructure_408 -> AgdaAny
du_PlutusV3_534 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_502 (coe v0)) (coe C_V3_404)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.PlutusV4
d_PlutusV4_536 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_408 -> AgdaAny
d_PlutusV4_536 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV4_536 v4
du_PlutusV4_536 :: T_PlutusStructure_408 -> AgdaAny
du_PlutusV4_536 v0
  = coe
      MAlonzo.Code.Function.Bundles.d_to_850
      (d_fromPlutusLanguage_502 (coe v0)) (coe C_V4_406)
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.T
d_T_540 :: T_PlutusStructure_408 -> ()
d_T_540 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.THash
d_THash_542 :: T_PlutusStructure_408 -> ()
d_THash_542 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.DecEq-T
d_DecEq'45'T_544 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_544 v0
  = let v1 = d_Data'688'_488 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.DecEq-THash
d_DecEq'45'THash_546 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_546 v0
  = let v1 = d_Data'688'_488 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.Show-THash
d_Show'45'THash_548 ::
  T_PlutusStructure_408 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_548 v0
  = let v1 = d_Data'688'_488 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.T-Hashable
d_T'45'Hashable_550 ::
  T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_550 v0
  = let v1 = d_Data'688'_488 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure._.T-isHashable
d_T'45'isHashable_552 ::
  T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_552 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe d_Data'688'_488 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Datum
d_Datum_554 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_408 -> ()
d_Datum_554 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Redeemer
d_Redeemer_556 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_PlutusStructure_408 -> ()
d_Redeemer_556 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.validPlutusScript
d_validPlutusScript_558 ::
  T_PlutusStructure_408 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_558 = erased
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_562 ::
  T_PlutusStructure_408 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_562 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.language
d_language_564 :: T_PlutusStructure_408 -> AgdaAny -> AgdaAny
d_language_564 v0
  = case coe v0 of
      C_constructor_566 v1 v8 v9 v10 v11 v12 v13 v14 v15 v17 v18 v19 v20 v21 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure
d_ScriptStructure_568 a0 a1 a2 a3 = ()
data T_ScriptStructure_568
  = C_constructor_740 T_P1ScriptStructure_370
                      (() ->
                       () ->
                       () ->
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10)
                      T_PlutusStructure_408
-- Ledger.Dijkstra.Specification.Script.Base._.Dec-validP1Script
d_Dec'45'validP1Script_574 ::
  T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_574 v0
  = coe d_Dec'45'validP1Script_390 (coe v0)
-- Ledger.Dijkstra.Specification.Script.Base._.DecEq-P1Script
d_DecEq'45'P1Script_576 ::
  T_P1ScriptStructure_370 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_576 v0 = coe d_DecEq'45'P1Script_394 (coe v0)
-- Ledger.Dijkstra.Specification.Script.Base._.Hashable-P1Script
d_Hashable'45'P1Script_578 ::
  T_P1ScriptStructure_370 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_578 v0
  = coe d_Hashable'45'P1Script_392 (coe v0)
-- Ledger.Dijkstra.Specification.Script.Base._.P1Script
d_P1Script_580 :: T_P1ScriptStructure_370 -> ()
d_P1Script_580 = erased
-- Ledger.Dijkstra.Specification.Script.Base._.validP1Script
d_validP1Script_582 ::
  T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_582 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.p1s
d_p1s_594 :: T_ScriptStructure_568 -> T_P1ScriptStructure_370
d_p1s_594 v0
  = case coe v0 of
      C_constructor_740 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Dec-validP1Script
d_Dec'45'validP1Script_598 ::
  T_ScriptStructure_568 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_598 v0
  = coe d_Dec'45'validP1Script_390 (coe d_p1s_594 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-P1Script
d_DecEq'45'P1Script_600 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_600 v0
  = coe d_DecEq'45'P1Script_394 (coe d_p1s_594 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Hashable-P1Script
d_Hashable'45'P1Script_602 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_602 v0
  = coe d_Hashable'45'P1Script_392 (coe d_p1s_594 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.P1Script
d_P1Script_604 :: T_ScriptStructure_568 -> ()
d_P1Script_604 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.validP1Script
d_validP1Script_606 ::
  T_ScriptStructure_568 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_606 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_614 ::
  T_ScriptStructure_568 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_614 v0
  = case coe v0 of
      C_constructor_740 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.ps
d_ps_616 :: T_ScriptStructure_568 -> T_PlutusStructure_408
d_ps_616 v0
  = case coe v0 of
      C_constructor_740 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._._≥ᵉ_
d__'8805''7497'__620 ::
  T_ScriptStructure_568 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__620 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.CostModel
d_CostModel_622 :: T_ScriptStructure_568 -> ()
d_CostModel_622 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.T
d_T_624 :: T_ScriptStructure_568 -> ()
d_T_624 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.THash
d_THash_626 :: T_ScriptStructure_568 -> ()
d_THash_626 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Dataʰ
d_Data'688'_628 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_628 v0 = coe d_Data'688'_488 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Datum
d_Datum_630 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> ()
d_Datum_630 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_632 ::
  T_ScriptStructure_568 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_632 v0
  = coe d_Dec'45'validPlutusScript_562 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEQ-Prices
d_DecEQ'45'Prices_634 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_634 v0
  = coe d_DecEQ'45'Prices_524 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-CostModel
d_DecEq'45'CostModel_636 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_636 v0
  = coe d_DecEq'45'CostModel_508 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_638 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_638 v0
  = coe d_DecEq'45'ExUnits_522 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_640 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_640 v0
  = coe d_DecEq'45'LangDepView_510 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-Language
d_DecEq'45'Language_642 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_642 v0
  = coe d_DecEq'45'Language_514 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-T
d_DecEq'45'T_644 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_644 v0
  = let v1 = d_Data'688'_488 (coe d_ps_616 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.DecEq-THash
d_DecEq'45'THash_646 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_646 v0
  = let v1 = d_Data'688'_488 (coe d_ps_616 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_648 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_648 v0
  = coe d_ExUnit'45'CommutativeMonoid_504 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.ExUnits
d_ExUnits_650 :: T_ScriptStructure_568 -> ()
d_ExUnits_650 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_652 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_652 v0
  = coe d_Hashable'45'PlutusScript_506 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.LangDepView
d_LangDepView_654 :: T_ScriptStructure_568 -> ()
d_LangDepView_654 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Language
d_Language_656 :: T_ScriptStructure_568 -> ()
d_Language_656 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusScript
d_PlutusScript_658 :: T_ScriptStructure_568 -> ()
d_PlutusScript_658 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV1
d_PlutusV1_660 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> AgdaAny
d_PlutusV1_660 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV1_660 v4
du_PlutusV1_660 :: T_ScriptStructure_568 -> AgdaAny
du_PlutusV1_660 v0 = coe du_PlutusV1_530 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV2
d_PlutusV2_662 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> AgdaAny
d_PlutusV2_662 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV2_662 v4
du_PlutusV2_662 :: T_ScriptStructure_568 -> AgdaAny
du_PlutusV2_662 v0 = coe du_PlutusV2_532 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV3
d_PlutusV3_664 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> AgdaAny
d_PlutusV3_664 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV3_664 v4
du_PlutusV3_664 :: T_ScriptStructure_568 -> AgdaAny
du_PlutusV3_664 v0 = coe du_PlutusV3_534 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.PlutusV4
d_PlutusV4_666 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> AgdaAny
d_PlutusV4_666 ~v0 ~v1 ~v2 ~v3 v4 = du_PlutusV4_666 v4
du_PlutusV4_666 :: T_ScriptStructure_568 -> AgdaAny
du_PlutusV4_666 v0 = coe du_PlutusV4_536 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Prices
d_Prices_668 :: T_ScriptStructure_568 -> ()
d_Prices_668 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Redeemer
d_Redeemer_670 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> ()
d_Redeemer_670 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-CostModel
d_Show'45'CostModel_672 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_672 v0
  = coe d_Show'45'CostModel_512 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-ExUnits
d_Show'45'ExUnits_674 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_674 v0
  = coe d_Show'45'ExUnits_526 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-Language
d_Show'45'Language_676 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_676 v0
  = coe d_Show'45'Language_516 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-Prices
d_Show'45'Prices_678 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_678 v0
  = coe d_Show'45'Prices_528 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.Show-THash
d_Show'45'THash_680 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_680 v0
  = let v1 = d_Data'688'_488 (coe d_ps_616 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.T-Hashable
d_T'45'Hashable_682 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_682 v0
  = let v1 = d_Data'688'_488 (coe d_ps_616 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.T-isHashable
d_T'45'isHashable_684 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe d_Data'688'_488 (coe d_ps_616 (coe v0)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.fromPlutusLanguage
d_fromPlutusLanguage_686 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_686 v0
  = coe d_fromPlutusLanguage_502 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.language
d_language_688 :: T_ScriptStructure_568 -> AgdaAny -> AgdaAny
d_language_688 v0 = coe d_language_564 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.validPlutusScript
d_validPlutusScript_690 ::
  T_ScriptStructure_568 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_690 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_692 ::
  T_ScriptStructure_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_692 v0
  = coe d_'8805''7497''45'Dec_520 (coe d_ps_616 (coe v0))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.Script
d_Script_694 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> ()
d_Script_694 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.Hashable-Script
d_Hashable'45'Script_696 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_696 ~v0 ~v1 ~v2 ~v3 v4
  = du_Hashable'45'Script_696 v4
du_Hashable'45'Script_696 ::
  T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_696 v0
  = coe
      d_hashRespectsUnion_614 v0 erased erased erased
      (d_Hashable'45'P1Script_392 (coe d_p1s_594 (coe v0)))
      (d_Hashable'45'PlutusScript_506 (coe d_ps_616 (coe v0)))
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP1Script
d_isP1Script_698 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_698 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP1Script?
d_isP1Script'63'_702 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_702 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isP1Script'63'_702 v5
du_isP1Script'63'_702 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_702 v0
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
d_isNativeScript_708 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_708 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.toP1Script
d_toP1Script_710 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_710 ~v0 ~v1 ~v2 ~v3 ~v4 = du_toP1Script_710
du_toP1Script_710 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_710 = coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP2Script
d_isP2Script_712 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_712 = erased
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.isP2Script?
d_isP2Script'63'_716 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_716 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isP2Script'63'_716 v5
du_isP2Script'63'_716 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_716 v0
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
d_toP2Script_722 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_722 ~v0 ~v1 ~v2 ~v3 ~v4 = du_toP2Script_722
du_toP2Script_722 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_722 = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.LanguageCostModels
d_LanguageCostModels_724 a0 a1 a2 a3 a4 = ()
newtype T_LanguageCostModels_724
  = C_mkLanguageCostModels_730 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_728 ::
  T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_728 v0
  = case coe v0 of
      C_mkLanguageCostModels_730 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_732 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_732 ~v0 ~v1 ~v2 ~v3 v4
  = du_DecEq'45'LanguageCostModels_732 v4
du_DecEq'45'LanguageCostModels_732 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_732 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_mkLanguageCostModels_730 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_mkLanguageCostModels_730 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Data.List.Properties.du_'8801''45'dec_60
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               (d_DecEq'45'Language_514 (coe d_ps_616 (coe v0)))
                                               (d_DecEq'45'CostModel_508 (coe d_ps_616 (coe v0)))))
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
d___736 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d___736 ~v0 ~v1 ~v2 ~v3 ~v4 = du___736
du___736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du___736 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6 v4 v5
-- Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_738 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_738 ~v0 ~v1 ~v2 ~v3 v4
  = du_Show'45'LanguageCostModels_738 v4
du_Show'45'LanguageCostModels_738 ::
  T_ScriptStructure_568 -> MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_738 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_mkLanguageCostModels_730 v2
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
                                       du___736 () erased () erased
                                       (d_Show'45'Language_516 (coe d_ps_616 (coe v0)))
                                       (d_Show'45'CostModel_512 (coe d_ps_616 (coe v0)))))
                                 (coe v2)))))
              _ -> MAlonzo.RTE.mazUnreachableError))
