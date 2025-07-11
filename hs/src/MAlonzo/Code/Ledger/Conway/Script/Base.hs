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

module MAlonzo.Code.Ledger.Conway.Script.Base where

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
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.THash
d_THash_22 :: MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 -> ()
d_THash_22 = erased
-- _.Slot
d_Slot_76 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 -> ()
d_Slot_76 = erased
-- Ledger.Conway.Script.Base.P1ScriptStructure
d_P1ScriptStructure_96 a0 a1 = ()
data T_P1ScriptStructure_96
  = C_P1ScriptStructure'46'constructor_455 ([AgdaAny] ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                            AgdaAny ->
                                            MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                           MAlonzo.Code.Interface.Hashable.T_Hashable_8
                                           MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.Conway.Script.Base.P1ScriptStructure.P1Script
d_P1Script_108 :: T_P1ScriptStructure_96 -> ()
d_P1Script_108 = erased
-- Ledger.Conway.Script.Base.P1ScriptStructure.validP1Script
d_validP1Script_110 ::
  T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_110 = erased
-- Ledger.Conway.Script.Base.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_112 ::
  T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_112 v0
  = case coe v0 of
      C_P1ScriptStructure'46'constructor_455 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_114 ::
  T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_114 v0
  = case coe v0 of
      C_P1ScriptStructure'46'constructor_455 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_116 ::
  T_P1ScriptStructure_96 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_116 v0
  = case coe v0 of
      C_P1ScriptStructure'46'constructor_455 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure
d_PlutusStructure_118 a0 a1 = ()
data T_PlutusStructure_118
  = C_PlutusStructure'46'constructor_4263 MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
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
                                           AgdaAny ->
                                           MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                          (AgdaAny -> AgdaAny) (() -> AgdaAny -> AgdaAny)
-- Ledger.Conway.Script.Base._.T
d_T_164 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34 ->
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
d_T_164 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.Dataʰ
d_Data'688'_194 ::
  T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_194 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.Language
d_Language_196 :: T_PlutusStructure_118 -> ()
d_Language_196 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.PlutusScript
d_PlutusScript_198 :: T_PlutusStructure_118 -> ()
d_PlutusScript_198 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.CostModel
d_CostModel_200 :: T_PlutusStructure_118 -> ()
d_CostModel_200 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.Prices
d_Prices_202 :: T_PlutusStructure_118 -> ()
d_Prices_202 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.LangDepView
d_LangDepView_204 :: T_PlutusStructure_118 -> ()
d_LangDepView_204 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.ExUnits
d_ExUnits_206 :: T_PlutusStructure_118 -> ()
d_ExUnits_206 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.PlutusV1
d_PlutusV1_208 :: T_PlutusStructure_118 -> AgdaAny
d_PlutusV1_208 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.PlutusV2
d_PlutusV2_210 :: T_PlutusStructure_118 -> AgdaAny
d_PlutusV2_210 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.PlutusV3
d_PlutusV3_212 :: T_PlutusStructure_118 -> AgdaAny
d_PlutusV3_212 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_214 ::
  T_PlutusStructure_118 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_214 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_216 ::
  T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_216 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.DecEq-Language
d_DecEq'45'Language_218 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_218 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_220 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_220 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_222 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_222 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.Show-CostModel
d_Show'45'CostModel_224 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_224 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure._≥ᵉ_
d__'8805''7497'__226 ::
  T_PlutusStructure_118 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__226 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_228 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_228 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_230 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_230 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_232 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_232 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.Show-Prices
d_Show'45'Prices_234 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_234 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure._.T
d_T_238 :: T_PlutusStructure_118 -> ()
d_T_238 = erased
-- Ledger.Conway.Script.Base.PlutusStructure._.THash
d_THash_240 :: T_PlutusStructure_118 -> ()
d_THash_240 = erased
-- Ledger.Conway.Script.Base.PlutusStructure._.DecEq-T
d_DecEq'45'T_242 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_242 v0
  = let v1 = d_Data'688'_194 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.PlutusStructure._.DecEq-THash
d_DecEq'45'THash_244 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_244 v0
  = let v1 = d_Data'688'_194 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.PlutusStructure._.Show-THash
d_Show'45'THash_246 ::
  T_PlutusStructure_118 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_246 v0
  = let v1 = d_Data'688'_194 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.PlutusStructure._.T-Hashable
d_T'45'Hashable_248 ::
  T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_248 v0
  = let v1 = d_Data'688'_194 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.PlutusStructure._.T-isHashable
d_T'45'isHashable_250 ::
  T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe d_Data'688'_194 (coe v0))
