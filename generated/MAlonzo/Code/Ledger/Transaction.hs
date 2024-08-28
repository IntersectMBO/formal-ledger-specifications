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

module MAlonzo.Code.Ledger.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Certs.Haskell
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Transaction.Tag
d_Tag_4 = ()
data T_Tag_4
  = C_Spend_6 | C_Mint_8 | C_Cert_10 | C_Rewrd_12 | C_Vote_14 |
    C_Propose_16
-- Ledger.Transaction.DecEq-Tag
d_DecEq'45'Tag_18 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_18
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_6
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Mint_8
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Cert_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Rewrd_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Vote_14
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Propose_16
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Transaction.TransactionStructure
d_TransactionStructure_20 = ()
data T_TransactionStructure_20
  = C_TransactionStructure'46'constructor_13419 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_402
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_1180
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Transaction._.Ser
d_Ser_92 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 -> ()
d_Ser_92 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_120 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_1186 :: T_TransactionStructure_20 -> ()
d_Ix_1186 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_1188 :: T_TransactionStructure_20 -> ()
d_TxId_1188 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1190 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_1190 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1192 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1192 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1194 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1194 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1196 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1196 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1200 :: T_TransactionStructure_20 -> ()
d_THash_1200 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1202 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe d_adHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1204 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1204 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe d_adHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1206 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1206 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe d_adHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1208 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe d_adHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1210 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1210 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1214 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1214 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1216 :: T_TransactionStructure_20 -> ()
d_Network_1216 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1218 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1218 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1220 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1222 :: T_TransactionStructure_20 -> Integer
d_Quorum_1222 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1224 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1224 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1226 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1226 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1228 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1228 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1230 ::
  T_TransactionStructure_20 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1230 = erased
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1232 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1232 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1234 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1238 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1238 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1240 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1240 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_1234 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1242 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1242 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1244 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1244 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1246 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1246 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1248 :: T_TransactionStructure_20 -> ()
d_THash_1248 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1250 :: T_TransactionStructure_20 -> ()
d_KeyPair_1250 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1252 :: T_TransactionStructure_20 -> ()
d_SKey_1252 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1254 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1254 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1256 :: T_TransactionStructure_20 -> ()
d_Ser_1256 = erased
-- Ledger.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1258 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1258 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_1234 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1260 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1260 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1262 :: T_TransactionStructure_20 -> ()
d_Sig_1262 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1264 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1264 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1266 :: T_TransactionStructure_20 -> ()
d_VKey_1266 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1268 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1268 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1270 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1270 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1272 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1272 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1274 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1274 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1234 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1276 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1276 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_1234 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1278 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1278 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1282 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1282 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1284 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1288 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1288 ~v0 v1 = du__'8729'__1288 v1
du__'8729'__1288 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1288 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1290 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1290 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1292 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1292 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1294 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1294 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1296 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1296 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1298 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1298 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1300 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1302 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1304 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1306 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1306 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1308 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1308 ~v0
  = du_Value'45'CommutativeMonoid_1308
du_Value'45'CommutativeMonoid_1308 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_1308
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1310 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1310 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1312 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1312 ~v0 = du_addValue_1312
du_addValue_1312 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1312
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1314 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1314 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1316 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1316 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1318 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1318 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1320 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1320 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1322 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1322 ~v0 v1 = du_monoid_1322 v1
du_monoid_1322 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_1322 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1324 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1324 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1326 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1326 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1328 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1328 ~v0 v1 = du_rawMonoid_1328 v1
du_rawMonoid_1328 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_1328 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1330 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1330 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1332 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1332 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1334 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1334 ~v0 = du_sum'7515'_1334
du_sum'7515'_1334 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1334
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1336 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1336 ~v0 v1 = du_ε_1336 v1
du_ε_1336 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
du_ε_1336 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1340 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1340 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1342 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1342 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1344 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1346 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1346 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1348 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1348 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1352 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1354 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1354 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1358 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1358 ~v0 ~v1 = du_isMagmaIsomorphism_1358
du_isMagmaIsomorphism_1358 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1358 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1360 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1360 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1360 v3
du_isMagmaMonomorphism_1360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1360 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1362 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1364 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1366 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1368 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1368 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1368 v3
du_isRelIsomorphism_1368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1370 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1370 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1370 v3
du_isRelMonomorphism_1370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1370 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1372 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1374 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1376 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1380 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1386 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1386 ~v0 ~v1 = du_isMagmaMonomorphism_1386
du_isMagmaMonomorphism_1386 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1386 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1388 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1390 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1392 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1392 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1392 v3
du_isRelMonomorphism_1392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1394 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1396 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1400 :: T_TransactionStructure_20 -> ()
d_Addr_1400 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1402 a0 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1404 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1406 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1408 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1408 ~v0 = du_Dec'45'isScript_1408
du_Dec'45'isScript_1408 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1408
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1410 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1410 ~v0 = du_Dec'45'isVKey_1410
du_Dec'45'isVKey_1410 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1410
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1412 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1412 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1210 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1234 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1414 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1414 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1210 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1234 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1416 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1416 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1234 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1418 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1418 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1210 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1234 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1424 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1428 :: T_TransactionStructure_20 -> ()
d_ScriptAddr_1428 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1430 :: T_TransactionStructure_20 -> ()
d_ScriptBaseAddr_1430 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1432 :: T_TransactionStructure_20 -> ()
d_ScriptBootstrapAddr_1432 = erased
-- Ledger.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1436 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1436 ~v0 = du_Show'45'Credential_1436
du_Show'45'Credential_1436 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1436 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1438 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1438 ~v0
  = du_Show'45'Credential'215'Coin_1438
