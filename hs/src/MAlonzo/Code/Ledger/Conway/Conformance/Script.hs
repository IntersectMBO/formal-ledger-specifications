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

module MAlonzo.Code.Ledger.Conway.Conformance.Script where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Conformance.Script._.Dec-evalTimelock
d_Dec'45'evalTimelock_98 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_98 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_98 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_156
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure
d_P1ScriptStructure_102 a0 a1 = ()
-- Ledger.Conway.Conformance.Script._.Timelock
d_Timelock_126 a0 a1 = ()
-- Ledger.Conway.Conformance.Script._.evalTimelock
d_evalTimelock_140 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe v0)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe v0)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.P1Script
d_P1Script_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  ()
d_P1Script_150 = erased
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.validP1Script
d_validP1Script_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_152 = erased
-- Ledger.Conway.Conformance.Script.HSTimelock
d_HSTimelock_356 a0 a1 = ()
data T_HSTimelock_356
  = C_constructor_370 MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_98
                      AgdaAny Integer
-- Ledger.Conway.Conformance.Script.HSTimelock.timelock
d_timelock_364 ::
  T_HSTimelock_356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_98
d_timelock_364 v0
  = case coe v0 of
      C_constructor_370 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.HSTimelock.tlScriptHash
d_tlScriptHash_366 :: T_HSTimelock_356 -> AgdaAny
d_tlScriptHash_366 v0
  = case coe v0 of
      C_constructor_370 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.HSTimelock.tlScriptSize
d_tlScriptSize_368 :: T_HSTimelock_356 -> Integer
d_tlScriptSize_368 v0
  = case coe v0 of
      C_constructor_370 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.Hashable-HSTimelock
d_Hashable'45'HSTimelock_372 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSTimelock_372 ~v0 ~v1
  = du_Hashable'45'HSTimelock_372
du_Hashable'45'HSTimelock_372 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HSTimelock_372
  = coe
      MAlonzo.Code.Interface.Hashable.C_constructor_18
      (coe (\ v0 -> d_tlScriptHash_366 (coe v0)))
-- Ledger.Conway.Conformance.Script.DecEq-HSTimelock
d_DecEq'45'HSTimelock_374 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_374 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v2 ->
            case coe v2 of
              C_constructor_370 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_constructor_370 v7 v8 v9
                            -> let v10
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_112
                                            (coe v0) (coe v1))
                                         v3 v7 in
                               coe
                                 (case coe v10 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                      -> if coe v11
                                           then let v13
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe v0))
                                                          v4 v8 in
                                                coe
                                                  (case coe v13 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                       -> if coe v14
                                                            then let v16
                                                                       = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                           (coe v5) (coe v9) in
                                                                 coe
                                                                   (case coe v16 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                        -> if coe v17
                                                                             then coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v17)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       erased)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v17)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v14)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Script.HSPlutusScript
d_HSPlutusScript_376 a0 a1 = ()
data T_HSPlutusScript_376 = C_MkHSPlutusScript_386 AgdaAny Integer
-- Ledger.Conway.Conformance.Script.HSPlutusScript.psScriptHash
d_psScriptHash_382 :: T_HSPlutusScript_376 -> AgdaAny
d_psScriptHash_382 v0
  = case coe v0 of
      C_MkHSPlutusScript_386 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.HSPlutusScript.psScriptSize
d_psScriptSize_384 :: T_HSPlutusScript_376 -> Integer
d_psScriptSize_384 v0
  = case coe v0 of
      C_MkHSPlutusScript_386 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_388 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSPlutusScript_388 ~v0 ~v1
  = du_Hashable'45'HSPlutusScript_388
du_Hashable'45'HSPlutusScript_388 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HSPlutusScript_388
  = coe
      MAlonzo.Code.Interface.Hashable.C_constructor_18
      (coe (\ v0 -> d_psScriptHash_382 (coe v0)))
-- Ledger.Conway.Conformance.Script.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_390 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_P1ScriptStructure'45'HTL_390 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_constructor_120
      (\ v2 v3 v4 ->
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_156
           (coe v0) (coe v1) (coe v2) (coe v3) (coe d_timelock_364 (coe v4)))
      (coe du_Hashable'45'HSTimelock_372)
      (d_DecEq'45'HSTimelock_374 (coe v0) (coe v1))