-- Ledger.Conway.Script.Base.PlutusStructure.Datum
d_Datum_252 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_PlutusStructure_118 -> ()
d_Datum_252 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.Redeemer
d_Redeemer_254 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_PlutusStructure_118 -> ()
d_Redeemer_254 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.validPlutusScript
d_validPlutusScript_256 ::
  T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_256 = erased
-- Ledger.Conway.Script.Base.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_260 ::
  T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_260 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.language
d_language_262 :: T_PlutusStructure_118 -> AgdaAny -> AgdaAny
d_language_262 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.PlutusStructure.toData
d_toData_266 :: T_PlutusStructure_118 -> () -> AgdaAny -> AgdaAny
d_toData_266 v0
  = case coe v0 of
      C_PlutusStructure'46'constructor_4263 v1 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.ScriptStructure
d_ScriptStructure_268 a0 a1 = ()
data T_ScriptStructure_268
  = C_ScriptStructure'46'constructor_7641 T_P1ScriptStructure_96
                                          (() ->
                                           () ->
                                           () ->
                                           MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
                                           MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
                                           MAlonzo.Code.Interface.Hashable.T_Hashable_8)
                                          T_PlutusStructure_118
-- Ledger.Conway.Script.Base._.Dec-validP1Script
d_Dec'45'validP1Script_274 ::
  T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_274 v0
  = coe d_Dec'45'validP1Script_112 (coe v0)
-- Ledger.Conway.Script.Base._.DecEq-P1Script
d_DecEq'45'P1Script_276 ::
  T_P1ScriptStructure_96 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_276 v0 = coe d_DecEq'45'P1Script_116 (coe v0)
-- Ledger.Conway.Script.Base._.Hashable-P1Script
d_Hashable'45'P1Script_278 ::
  T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_278 v0
  = coe d_Hashable'45'P1Script_114 (coe v0)
-- Ledger.Conway.Script.Base._.P1Script
d_P1Script_280 :: T_P1ScriptStructure_96 -> ()
d_P1Script_280 = erased
-- Ledger.Conway.Script.Base._.validP1Script
d_validP1Script_282 ::
  T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_282 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.p1s
d_p1s_294 :: T_ScriptStructure_268 -> T_P1ScriptStructure_96
d_p1s_294 v0
  = case coe v0 of
      C_ScriptStructure'46'constructor_7641 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.ScriptStructure._.Dec-validP1Script