du_Show'45'Credential'215'Coin_1438 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1438 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1440 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1440 ~v0 = du_Show'45'RwdAddr_1440
du_Show'45'RwdAddr_1440 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1440
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1442 :: T_TransactionStructure_20 -> ()
d_VKeyAddr_1442 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1444 :: T_TransactionStructure_20 -> ()
d_VKeyBaseAddr_1444 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1446 :: T_TransactionStructure_20 -> ()
d_VKeyBootstrapAddr_1446 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1450 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1450 ~v0 = du_getScriptHash_1450
du_getScriptHash_1450 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1450
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1452 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1454 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1454 ~v0 = du_isBootstrapAddr'63'_1454
du_isBootstrapAddr'63'_1454 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1454
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1456 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1456 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1458 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1458 ~v0 = du_isKeyHashObj_1458
du_isKeyHashObj_1458 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1458
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1460 ~v0 = du_isKeyHashObj'7495'_1460
du_isKeyHashObj'7495'_1460 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1460
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1462 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1464 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1464 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1466 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1466 ~v0 = du_isScriptObj_1466
du_isScriptObj_1466 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1466
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1468 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1468 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1470 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1472 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1472 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1474 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1474 ~v0 = du_netId_1474
du_netId_1474 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1474 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1476 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1476 ~v0 = du_payCred_1476
du_payCred_1476 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1476 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1478 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1478 ~v0 = du_stakeCred_1478
du_stakeCred_1478 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1478
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1482 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1482 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1484 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1484 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1486 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1486 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1490 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1490 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1492 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1492 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1494 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1494 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1504 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1504 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1506 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1506 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1520 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1520 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1524 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1524 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1526 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1526 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1528 ::
  T_TransactionStructure_20 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1528 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1530 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1530 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1532 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1532 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1534 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1534 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1536 :: T_TransactionStructure_20 -> ()
