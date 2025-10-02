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

module MAlonzo.Code.Ledger.Conway.Specification.Script.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.THash
d_THash_24 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_24 = erased
-- _.Slot
d_Slot_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  ()
d_Slot_80 = erased
-- Ledger.Conway.Specification.Script.Base.P1ScriptStructure
d_P1ScriptStructure_100 a0 a1 = ()
data T_P1ScriptStructure_100
  = C_constructor_122 ([AgdaAny] ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      MAlonzo.Code.Interface.Hashable.T_Hashable_8
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.Specification.Script.Base.P1ScriptStructure.P1Script
d_P1Script_112 :: T_P1ScriptStructure_100 -> ()
d_P1Script_112 = erased
-- Ledger.Conway.Specification.Script.Base.P1ScriptStructure.validP1Script
d_validP1Script_114 ::
  T_P1ScriptStructure_100 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_114 = erased
-- Ledger.Conway.Specification.Script.Base.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_116 ::
  T_P1ScriptStructure_100 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_116 v0
  = case coe v0 of
      C_constructor_122 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_118 ::
  T_P1ScriptStructure_100 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_118 v0
  = case coe v0 of
      C_constructor_122 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_120 ::
  T_P1ScriptStructure_100 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_120 v0
  = case coe v0 of
      C_constructor_122 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure
d_PlutusStructure_124 a0 a1 = ()
data T_PlutusStructure_124
  = C_constructor_274 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
                      AgdaAny AgdaAny AgdaAny
                      MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
                      MAlonzo.Code.Interface.Hashable.T_Hashable_8
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      MAlonzo.Code.Class.Show.Core.T_Show_10
                      (AgdaAny ->
                       [AgdaAny] ->
                       AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny -> AgdaAny) (() -> AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Script.Base._.T
d_T_170 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36 ->
  () ->
  () ->
  () ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 -> ()
d_T_170 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Dataʰ
d_Data'688'_200 ::
  T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_200 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Language
d_Language_202 :: T_PlutusStructure_124 -> ()
d_Language_202 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.PlutusScript
d_PlutusScript_204 :: T_PlutusStructure_124 -> ()
d_PlutusScript_204 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.CostModel
d_CostModel_206 :: T_PlutusStructure_124 -> ()
d_CostModel_206 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Prices
d_Prices_208 :: T_PlutusStructure_124 -> ()
d_Prices_208 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.LangDepView
d_LangDepView_210 :: T_PlutusStructure_124 -> ()
d_LangDepView_210 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.ExUnits
d_ExUnits_212 :: T_PlutusStructure_124 -> ()
d_ExUnits_212 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.PlutusV1
d_PlutusV1_214 :: T_PlutusStructure_124 -> AgdaAny
d_PlutusV1_214 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.PlutusV2
d_PlutusV2_216 :: T_PlutusStructure_124 -> AgdaAny
d_PlutusV2_216 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.PlutusV3
d_PlutusV3_218 :: T_PlutusStructure_124 -> AgdaAny
d_PlutusV3_218 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_220 ::
  T_PlutusStructure_124 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_220 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_222 ::
  T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_222 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.DecEq-Language
d_DecEq'45'Language_224 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_224 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_226 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_226 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_228 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_228 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Show-CostModel
d_Show'45'CostModel_230 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_230 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._≥ᵉ_
d__'8805''7497'__232 ::
  T_PlutusStructure_124 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__232 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_234 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_234 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_236 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_236 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_238 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_238 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Show-Prices
d_Show'45'Prices_240 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_240 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.T
d_T_244 :: T_PlutusStructure_124 -> ()
d_T_244 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.THash
d_THash_246 :: T_PlutusStructure_124 -> ()
d_THash_246 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.DecEq-T
d_DecEq'45'T_248 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_248 v0
  = let v1 = d_Data'688'_200 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.DecEq-THash
d_DecEq'45'THash_250 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_250 v0
  = let v1 = d_Data'688'_200 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.Show-THash
d_Show'45'THash_252 ::
  T_PlutusStructure_124 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_252 v0
  = let v1 = d_Data'688'_200 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.T-Hashable
d_T'45'Hashable_254 ::
  T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_254 v0
  = let v1 = d_Data'688'_200 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.PlutusStructure._.T-isHashable
d_T'45'isHashable_256 ::
  T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe d_Data'688'_200 (coe v0))
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Datum
d_Datum_258 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_PlutusStructure_124 -> ()
d_Datum_258 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Redeemer
d_Redeemer_260 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_PlutusStructure_124 -> ()
d_Redeemer_260 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.validPlutusScript
d_validPlutusScript_262 ::
  T_PlutusStructure_124 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_262 = erased
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_266 ::
  T_PlutusStructure_124 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_266 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.language
d_language_268 :: T_PlutusStructure_124 -> AgdaAny -> AgdaAny
d_language_268 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.PlutusStructure.toData
d_toData_272 :: T_PlutusStructure_124 -> () -> AgdaAny -> AgdaAny
d_toData_272 v0
  = case coe v0 of
      C_constructor_274 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.ScriptStructure
d_ScriptStructure_276 a0 a1 = ()
data T_ScriptStructure_276
  = C_constructor_426 T_P1ScriptStructure_100
                      (() ->
                       () ->
                       () ->
                       MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
                       MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
                       MAlonzo.Code.Interface.Hashable.T_Hashable_8)
                      T_PlutusStructure_124
-- Ledger.Conway.Specification.Script.Base._.Dec-validP1Script
d_Dec'45'validP1Script_282 ::
  T_P1ScriptStructure_100 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_282 v0
  = coe d_Dec'45'validP1Script_116 (coe v0)
-- Ledger.Conway.Specification.Script.Base._.DecEq-P1Script
d_DecEq'45'P1Script_284 ::
  T_P1ScriptStructure_100 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_284 v0 = coe d_DecEq'45'P1Script_120 (coe v0)
-- Ledger.Conway.Specification.Script.Base._.Hashable-P1Script
d_Hashable'45'P1Script_286 ::
  T_P1ScriptStructure_100 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_286 v0
  = coe d_Hashable'45'P1Script_118 (coe v0)
-- Ledger.Conway.Specification.Script.Base._.P1Script
d_P1Script_288 :: T_P1ScriptStructure_100 -> ()
d_P1Script_288 = erased
-- Ledger.Conway.Specification.Script.Base._.validP1Script
d_validP1Script_290 ::
  T_P1ScriptStructure_100 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_290 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.p1s
d_p1s_302 :: T_ScriptStructure_276 -> T_P1ScriptStructure_100
d_p1s_302 v0
  = case coe v0 of
      C_constructor_426 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Dec-validP1Script
d_Dec'45'validP1Script_306 ::
  T_ScriptStructure_276 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_306 v0
  = coe d_Dec'45'validP1Script_116 (coe d_p1s_302 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-P1Script
d_DecEq'45'P1Script_308 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_308 v0
  = coe d_DecEq'45'P1Script_120 (coe d_p1s_302 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Hashable-P1Script
d_Hashable'45'P1Script_310 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_310 v0
  = coe d_Hashable'45'P1Script_118 (coe d_p1s_302 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.P1Script
d_P1Script_312 :: T_ScriptStructure_276 -> ()
d_P1Script_312 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.validP1Script
d_validP1Script_314 ::
  T_ScriptStructure_276 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_314 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_322 ::
  T_ScriptStructure_276 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_322 v0
  = case coe v0 of
      C_constructor_426 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.ps
d_ps_324 :: T_ScriptStructure_276 -> T_PlutusStructure_124
d_ps_324 v0
  = case coe v0 of
      C_constructor_426 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._._≥ᵉ_
d__'8805''7497'__328 ::
  T_ScriptStructure_276 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__328 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.CostModel
d_CostModel_330 :: T_ScriptStructure_276 -> ()
d_CostModel_330 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.T
d_T_332 :: T_ScriptStructure_276 -> ()
d_T_332 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.THash
d_THash_334 :: T_ScriptStructure_276 -> ()
d_THash_334 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Dataʰ
d_Data'688'_336 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_336 v0 = coe d_Data'688'_200 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Datum
d_Datum_338 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 -> ()
d_Datum_338 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_340 ::
  T_ScriptStructure_276 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_340 v0
  = coe d_Dec'45'validPlutusScript_266 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEQ-Prices
d_DecEQ'45'Prices_342 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_342 v0
  = coe d_DecEQ'45'Prices_236 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-CostModel
d_DecEq'45'CostModel_344 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_344 v0
  = coe d_DecEq'45'CostModel_226 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_346 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_346 v0
  = coe d_DecEq'45'ExUnits_234 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_348 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_348 v0
  = coe d_DecEq'45'LangDepView_228 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-Language
d_DecEq'45'Language_350 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_350 v0
  = coe d_DecEq'45'Language_224 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-T
d_DecEq'45'T_352 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_352 v0
  = let v1 = d_Data'688'_200 (coe d_ps_324 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.DecEq-THash
d_DecEq'45'THash_354 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_354 v0
  = let v1 = d_Data'688'_200 (coe d_ps_324 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_356 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_356 v0
  = coe d_ExUnit'45'CommutativeMonoid_220 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.ExUnits
d_ExUnits_358 :: T_ScriptStructure_276 -> ()
d_ExUnits_358 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_360 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_360 v0
  = coe d_Hashable'45'PlutusScript_222 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.LangDepView
d_LangDepView_362 :: T_ScriptStructure_276 -> ()
d_LangDepView_362 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Language
d_Language_364 :: T_ScriptStructure_276 -> ()
d_Language_364 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.PlutusScript
d_PlutusScript_366 :: T_ScriptStructure_276 -> ()
d_PlutusScript_366 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.PlutusV1
d_PlutusV1_368 :: T_ScriptStructure_276 -> AgdaAny
d_PlutusV1_368 v0 = coe d_PlutusV1_214 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.PlutusV2
d_PlutusV2_370 :: T_ScriptStructure_276 -> AgdaAny
d_PlutusV2_370 v0 = coe d_PlutusV2_216 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.PlutusV3
d_PlutusV3_372 :: T_ScriptStructure_276 -> AgdaAny
d_PlutusV3_372 v0 = coe d_PlutusV3_218 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Prices
d_Prices_374 :: T_ScriptStructure_276 -> ()
d_Prices_374 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Redeemer
d_Redeemer_376 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 -> ()
d_Redeemer_376 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Show-CostModel
d_Show'45'CostModel_378 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_378 v0
  = coe d_Show'45'CostModel_230 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Show-ExUnits
d_Show'45'ExUnits_380 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_380 v0
  = coe d_Show'45'ExUnits_238 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Show-Prices
d_Show'45'Prices_382 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_382 v0
  = coe d_Show'45'Prices_240 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.Show-THash
d_Show'45'THash_384 ::
  T_ScriptStructure_276 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_384 v0
  = let v1 = d_Data'688'_200 (coe d_ps_324 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.T-Hashable
d_T'45'Hashable_386 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_386 v0
  = let v1 = d_Data'688'_200 (coe d_ps_324 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.T-isHashable
d_T'45'isHashable_388 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_388 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe d_Data'688'_200 (coe d_ps_324 (coe v0)))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.language
d_language_390 :: T_ScriptStructure_276 -> AgdaAny -> AgdaAny
d_language_390 v0 = coe d_language_268 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.toData
d_toData_392 :: T_ScriptStructure_276 -> () -> AgdaAny -> AgdaAny
d_toData_392 v0 = coe d_toData_272 (coe d_ps_324 (coe v0))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure._.validPlutusScript
d_validPlutusScript_394 ::
  T_ScriptStructure_276 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_394 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.Script
d_Script_396 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 -> ()
d_Script_396 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.Hashable-Script
d_Hashable'45'Script_398 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_398 ~v0 ~v1 v2 = du_Hashable'45'Script_398 v2
du_Hashable'45'Script_398 ::
  T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_398 v0
  = coe
      d_hashRespectsUnion_322 v0 erased erased erased
      (d_Hashable'45'P1Script_118 (coe d_p1s_302 (coe v0)))
      (d_Hashable'45'PlutusScript_222 (coe d_ps_324 (coe v0)))
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.isP1Script
d_isP1Script_400 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_400 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.isP1Script?
d_isP1Script'63'_404 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_404 ~v0 ~v1 ~v2 v3 = du_isP1Script'63'_404 v3
du_isP1Script'63'_404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_404 v0
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
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.isNativeScript
d_isNativeScript_410 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_410 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.toP1Script
d_toP1Script_412 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_412 ~v0 ~v1 ~v2 = du_toP1Script_412
du_toP1Script_412 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_412 = coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.isP2Script
d_isP2Script_414 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_414 = erased
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.isP2Script?
d_isP2Script'63'_418 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_418 ~v0 ~v1 ~v2 v3 = du_isP2Script'63'_418 v3
du_isP2Script'63'_418 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_418 v0
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
-- Ledger.Conway.Specification.Script.Base.ScriptStructure.toP2Script
d_toP2Script_424 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_424 ~v0 ~v1 ~v2 = du_toP2Script_424
du_toP2Script_424 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_424 = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30