d_Dec'45'validP1Script_298 ::
  T_ScriptStructure_268 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_298 v0
  = coe d_Dec'45'validP1Script_112 (coe d_p1s_294 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-P1Script
d_DecEq'45'P1Script_300 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_300 v0
  = coe d_DecEq'45'P1Script_116 (coe d_p1s_294 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.Hashable-P1Script
d_Hashable'45'P1Script_302 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_302 v0
  = coe d_Hashable'45'P1Script_114 (coe d_p1s_294 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.P1Script
d_P1Script_304 :: T_ScriptStructure_268 -> ()
d_P1Script_304 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.validP1Script
d_validP1Script_306 ::
  T_ScriptStructure_268 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_306 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_314 ::
  T_ScriptStructure_268 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_314 v0
  = case coe v0 of
      C_ScriptStructure'46'constructor_7641 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.ScriptStructure.ps
d_ps_316 :: T_ScriptStructure_268 -> T_PlutusStructure_118
d_ps_316 v0
  = case coe v0 of
      C_ScriptStructure'46'constructor_7641 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Script.Base.ScriptStructure._._≥ᵉ_
d__'8805''7497'__320 ::
  T_ScriptStructure_268 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__320 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.CostModel
d_CostModel_322 :: T_ScriptStructure_268 -> ()
d_CostModel_322 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.T
d_T_324 :: T_ScriptStructure_268 -> ()
d_T_324 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.THash
d_THash_326 :: T_ScriptStructure_268 -> ()
d_THash_326 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.Dataʰ
d_Data'688'_328 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_328 v0 = coe d_Data'688'_194 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.Datum
d_Datum_330 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 -> ()
d_Datum_330 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_332 ::
  T_ScriptStructure_268 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_332 v0
  = coe d_Dec'45'validPlutusScript_260 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEQ-Prices
d_DecEQ'45'Prices_334 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_334 v0
  = coe d_DecEQ'45'Prices_230 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-CostModel
d_DecEq'45'CostModel_336 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_336 v0
  = coe d_DecEq'45'CostModel_220 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_338 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_338 v0
  = coe d_DecEq'45'ExUnits_228 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_340 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_340 v0
  = coe d_DecEq'45'LangDepView_222 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-Language
d_DecEq'45'Language_342 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_342 v0
  = coe d_DecEq'45'Language_218 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-T
d_DecEq'45'T_344 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_344 v0
  = let v1 = d_Data'688'_194 (coe d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.ScriptStructure._.DecEq-THash
d_DecEq'45'THash_346 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_346 v0
  = let v1 = d_Data'688'_194 (coe d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.ScriptStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_348 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_348 v0
  = coe d_ExUnit'45'CommutativeMonoid_214 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.ExUnits
d_ExUnits_350 :: T_ScriptStructure_268 -> ()
d_ExUnits_350 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_352 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_352 v0
  = coe d_Hashable'45'PlutusScript_216 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.LangDepView
d_LangDepView_354 :: T_ScriptStructure_268 -> ()
d_LangDepView_354 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.Language
d_Language_356 :: T_ScriptStructure_268 -> ()
d_Language_356 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.PlutusScript
d_PlutusScript_358 :: T_ScriptStructure_268 -> ()
d_PlutusScript_358 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.PlutusV1
d_PlutusV1_360 :: T_ScriptStructure_268 -> AgdaAny
d_PlutusV1_360 v0 = coe d_PlutusV1_208 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.PlutusV2
d_PlutusV2_362 :: T_ScriptStructure_268 -> AgdaAny
d_PlutusV2_362 v0 = coe d_PlutusV2_210 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.PlutusV3
d_PlutusV3_364 :: T_ScriptStructure_268 -> AgdaAny
d_PlutusV3_364 v0 = coe d_PlutusV3_212 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.Prices
d_Prices_366 :: T_ScriptStructure_268 -> ()
d_Prices_366 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.Redeemer
d_Redeemer_368 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 -> ()
d_Redeemer_368 = erased
-- Ledger.Conway.Script.Base.ScriptStructure._.Show-CostModel
d_Show'45'CostModel_370 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_370 v0
  = coe d_Show'45'CostModel_224 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.Show-ExUnits
d_Show'45'ExUnits_372 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_372 v0
  = coe d_Show'45'ExUnits_232 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.Show-Prices
d_Show'45'Prices_374 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_374 v0
  = coe d_Show'45'Prices_234 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.Show-THash
d_Show'45'THash_376 ::
  T_ScriptStructure_268 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_376 v0
  = let v1 = d_Data'688'_194 (coe d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.ScriptStructure._.T-Hashable
d_T'45'Hashable_378 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_378 v0
  = let v1 = d_Data'688'_194 (coe d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Script.Base.ScriptStructure._.T-isHashable
d_T'45'isHashable_380 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe d_Data'688'_194 (coe d_ps_316 (coe v0)))
-- Ledger.Conway.Script.Base.ScriptStructure._.language
d_language_382 :: T_ScriptStructure_268 -> AgdaAny -> AgdaAny
d_language_382 v0 = coe d_language_262 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.toData
d_toData_384 :: T_ScriptStructure_268 -> () -> AgdaAny -> AgdaAny
d_toData_384 v0 = coe d_toData_266 (coe d_ps_316 (coe v0))
-- Ledger.Conway.Script.Base.ScriptStructure._.validPlutusScript
d_validPlutusScript_386 ::
  T_ScriptStructure_268 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_386 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.Script
d_Script_388 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 -> ()
d_Script_388 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.Hashable-Script
d_Hashable'45'Script_390 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_390 ~v0 ~v1 v2 = du_Hashable'45'Script_390 v2
du_Hashable'45'Script_390 ::
  T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_390 v0
  = coe
      d_hashRespectsUnion_314 v0 erased erased erased
      (d_Hashable'45'P1Script_114 (coe d_p1s_294 (coe v0)))
      (d_Hashable'45'PlutusScript_216 (coe d_ps_316 (coe v0)))
-- Ledger.Conway.Script.Base.ScriptStructure.isP1Script
d_isP1Script_392 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_392 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.isP1Script?
d_isP1Script'63'_396 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_396 ~v0 ~v1 ~v2 v3 = du_isP1Script'63'_396 v3
du_isP1Script'63'_396 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_396 v0
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
-- Ledger.Conway.Script.Base.ScriptStructure.isNativeScript
d_isNativeScript_402 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_402 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.toP1Script
d_toP1Script_404 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_404 ~v0 ~v1 ~v2 = du_toP1Script_404
du_toP1Script_404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_404 = coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24
-- Ledger.Conway.Script.Base.ScriptStructure.isP2Script
d_isP2Script_406 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_406 = erased
-- Ledger.Conway.Script.Base.ScriptStructure.isP2Script?
d_isP2Script'63'_410 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_410 ~v0 ~v1 ~v2 v3 = du_isP2Script'63'_410 v3
du_isP2Script'63'_410 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_410 v0
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
-- Ledger.Conway.Script.Base.ScriptStructure.toP2Script
d_toP2Script_416 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22 ->
  T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_416 ~v0 ~v1 ~v2 = du_toP2Script_416
du_toP2Script_416 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_416 = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30
