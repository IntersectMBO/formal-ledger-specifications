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
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Conway.Conformance.Script._.Dec-evalTimelock
d_Dec'45'evalTimelock_98 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_98 v0 v1
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322 (coe v0)
      (coe v1)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure
d_P1ScriptStructure_102 a0 a1 = ()
-- Ledger.Conway.Conformance.Script._.Timelock
d_Timelock_120 a0 a1 = ()
-- Ledger.Conway.Conformance.Script._.evalTimelock
d_evalTimelock_134 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_138 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_138 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_140 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_140 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_142 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_142 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.P1Script
d_P1Script_144 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_144 = erased
-- Ledger.Conway.Conformance.Script._.P1ScriptStructure.validP1Script
d_validP1Script_146 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_146 = erased
-- Ledger.Conway.Conformance.Script.HashedTimelock
d_HashedTimelock_338 a0 a1 = ()
data T_HashedTimelock_338
  = C_HashedTimelock'46'constructor_713 MAlonzo.Code.Ledger.Script.T_Timelock_264
                                        AgdaAny
-- Ledger.Conway.Conformance.Script.HashedTimelock.timelock
d_timelock_344 ::
  T_HashedTimelock_338 -> MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_344 v0
  = case coe v0 of
      C_HashedTimelock'46'constructor_713 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.HashedTimelock.storedHash
d_storedHash_346 :: T_HashedTimelock_338 -> AgdaAny
d_storedHash_346 v0
  = case coe v0 of
      C_HashedTimelock'46'constructor_713 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Script.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_348 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_348 ~v0 ~v1
  = du_Hashable'45'HashedTimelock_348
du_Hashable'45'HashedTimelock_348 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HashedTimelock_348
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> d_storedHash_346 (coe v0)))
-- Ledger.Conway.Conformance.Script.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_350 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_350 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_HashedTimelock'46'constructor_713 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          C_HashedTimelock'46'constructor_713 v6 v7
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe v0))
                                          v7 v4))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
                                          (coe v0) (coe v1))
                                       v6 v3))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v8 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Script.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_352 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'HTL_352 v0 v1
  = coe
      MAlonzo.Code.Ledger.Script.C_P1ScriptStructure'46'constructor_445
      (\ v2 v3 v4 ->
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
           (coe v0) (coe v1) (coe v2) (coe v3) (coe d_timelock_344 (coe v4)))
      (coe du_Hashable'45'HashedTimelock_348)
      (d_DecEq'45'HashedTimelock_350 (coe v0) (coe v1))