d_Epoch_1536 = erased
-- Ledger.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1538 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1538 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1540 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1540 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1542 :: T_TransactionStructure_20 -> ()
d_Slot_1542 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1544 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1544 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1546 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1546 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1548 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1548 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1550 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1550 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1552 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1552 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1554 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1554 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1556 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1556 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1558 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1558 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1560 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1560 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1564 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1564 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
      (coe d_crypto_1234 (coe v0)) (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1566 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1566 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
      (coe d_crypto_1234 (coe v0)) (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1568 a0 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1570 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'TL_1570 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_400
      (coe d_crypto_1234 (coe v0)) (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1572 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1586 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1588 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1602 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1606 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1606 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1608 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1608 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1610 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1610 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1612 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1612 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1614 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1614 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1618 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1618 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1620 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1620 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1622 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1622 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1624 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1624 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1626 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1626 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1628 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1628 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1630 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1630 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1632 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1632 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1634 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1634 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1636 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1636 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1638 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1640 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1640 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1642 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1642 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1644 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1644 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1646 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1646 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1648 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1648 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1650 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1650 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1652 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1652 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1654 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1654 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1656 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1656 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1658 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1658 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1660 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1660 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1662 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1662 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1664 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1664 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1666 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1666 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1668 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1668 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1670 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1670 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1672 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1672 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1674 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1674 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1676 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1676 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1678 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1678 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1680 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1680 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1682 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1682 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1684 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1684 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1688 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1688 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1690 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_CostModel_1690 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1692 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_T_1692 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1694 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_THash_1694 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1696 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1696 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1698 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Datum_1698 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1700 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1700 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (let v2 = d_epochStructure_1520 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1702 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1704 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1706 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1708 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1710 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1710 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1712 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1712 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1714 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1714 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (let v2 = d_epochStructure_1520 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1716 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1716 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1718 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1718 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1720 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1722 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_ExUnits_1722 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1724 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1724 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_438 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1726 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1726 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (let v2 = d_epochStructure_1520 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1728 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1728 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1730 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1730 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
      (coe d_crypto_1234 (coe v0)) (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1732 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_LangDepView_1732 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1734 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Language_1734 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1736 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_P1Script_1736 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1738 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_1738 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1740 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_1740 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1742 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_1742 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1744 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_1744 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1746 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Prices_1746 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1748 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Redeemer_1748 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1750 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Script_1750 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1752 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1752 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1754 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1754 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1756 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1756 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1758 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1758 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1760 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1760 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1762 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1762 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1764 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1764 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1766 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_1766 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1768 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1768 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_440 (coe d_crypto_1234 (coe v0))
      (coe d_epochStructure_1520 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1770 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1770 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1772 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_1772 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1774 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 -> ()
d_validP1Script_1774 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1776 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1776 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1806 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402
d_scriptStructure_1806 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1810 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1810 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1812 :: T_TransactionStructure_20 -> ()
d_CostModel_1812 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1814 :: T_TransactionStructure_20 -> ()
d_T_1814 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1816 :: T_TransactionStructure_20 -> ()
d_THash_1816 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1818 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1818 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1820 :: T_TransactionStructure_20 -> ()
d_Datum_1820 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1822 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1822 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (let v2 = d_epochStructure_1520 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1806 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1824 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1824 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1826 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1826 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1828 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1828 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1830 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1830 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1832 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1832 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1834 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1834 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1836 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1836 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (let v2 = d_epochStructure_1520 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1806 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1838 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1838 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_454
                 (coe d_scriptStructure_1806 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1840 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1840 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_454
                 (coe d_scriptStructure_1806 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1842 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1842 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1844 :: T_TransactionStructure_20 -> ()
d_ExUnits_1844 = erased
-- Ledger.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1846 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1846 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_438
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1848 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1848 v0
  = let v1 = d_crypto_1234 (coe v0) in
    coe
      (let v2 = d_epochStructure_1520 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1806 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1850 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1850 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1852 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1852 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528
      (coe d_crypto_1234 (coe v0)) (coe d_epochStructure_1520 (coe v0))
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1854 :: T_TransactionStructure_20 -> ()
d_LangDepView_1854 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1856 :: T_TransactionStructure_20 -> ()
d_Language_1856 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1858 :: T_TransactionStructure_20 -> ()
d_P1Script_1858 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1860 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1860 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1862 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV1_1862 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1864 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV2_1864 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1866 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV3_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1868 :: T_TransactionStructure_20 -> ()
d_Prices_1868 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1870 :: T_TransactionStructure_20 -> ()
d_Redeemer_1870 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1872 :: T_TransactionStructure_20 -> ()
d_Script_1872 = erased
-- Ledger.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1874 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1874 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1876 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1876 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1878 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1878 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1880 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1880 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_454
                 (coe d_scriptStructure_1806 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1882 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1882 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_454
                 (coe d_scriptStructure_1806 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1884 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1884 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_454
            (coe d_scriptStructure_1806 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1886 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1886 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1888 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1888 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1890 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1890 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_440 (coe d_crypto_1234 (coe v0))
      (coe d_epochStructure_1520 (coe v0))
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1892 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1892 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_454
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1894 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1894 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_454
         (coe d_scriptStructure_1806 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1896 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 -> ()
d_validP1Script_1896 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1898 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1898 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1902 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1904 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1904 ~v0
  = du_DecEq'45'DrepThresholds_1904
du_DecEq'45'DrepThresholds_1904 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1904
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_436
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1906 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1906 ~v0 = du_DecEq'45'PParamGroup_1906
du_DecEq'45'PParamGroup_1906 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1906
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_442
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1908 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1908 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_440
      (coe d_epochStructure_1520 (coe v0))
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1910 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1910 ~v0
  = du_DecEq'45'PoolThresholds_1910
du_DecEq'45'PoolThresholds_1910 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1910
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_438
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1912 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1916 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1922 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1924 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1926 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1928 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1930 :: T_TransactionStructure_20 -> ()
d_ProtVer_1930 = erased
-- Ledger.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1934 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1934 ~v0 = du_Show'45'DrepThresholds_1934
du_Show'45'DrepThresholds_1934 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1934
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_444
-- Ledger.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_1936 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_448
      (coe d_epochStructure_1520 (coe v0))
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1938 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1938 ~v0 = du_Show'45'PoolThresholds_1938
du_Show'45'PoolThresholds_1938 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1938
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_446
-- Ledger.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_1940 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1940 ~v0 = du_Show'45'ProtVer_1940
du_Show'45'ProtVer_1940 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1940
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ProtVer_160
-- Ledger.Transaction.TransactionStructure._.Show-ℚ
d_Show'45'ℚ_1942 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1942 ~v0 = du_Show'45'ℚ_1942
du_Show'45'ℚ_1942 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_1942
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ℚ_430
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1950 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_1950 = erased
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1952 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1954 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1954 ~v0 = du_pvCanFollow'63'_1954
du_pvCanFollow'63'_1954 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1954
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1100
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1960 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_1960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1962 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_1962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1966 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1966 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1968 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1968 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1970 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1970 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1972 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1972 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1974 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1974 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1976 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1976 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1978 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1978 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1980 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1980 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1982 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1982 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1984 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1984 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1988 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1988 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1990 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1990 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1992 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1992 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1240 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1994 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1180 -> ()
d_THash_1994 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1996 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 -> ()
d_UpdateT_1996 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.Show-THash
d_Show'45'THash_1998 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1998 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_2000 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2000 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2002 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_2002 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1164
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_2004 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2004 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2006 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148
d_ppUpd_2006 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2008 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2008 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1172
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2010 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 -> AgdaAny -> ()
d_ppdWellFormed_2010 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2012 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_2012 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1166
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1212 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2028 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_336 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_2030 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_2030 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2032 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_340 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_2034 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_2034 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_2036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_352 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_2038 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_350 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2040 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_2040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_2042 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_342 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2044 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_2044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_344 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_2046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_360 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_2048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_358 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_2050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_348 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_2052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_356 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_2054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_354 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_2056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_2058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_2060 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_2062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_316 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_2064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_2066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_2068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_2070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2072 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_332
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2074 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_2074 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_334 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2076 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_2076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_338 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2078 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_2078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2080 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_2080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_346 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_2082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_2082 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_2084 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2084 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2088 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 -> ()
d_UpdateT_2088 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2090 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_2090 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1164 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2092 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2092 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1172 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2094 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 -> AgdaAny -> ()
d_ppdWellFormed_2094 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2096 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_2096 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1166 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2100 ::
  T_TransactionStructure_20 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2100 ~v0 = du__'63''8599'__2100
du__'63''8599'__2100 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2100 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__916 v1 v2
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2102 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2102 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1094
      (coe d_epochStructure_1520 (coe v0))
      (coe d_scriptStructure_1806 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2104 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2106 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_2106 ~v0 = du_applyPParamsUpdate_2106
du_applyPParamsUpdate_2106 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_2106
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_964
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2108 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_2108 ~v0 = du_modifiedUpdateGroups_2108
du_modifiedUpdateGroups_2108 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
du_modifiedUpdateGroups_2108
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_900
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2110 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesEconomicGroup_2110 ~v0 = du_modifiesEconomicGroup_2110
du_modifiesEconomicGroup_2110 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
du_modifiesEconomicGroup_2110
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_708
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2112 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesGovernanceGroup_2112 ~v0
  = du_modifiesGovernanceGroup_2112
du_modifiesGovernanceGroup_2112 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
du_modifiesGovernanceGroup_2112
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_836
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2114 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesNetworkGroup_2114 ~v0 = du_modifiesNetworkGroup_2114
du_modifiesNetworkGroup_2114 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
du_modifiesNetworkGroup_2114
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_644
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2116 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
d_modifiesTechnicalGroup_2116 ~v0 = du_modifiesTechnicalGroup_2116
du_modifiesTechnicalGroup_2116 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Bool
du_modifiesTechnicalGroup_2116
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_772
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2118 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> ()
d_paramsUpdateWellFormed_2118 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2120 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2120 ~v0
  = du_paramsUpdateWellFormed'63'_2120
du_paramsUpdateWellFormed'63'_2120 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2120
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_640
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2122 ::
  T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2122 ~v0 = du_'8801''45'update_2122
du_'8801''45'update_2122 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_2122 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_930 v1
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2126 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe AgdaAny
d_Emax_2126 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_546 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2128 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_a_2128 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_528 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2130 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2130 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_544 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2132 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_b_2132 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_530 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2134 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_ccMaxTermLength_2134 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_568 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2136 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_ccMinSize_2136 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_566 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2138 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_coinsPerUTxOByte_2138 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_536 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2140 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_collateralPercentage_2140 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_550 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2142 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe AgdaAny
d_costmdls_2142 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_552 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2144 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe AgdaAny
d_drepActivity_2144 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_564 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2146 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_drepDeposit_2146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_562 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2148 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_2148 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_554 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2150 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_govActionDeposit_2150 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_560 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2152 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_govActionLifetime_2152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_558 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2154 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_keyDeposit_2154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_532 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2156 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxBlockExUnits_2156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_524 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2158 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxBlockSize_2158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_512 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2160 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxCollateralInputs_2160 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_520 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2162 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxHeaderSize_2162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_516 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2164 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe AgdaAny
d_maxTxExUnits_2164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_522 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2166 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxTxSize_2166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_514 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2168 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_maxValSize_2168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_518 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2170 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2170 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_538
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2172 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_minUTxOValue_2172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_542 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2174 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_nopt_2174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_548 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2176 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe Integer
d_poolDeposit_2176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_534 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2178 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_2178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_556 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2180 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 -> Maybe AgdaAny
d_prices_2180 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_540 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2182 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_452 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2182 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_526 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2186 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2186 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2188 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2188 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2190 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2190 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2192 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2192 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_2194 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2194 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_2202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1180
d_govParams_2202 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2206 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2208 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2210 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2210 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1240
      (coe d_govParams_2202 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_2212 :: T_TransactionStructure_20 -> ()
d_THash_2212 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2214 :: T_TransactionStructure_20 -> ()
d_UpdateT_2214 = erased
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2216 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2216 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2218 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_2220 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1164
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_2222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2222 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1226
      (coe d_govParams_2202 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2224 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1148
d_ppUpd_2224 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
      (coe d_govParams_2202 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2226 ::
  T_TransactionStructure_20 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2226 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1172
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2228 :: T_TransactionStructure_20 -> AgdaAny -> ()
d_ppdWellFormed_2228 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2230 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_2230 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1166
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1212
         (coe d_govParams_2202 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2232 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2232 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__2236 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2236 v0
  = let v1 = d_tokenAlgebra_2232 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__2238 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2238 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2240 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2240 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_2242 :: T_TransactionStructure_20 -> ()
d_AssetName_2242 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2244 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2244 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2246 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2246 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2248 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2250 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2252 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_2254 :: T_TransactionStructure_20 -> ()
d_Value_2254 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2256 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2256 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2258 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2258 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_2260 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2260 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_2262 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_2262 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2264 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2264 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2266 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2266 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_2268 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_2268 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_2270 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2270 v0
  = let v1 = d_tokenAlgebra_2232 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_890
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_2272 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_2272 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_2274 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2274 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2276 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2276 v0
  = let v1 = d_tokenAlgebra_2232 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v2))))
-- Ledger.Transaction.TransactionStructure._.size
d_size_2278 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_2278 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2280 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_2280 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2282 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2282 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
      (coe d_tokenAlgebra_2232 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_2284 :: T_TransactionStructure_20 -> AgdaAny
d_ε_2284 v0
  = let v1 = d_tokenAlgebra_2232 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_842
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2288 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2292 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2294 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2296 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2296 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2300 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2304 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2306 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2306 ~v0 = du_isMagmaIsomorphism_2306
du_isMagmaIsomorphism_2306 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2306 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2308 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2308 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2308 v2
du_isMagmaMonomorphism_2308 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2308 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2310 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2312 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2312 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2314 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2314 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2316 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2316 ~v0 ~v1 v2 = du_isRelIsomorphism_2316 v2
du_isRelIsomorphism_2316 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2316 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2318 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2318 ~v0 ~v1 v2 = du_isRelMonomorphism_2318 v2
du_isRelMonomorphism_2318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2318 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2320 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2320 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2322 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2322 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2324 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2324 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2328 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2328 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2330 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2330 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2332 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2332 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2334 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2334 ~v0 = du_isMagmaMonomorphism_2334
du_isMagmaMonomorphism_2334 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2334 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2336 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2336 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2338 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2338 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2340 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2340 ~v0 ~v1 v2 = du_isRelMonomorphism_2340 v2
du_isRelMonomorphism_2340 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2340 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2342 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2342 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2344 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_2346 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_2346 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_2348 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_2348 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13419 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_2350 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_2350 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2529
      (d_DecEq'45'TxId_1194 (coe v0)) (d_crypto_1234 (coe v0))
      (d_epochStructure_1520 (coe v0)) (d_scriptStructure_1806 (coe v0))
      (d_govParams_2202 (coe v0)) (d_globalConstants_1210 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_2354 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_2362 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2362 ~v0 = du_DecEq'45'GovRole_2362
du_DecEq'45'GovRole_2362 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2362
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_802
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_2364 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2364 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
      (coe d_govStructure_2350 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_2366 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2366 ~v0 = du_DecEq'45'Vote_2366
du_DecEq'45'Vote_2366 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2366
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_804
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_2368 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_2370 :: T_TransactionStructure_20 -> ()
d_GovActionID_2370 = erased
-- Ledger.Transaction.TransactionStructure._.GovActionState
d_GovActionState_2372 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_2374 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_2376 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_2378 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_2380 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2380 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_2384 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694 -> ()
d_NeedsHash_2384 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2398 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Voter
d_Voter_2400 :: T_TransactionStructure_20 -> ()
d_Voter_2400 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2404 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694 -> ()
d_actionWellFormed_2404 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed?
d_actionWellFormed'63'_2406 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2406 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_720
      (coe d_govStructure_2350 (coe v0))
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2410 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2410 ~v0 = du_getDRepVote_2410
du_getDRepVote_2410 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2410
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_808
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2412 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2412 ~v0 = du_maximum_2412
du_maximum_2412 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2412
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_660
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2418 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 -> AgdaAny
d_hash_2418 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_692 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2420 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2420 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_690 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.action
d_action_2440 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_2440 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_798 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.expiresIn
d_expiresIn_2442 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  AgdaAny
d_expiresIn_2442 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_796 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.prevAction
d_prevAction_2444 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  AgdaAny
d_prevAction_2444 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_800 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.returnAddr
d_returnAddr_2446 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2446 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_794 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.votes
d_votes_2448 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2448 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_792 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2452 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_694
d_action_2452 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_768 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2454 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_2454 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_778 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2456 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> Integer
d_deposit_2456 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_774 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.policy
d_policy_2458 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  Maybe AgdaAny
d_policy_2458 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_772 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2460 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 -> AgdaAny
d_prevAction_2460 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_770 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2462 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2462 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_776 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2474 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_684
d_anchor_2474 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_752 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2476 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2476 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_746 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2478 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_728
d_vote_2478 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.voter
d_voter_2480 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2480 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2492 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2494 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2494 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2496 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2498 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2500 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2502 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2512 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2514 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2518 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2526 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2528 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2528 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
      (coe d_govStructure_2350 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2530 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DepositPurpose
d_DepositPurpose_2532 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Deposits
d_Deposits_2534 :: T_TransactionStructure_20 -> ()
d_Deposits_2534 = erased
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2542 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2546 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2546 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2552 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2556 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2556 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2558 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2562 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_834 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2562 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_850
-- Ledger.Transaction.TransactionStructure._.CertEnv.deposits
d_deposits_2622 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2622 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_886 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2624 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_2624 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2626 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2626 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2628 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_votes_2628 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2630 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2630 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2634 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2634 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2636 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918
d_gState_2636 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2638 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2638 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2658 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2658 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_902 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2660 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2660 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2662 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2662 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_898 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.deposits
d_deposits_2666 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_958 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2668 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2668 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_956 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2670 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_946 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2670 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_954 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2684 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2684 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2686 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2686 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_924 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2690 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2690 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2692 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2692 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2696 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_828 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2696 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_832 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2700 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2702 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState.deposits
d_deposits_2706 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2706 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_912 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2708 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2708 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_910 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2710 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2710 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_908 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2712 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2712 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_906 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2716 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2716 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_926 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.deposits
d_deposits_2718 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2718 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_928 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2720 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2720 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_924 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2722 :: T_TransactionStructure_20 -> ()
d_TxIn_2722 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2724 :: T_TransactionStructure_20 -> ()
d_TxOut_2724 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2726 :: T_TransactionStructure_20 -> ()
d_UTxO_2726 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2728 :: T_TransactionStructure_20 -> ()
d_Wdrl_2728 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2730 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2730 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2732 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2732 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2734 :: T_TransactionStructure_20 -> ()
d_Update_2734 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2736 a0 = ()
data T_TxBody_2736
  = C_TxBody'46'constructor_16701 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_834]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2778 ::
  T_TxBody_2736 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2778 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2780 ::
  T_TxBody_2736 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2780 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2782 ::
  T_TxBody_2736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2782 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2784 :: T_TxBody_2736 -> Integer
d_txfee_2784 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2786 :: T_TxBody_2736 -> AgdaAny
d_mint_2786 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2788 ::
  T_TxBody_2736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2788 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2790 ::
  T_TxBody_2736 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_2790 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2792 ::
  T_TxBody_2736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2792 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2794 ::
  T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_2794 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2796 ::
  T_TxBody_2736 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
d_txprop_2796 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2798 :: T_TxBody_2736 -> Integer
d_txdonation_2798 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2800 ::
  T_TxBody_2736 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2800 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2802 :: T_TxBody_2736 -> Maybe AgdaAny
d_txADhash_2802 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_2804 :: T_TxBody_2736 -> Maybe AgdaAny
d_txNetworkId_2804 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_2806 :: T_TxBody_2736 -> Maybe Integer
d_curTreasury_2806 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2808 :: T_TxBody_2736 -> Integer
d_txsize_2808 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2810 :: T_TxBody_2736 -> AgdaAny
d_txid_2810 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2812 ::
  T_TxBody_2736 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2812 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2814 :: T_TxBody_2736 -> [AgdaAny]
d_reqSigHash_2814 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2816 :: T_TxBody_2736 -> Maybe AgdaAny
d_scriptIntHash_2816 v0
  = case coe v0 of
      C_TxBody'46'constructor_16701 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2818 a0 = ()
data T_TxWitnesses_2818
  = C_TxWitnesses'46'constructor_16873 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2828 ::
  T_TxWitnesses_2818 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2828 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16873 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2830 ::
  T_TxWitnesses_2818 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2830 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16873 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2832 ::
  T_TxWitnesses_2818 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2832 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16873 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2834 ::
  T_TxWitnesses_2818 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2834 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16873 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2836 ::
  T_TransactionStructure_20 ->
  T_TxWitnesses_2818 -> [MAlonzo.Code.Ledger.Script.T_Timelock_264]
d_scriptsP1_2836 ~v0 v1 = du_scriptsP1_2836 v1
du_scriptsP1_2836 ::
  T_TxWitnesses_2818 -> [MAlonzo.Code.Ledger.Script.T_Timelock_264]
du_scriptsP1_2836 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2830 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2838 a0 = ()
data T_Tx_2838
  = C_Tx'46'constructor_17053 T_TxBody_2736 T_TxWitnesses_2818 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2848 :: T_Tx_2838 -> T_TxBody_2736
d_body_2848 v0
  = case coe v0 of
      C_Tx'46'constructor_17053 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2850 :: T_Tx_2838 -> T_TxWitnesses_2818
d_wits_2850 v0
  = case coe v0 of
      C_Tx'46'constructor_17053 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2852 :: T_Tx_2838 -> Bool
d_isValid_2852 v0
  = case coe v0 of
      C_Tx'46'constructor_17053 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2854 :: T_Tx_2838 -> Maybe AgdaAny
d_txAD_2854 v0
  = case coe v0 of
      C_Tx'46'constructor_17053 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2856 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2856 ~v0 v1 = du_getValue_2856 v1
du_getValue_2856 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2856 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2860 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_2860 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_2862 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2862 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                    (MAlonzo.Code.Interface.Hashable.d_hash_16
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436
                                          (d_scriptStructure_1806 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_440
                                                (coe d_crypto_1234 (coe v0))
                                                (coe d_epochStructure_1520 (coe v0))
                                                (coe d_scriptStructure_1806 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_454
                                                (coe d_scriptStructure_1806 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2872 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2872 ~v0 v1 = du_getValue'688'_2872 v1
du_getValue'688'_2872 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2872 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2876 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2876 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__692
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_1194 (coe v0))
               (coe d_DecEq'45'Ix_1192 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1154 (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_108
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2882 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2882 ~v0 v1 = du_scriptOuts_2882 v1
du_scriptOuts_2882 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2882 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1138
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
           (coe
              MAlonzo.Code.Ledger.Address.du_payCred_108
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2890 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2890 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__692
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_1194 (coe v0))
               (coe d_DecEq'45'Ix_1192 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2882 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2896 ::
  T_TransactionStructure_20 ->
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2896 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Interface.IsSet.du_range_542
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe d_DecEq'45'TxId_1194 (coe v0))
                  (coe d_DecEq'45'Ix_1192 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2778 (coe d_body_2848 (coe v1)))
               (coe d_refInputs_2780 (coe d_body_2848 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2908 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2908 v0 ~v1 = du_collateral_2908 v0
du_collateral_2908 ::
  T_Tx_2838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2908 v0
  = coe d_collateral_2812 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_2910 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_2910 v0 ~v1 = du_curTreasury_2910 v0
du_curTreasury_2910 :: T_Tx_2838 -> Maybe Integer
du_curTreasury_2910 v0
  = coe d_curTreasury_2806 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2912 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2912 v0 ~v1 = du_mint_2912 v0
du_mint_2912 :: T_Tx_2838 -> AgdaAny
du_mint_2912 v0 = coe d_mint_2786 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2914 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2914 v0 ~v1 = du_refInputs_2914 v0
du_refInputs_2914 ::
  T_Tx_2838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2914 v0
  = coe d_refInputs_2780 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2916 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2916 v0 ~v1 = du_reqSigHash_2916 v0
du_reqSigHash_2916 :: T_Tx_2838 -> [AgdaAny]
du_reqSigHash_2916 v0
  = coe d_reqSigHash_2814 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2918 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2918 v0 ~v1 = du_scriptIntHash_2918 v0
du_scriptIntHash_2918 :: T_Tx_2838 -> Maybe AgdaAny
du_scriptIntHash_2918 v0
  = coe d_scriptIntHash_2816 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2920 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2920 v0 ~v1 = du_txADhash_2920 v0
du_txADhash_2920 :: T_Tx_2838 -> Maybe AgdaAny
du_txADhash_2920 v0
  = coe d_txADhash_2802 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_2922 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2922 v0 ~v1 = du_txNetworkId_2922 v0
du_txNetworkId_2922 :: T_Tx_2838 -> Maybe AgdaAny
du_txNetworkId_2922 v0
  = coe d_txNetworkId_2804 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2924 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_2924 v0 ~v1 = du_txcerts_2924 v0
du_txcerts_2924 ::
  T_Tx_2838 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
du_txcerts_2924 v0 = coe d_txcerts_2790 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2926 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2926 v0 ~v1 = du_txdonation_2926 v0
du_txdonation_2926 :: T_Tx_2838 -> Integer
du_txdonation_2926 v0
  = coe d_txdonation_2798 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2928 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2928 v0 ~v1 = du_txfee_2928 v0
du_txfee_2928 :: T_Tx_2838 -> Integer
du_txfee_2928 v0 = coe d_txfee_2784 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2930 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2930 v0 ~v1 = du_txid_2930 v0
du_txid_2930 :: T_Tx_2838 -> AgdaAny
du_txid_2930 v0 = coe d_txid_2810 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2932 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2932 v0 ~v1 = du_txins_2932 v0
du_txins_2932 ::
  T_Tx_2838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2932 v0 = coe d_txins_2778 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2934 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2934 v0 ~v1 = du_txouts_2934 v0
du_txouts_2934 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2934 v0 = coe d_txouts_2782 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2936 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
d_txprop_2936 v0 ~v1 = du_txprop_2936 v0
du_txprop_2936 ::
  T_Tx_2838 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_754]
du_txprop_2936 v0 = coe d_txprop_2796 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2938 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2938 v0 ~v1 = du_txsize_2938 v0
du_txsize_2938 :: T_Tx_2838 -> Integer
du_txsize_2938 v0 = coe d_txsize_2808 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2940 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2940 v0 ~v1 = du_txup_2940 v0
du_txup_2940 ::
  T_Tx_2838 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2940 v0 = coe d_txup_2800 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2942 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2942 v0 ~v1 = du_txvldt_2942 v0
du_txvldt_2942 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2942 v0 = coe d_txvldt_2788 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2944 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
d_txvote_2944 v0 ~v1 = du_txvote_2944 v0
du_txvote_2944 ::
  T_Tx_2838 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_736]
du_txvote_2944 v0 = coe d_txvote_2794 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2946 ::
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2946 v0 ~v1 = du_txwdrls_2946 v0
du_txwdrls_2946 ::
  T_Tx_2838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2946 v0 = coe d_txwdrls_2792 (coe d_body_2848 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2948 ::
  T_TransactionStructure_20 ->
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2948 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2830 (coe d_wits_2850 (coe v1)))
      (coe d_refScripts_2896 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2958 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2958 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe d_crypto_1234 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_534
               (coe du_m_2970 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2970 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2970 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2970 v0 ~v1 v2 v3 = du_m_2970 v0 v2 v3
du_m_2970 ::
  T_TransactionStructure_20 ->
  T_Tx_2838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2970 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436
         (d_scriptStructure_1806 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_440 (coe d_crypto_1234 (coe v0))
               (coe d_epochStructure_1520 (coe v0))
               (coe d_scriptStructure_1806 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_454
               (coe d_scriptStructure_1806 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1234 (coe v0)))
      (coe d_txscripts_2948 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2972 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2972 ~v0 v1 = du_isP2Script_2972 v1
du_isP2Script_2972 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2972 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2974 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2974 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
              (d_tokenAlgebra_2232 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
