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
  = C_TransactionStructure'46'constructor_13361 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_1176
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Transaction._.Ser
d_Ser_90 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 -> ()
d_Ser_90 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_118 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_1180 :: T_TransactionStructure_20 -> ()
d_Ix_1180 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_1182 :: T_TransactionStructure_20 -> ()
d_TxId_1182 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1184 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_1184 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1186 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1186 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1188 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1188 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1190 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1190 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1194 :: T_TransactionStructure_20 -> ()
d_THash_1194 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1196 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1196 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe d_adHashingScheme_1190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1198 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe d_adHashingScheme_1190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1200 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1200 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe d_adHashingScheme_1190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1202 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe d_adHashingScheme_1190 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1204 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230
d_globalConstants_1204 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1210 :: T_TransactionStructure_20 -> ()
d_Network_1210 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1212 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1212 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_262
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1214 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1214 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_256
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1216 :: T_TransactionStructure_20 -> Integer
d_Quorum_1216 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_260
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1218 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1218 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_252
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1220 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1220 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1222 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1222 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1224 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1224 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_264
      (coe d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1226 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1230 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1230 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1232 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1232 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1234 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1236 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1236 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1238 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1238 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1240 :: T_TransactionStructure_20 -> ()
d_THash_1240 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1242 :: T_TransactionStructure_20 -> ()
d_KeyPair_1242 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1244 :: T_TransactionStructure_20 -> ()
d_SKey_1244 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1246 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1246 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1248 :: T_TransactionStructure_20 -> ()
d_Ser_1248 = erased
-- Ledger.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1250 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1250 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1252 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1252 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1254 :: T_TransactionStructure_20 -> ()
d_Sig_1254 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1256 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1256 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1258 :: T_TransactionStructure_20 -> ()
d_VKey_1258 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1260 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1260 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1262 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1262 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1264 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1264 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1266 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1266 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1268 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1268 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_1226 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1270 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1270 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1274 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1274 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1276 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1280 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1280 ~v0 v1 = du__'8729'__1280 v1
du__'8729'__1280 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1280 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1282 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1282 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1284 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1284 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1286 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1286 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1288 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1288 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1290 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1290 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1292 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1294 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1296 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1298 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1298 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1300 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1300 ~v0
  = du_Value'45'CommutativeMonoid_1300
du_Value'45'CommutativeMonoid_1300 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_1300
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1302 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1302 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1304 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1304 ~v0 = du_addValue_1304
du_addValue_1304 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1304
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1306 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1306 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1308 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1308 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1310 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1310 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1312 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1312 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1314 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1314 ~v0 v1 = du_monoid_1314 v1
du_monoid_1314 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_1314 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1316 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1316 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1318 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1318 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1320 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1320 ~v0 v1 = du_rawMonoid_1320 v1
du_rawMonoid_1320 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_1320 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1322 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1322 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1324 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1324 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1326 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1326 ~v0 = du_sum'7515'_1326
du_sum'7515'_1326 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1326
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1328 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1328 ~v0 v1 = du_ε_1328 v1
du_ε_1328 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
du_ε_1328 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1332 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1332 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1334 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1334 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1336 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1336 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1338 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1338 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1340 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1340 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1344 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1346 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1346 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1348 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1348 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1350 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1350 ~v0 ~v1 = du_isMagmaIsomorphism_1350
du_isMagmaIsomorphism_1350 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1350 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1352 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1352 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1352 v3
du_isMagmaMonomorphism_1352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1352 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1354 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1354 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1358 v0
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
d_isRelIsomorphism_1360 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1360 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1360 v3
du_isRelIsomorphism_1360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1360 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1362 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1362 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1362 v3
du_isRelMonomorphism_1362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1362 v0
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
d_surjective_1364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1364 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1366 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1368 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1372 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1374 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1378 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1378 ~v0 ~v1 = du_isMagmaMonomorphism_1378
du_isMagmaMonomorphism_1378 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1378 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1380 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1384 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1384 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1384 v3
du_isRelMonomorphism_1384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1386 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1388 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1392 :: T_TransactionStructure_20 -> ()
d_Addr_1392 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1394 a0 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1396 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1398 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1400 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1400 ~v0 = du_Dec'45'isScript_1400
du_Dec'45'isScript_1400 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1400
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1402 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1402 ~v0 = du_Dec'45'isVKey_1402
du_Dec'45'isVKey_1402 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1402
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1404 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1404 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
         (coe d_globalConstants_1204 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1226 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1406 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1406 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
         (coe d_globalConstants_1204 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1226 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1408 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1408 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1226 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1410 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1410 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
         (coe d_globalConstants_1204 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1226 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1416 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1420 :: T_TransactionStructure_20 -> ()
d_ScriptAddr_1420 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1422 :: T_TransactionStructure_20 -> ()
d_ScriptBaseAddr_1422 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1424 :: T_TransactionStructure_20 -> ()
d_ScriptBootstrapAddr_1424 = erased
-- Ledger.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1428 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1428 ~v0 = du_Show'45'Credential_1428
du_Show'45'Credential_1428 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1428 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1430 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1430 ~v0
  = du_Show'45'Credential'215'Coin_1430
du_Show'45'Credential'215'Coin_1430 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1430 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1432 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1432 ~v0 = du_Show'45'RwdAddr_1432
du_Show'45'RwdAddr_1432 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1432
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1434 :: T_TransactionStructure_20 -> ()
d_VKeyAddr_1434 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1436 :: T_TransactionStructure_20 -> ()
d_VKeyBaseAddr_1436 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1438 :: T_TransactionStructure_20 -> ()
d_VKeyBootstrapAddr_1438 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1442 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1442 ~v0 = du_getScriptHash_1442
du_getScriptHash_1442 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1442
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1444 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1446 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1446 ~v0 = du_isBootstrapAddr'63'_1446
du_isBootstrapAddr'63'_1446 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1446
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1448 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1448 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1450 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1450 ~v0 = du_isKeyHashObj_1450
du_isKeyHashObj_1450 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1450
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1452 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1452 ~v0 = du_isKeyHashObj'7495'_1452
du_isKeyHashObj'7495'_1452 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1452
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1454 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1456 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1456 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1458 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1458 ~v0 = du_isScriptObj_1458
du_isScriptObj_1458 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1458
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1460 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1462 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1464 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1464 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1466 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1466 ~v0 = du_netId_1466
du_netId_1466 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1466 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1468 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1468 ~v0 = du_payCred_1468
du_payCred_1468 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1468 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1470 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1470 ~v0 = du_stakeCred_1470
du_stakeCred_1470 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1470
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1474 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1474 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1476 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1476 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1478 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1478 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1482 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1482 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1484 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1484 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1486 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1486 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1496 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1496 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1498 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1498 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1512 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1512 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1516 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1516 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__210
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1518 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1518 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_34
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1520 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1520 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_42
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1522 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1522 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_40
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1524 :: T_TransactionStructure_20 -> ()
d_Epoch_1524 = erased
-- Ledger.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1526 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1526 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_226
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1528 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1528 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_36
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1530 :: T_TransactionStructure_20 -> ()
d_Slot_1530 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1532 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1532 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_30
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1534 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1534 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_48
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1536 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1536 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_220
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1538 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1538 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_218
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1540 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1540 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_44
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1542 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1542 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1544 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1544 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_52
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1546 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1546 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_50
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1548 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1548 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_206
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1552 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1552 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_318
      (coe d_crypto_1226 (coe v0)) (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1554 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1554 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_274
      (coe d_crypto_1226 (coe v0)) (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1556 a0 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1558 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_P1ScriptStructure'45'TL_1558 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_396
      (coe d_crypto_1226 (coe v0)) (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1560 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1574 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1576 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1590 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1594 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1594 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1596 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1596 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1598 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1598 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1600 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 -> ()
d_P1Script_1600 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1602 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1602 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1606 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1606 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1608 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_CostModel_1608 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1610 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_T_1610 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1612 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_THash_1612 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1614 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1614 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1616 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Datum_1616 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1618 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1618 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1620 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1620 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1622 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1622 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1624 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1624 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1626 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1626 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1628 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1628 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1630 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1630 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1632 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1632 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1634 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1634 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1636 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_ExUnits_1636 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1638 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1640 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_LangDepView_1640 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1642 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Language_1642 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1644 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_PlutusScript_1644 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1646 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV1_1646 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1648 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV2_1648 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1650 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV3_1650 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1652 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Prices_1652 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1654 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Redeemer_1654 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1656 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1656 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1658 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1658 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1660 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1660 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1662 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1662 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1664 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1664 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1666 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1666 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1668 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> AgdaAny
d_language_1668 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_254 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1670 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  () -> AgdaAny -> AgdaAny
d_toData_1670 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_258 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1672 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1672 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1676 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1676 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1678 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_CostModel_1678 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1680 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_T_1680 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1682 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_THash_1682 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1684 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1684 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1686 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Datum_1686 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1688 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1688 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (let v2 = d_epochStructure_1512 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1690 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1690 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1692 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1692 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1694 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1694 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1696 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1696 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1698 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1698 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1700 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1700 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1702 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1702 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (let v2 = d_epochStructure_1512 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1704 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1704 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1706 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1706 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1708 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1710 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_ExUnits_1710 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1712 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1712 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_434 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1714 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1714 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (let v2 = d_epochStructure_1512 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1716 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1716 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1718 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1718 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
      (coe d_crypto_1226 (coe v0)) (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1720 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_LangDepView_1720 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1722 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Language_1722 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1724 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_P1Script_1724 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1726 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_PlutusScript_1726 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1728 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV1_1728 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1730 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV2_1730 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1732 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV3_1732 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1734 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Prices_1734 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1736 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Redeemer_1736 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1738 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Script_1738 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1740 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1740 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1742 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1742 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1744 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1744 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1746 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1746 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1748 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1748 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1750 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1750 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_186
         (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1752 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1752 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1754 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> AgdaAny
d_language_1754 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_254
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1756 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_p1s_1756 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_436 (coe d_crypto_1226 (coe v0))
      (coe d_epochStructure_1512 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1758 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_ps_1758 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1760 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  () -> AgdaAny -> AgdaAny
d_toData_1760 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1762 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_1762 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1764 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1764 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1794 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
d_scriptStructure_1794 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1798 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1798 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1800 :: T_TransactionStructure_20 -> ()
d_CostModel_1800 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1802 :: T_TransactionStructure_20 -> ()
d_T_1802 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1804 :: T_TransactionStructure_20 -> ()
d_THash_1804 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1806 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1806 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1808 :: T_TransactionStructure_20 -> ()
d_Datum_1808 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1810 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1810 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (let v2 = d_epochStructure_1512 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1794 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1812 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1812 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1814 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1814 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1816 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1816 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1818 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1820 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1820 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1822 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1822 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1824 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1824 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (let v2 = d_epochStructure_1512 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1794 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1826 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1826 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_1794 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1828 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1828 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_1794 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1830 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1830 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1832 :: T_TransactionStructure_20 -> ()
d_ExUnits_1832 = erased
-- Ledger.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1834 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1834 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_434
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1836 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1836 v0
  = let v1 = d_crypto_1226 (coe v0) in
    coe
      (let v2 = d_epochStructure_1512 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1794 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1838 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1838 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1840 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1840 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
      (coe d_crypto_1226 (coe v0)) (coe d_epochStructure_1512 (coe v0))
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1842 :: T_TransactionStructure_20 -> ()
d_LangDepView_1842 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1844 :: T_TransactionStructure_20 -> ()
d_Language_1844 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1846 :: T_TransactionStructure_20 -> ()
d_P1Script_1846 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1848 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1848 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1850 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV1_1850 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_200
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1852 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV2_1852 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1854 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV3_1854 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1856 :: T_TransactionStructure_20 -> ()
d_Prices_1856 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1858 :: T_TransactionStructure_20 -> ()
d_Redeemer_1858 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1860 :: T_TransactionStructure_20 -> ()
d_Script_1860 = erased
-- Ledger.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1862 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1862 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1864 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1864 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1866 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1868 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1868 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_1794 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1870 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1870 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_450
                 (coe d_scriptStructure_1794 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1872 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1872 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_186
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe d_scriptStructure_1794 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1874 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1874 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1876 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1876 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_254
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1878 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_p1s_1878 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_436 (coe d_crypto_1226 (coe v0))
      (coe d_epochStructure_1512 (coe v0))
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1880 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_ps_1880 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_450
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1882 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1882 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe d_scriptStructure_1794 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1884 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_1884 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1886 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1886 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1890 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1892 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1892 ~v0
  = du_DecEq'45'DrepThresholds_1892
du_DecEq'45'DrepThresholds_1892 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1892
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_432
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1894 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1894 ~v0 = du_DecEq'45'PParamGroup_1894
du_DecEq'45'PParamGroup_1894 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1894
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_438
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1896 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1896 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_436
      (coe d_epochStructure_1512 (coe v0))
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1898 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1898 ~v0
  = du_DecEq'45'PoolThresholds_1898
du_DecEq'45'PoolThresholds_1898 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1898
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_434
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1900 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1904 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1910 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1912 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1914 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1916 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1918 :: T_TransactionStructure_20 -> ()
d_ProtVer_1918 = erased
-- Ledger.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1922 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1922 ~v0 = du_Show'45'DrepThresholds_1922
du_Show'45'DrepThresholds_1922 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1922
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_440
-- Ledger.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_1924 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1924 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_444
      (coe d_epochStructure_1512 (coe v0))
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1926 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1926 ~v0 = du_Show'45'PoolThresholds_1926
du_Show'45'PoolThresholds_1926 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1926
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_442
-- Ledger.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_1928 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1928 ~v0 = du_Show'45'ProtVer_1928
du_Show'45'ProtVer_1928 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1928
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ProtVer_156
-- Ledger.Transaction.TransactionStructure._.Show-ℚ
d_Show'45'ℚ_1930 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1930 ~v0 = du_Show'45'ℚ_1930
du_Show'45'ℚ_1930 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_1930
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ℚ_426
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1938 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> ()
d_paramsWellFormed_1938 = erased
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1940 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1942 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1942 ~v0 = du_pvCanFollow'63'_1942
du_pvCanFollow'63'_1942 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1942
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1096
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1948 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_142 -> Integer
d_reserves_1948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_150 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1950 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_142 -> Integer
d_treasury_1950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_148 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1954 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1954 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_198 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1956 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1956 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1958 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1958 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1960 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1960 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1962 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1962 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1964 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1964 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1966 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1966 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1968 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1968 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1970 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1970 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1972 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1972 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1976 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1976 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1978 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1978 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1980 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1982 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_THash_1982 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1984 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_UpdateT_1984 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.Show-THash
d_Show'45'THash_1986 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1986 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1988 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1988 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1990 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_1990 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1992 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1992 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1994 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_1994 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_1996 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1996 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1998 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> AgdaAny -> ()
d_ppdWellFormed_1998 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2000 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_2000 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2016 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_Emax_2016 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_332 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_2018 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_a_2018 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_316 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_2020 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2020 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_336 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_2022 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_b_2022 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2024 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMaxTermLength_2024 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_348 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2026 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMinSize_2026 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_346 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2028 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_coinsPerUTxOByte_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2030 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_collateralPercentage_2030 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_338 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_costmdls_2032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_340 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2034 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_drepActivity_2034 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_356 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_drepDeposit_2036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_354 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_2038 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2040 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionDeposit_2040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_352 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionLifetime_2042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_350 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2044 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_keyDeposit_2044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_maxBlockExUnits_2046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxBlockSize_2048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_300 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxCollateralInputs_2050 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2052 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxHeaderSize_2052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_maxTxExUnits_2054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxTxSize_2056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxValSize_2058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2060 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_328
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_minUTxOValue_2062 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2064 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_nopt_2064 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_334 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2066 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_poolDeposit_2066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2068 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_2068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_2070 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> AgdaAny
d_prices_2070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_2072 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2072 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2076 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> ()
d_UpdateT_2076 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2078 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_2078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2080 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2080 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2082 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> AgdaAny -> ()
d_ppdWellFormed_2082 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2084 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_2084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1162 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2088 ::
  T_TransactionStructure_20 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2088 ~v0 = du__'63''8599'__2088
du__'63''8599'__2088 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2088 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__912 v1 v2
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2090 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1090
      (coe d_epochStructure_1512 (coe v0))
      (coe d_scriptStructure_1794 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2092 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2094 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyPParamsUpdate_2094 ~v0 = du_applyPParamsUpdate_2094
du_applyPParamsUpdate_2094 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
du_applyPParamsUpdate_2094
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_960
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2096 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_modifiedUpdateGroups_2096 ~v0 = du_modifiedUpdateGroups_2096
du_modifiedUpdateGroups_2096 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
du_modifiedUpdateGroups_2096
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_896
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2098 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesEconomicGroup_2098 ~v0 = du_modifiesEconomicGroup_2098
du_modifiesEconomicGroup_2098 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesEconomicGroup_2098
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_704
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2100 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesGovernanceGroup_2100 ~v0
  = du_modifiesGovernanceGroup_2100
du_modifiesGovernanceGroup_2100 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesGovernanceGroup_2100
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_832
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2102 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesNetworkGroup_2102 ~v0 = du_modifiesNetworkGroup_2102
du_modifiesNetworkGroup_2102 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesNetworkGroup_2102
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_640
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2104 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesTechnicalGroup_2104 ~v0 = du_modifiesTechnicalGroup_2104
du_modifiesTechnicalGroup_2104 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
du_modifiesTechnicalGroup_2104
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_768
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2106 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> ()
d_paramsUpdateWellFormed_2106 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2108 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2108 ~v0
  = du_paramsUpdateWellFormed'63'_2108
du_paramsUpdateWellFormed'63'_2108 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2108
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_636
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2110 ::
  T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2110 ~v0 = du_'8801''45'update_2110
du_'8801''45'update_2110 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_2110 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_926 v1
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2114 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_Emax_2114 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_542 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2116 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_a_2116 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_524 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2118 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2118 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_540 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2120 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_b_2120 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_526 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2122 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMaxTermLength_2122 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_564 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2124 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMinSize_2124 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_562 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2126 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_coinsPerUTxOByte_2126 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_532 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2128 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_collateralPercentage_2128 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_546 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2130 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_costmdls_2130 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_548 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2132 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_drepActivity_2132 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_560 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2134 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_drepDeposit_2134 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_558 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2136 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_2136 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_550 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2138 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionDeposit_2138 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_556 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2140 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionLifetime_2140 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_554 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2142 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_keyDeposit_2142 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_528 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2144 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_maxBlockExUnits_2144 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_520 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2146 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxBlockSize_2146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_508 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2148 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxCollateralInputs_2148 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_516 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2150 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxHeaderSize_2150 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_512 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2152 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_maxTxExUnits_2152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_518 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2154 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxTxSize_2154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_510 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2156 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxValSize_2156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_514 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2158 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2158 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_534
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2160 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_minUTxOValue_2160 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_538 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2162 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_nopt_2162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_544 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2164 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_poolDeposit_2164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_530 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2166 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_2166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_552 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2168 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe AgdaAny
d_prices_2168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_536 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2170 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2170 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_522 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2174 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2174 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_230 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2176 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2176 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_232 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2178 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2178 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_234 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2180 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2180 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_236 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_2182 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2182 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_238 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_2190 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176
d_govParams_2190 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2194 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2194 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2196 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2196 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2198 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236
      (coe d_govParams_2190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_2200 :: T_TransactionStructure_20 -> ()
d_THash_2200 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2202 :: T_TransactionStructure_20 -> ()
d_UpdateT_2202 = erased
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2204 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2204 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2206 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_2208 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_2210 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2210 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
      (coe d_govParams_2190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2212 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_2212 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
      (coe d_govParams_2190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2214 ::
  T_TransactionStructure_20 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2214 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2216 :: T_TransactionStructure_20 -> AgdaAny -> ()
d_ppdWellFormed_2216 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2218 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_2218 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2220 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__2224 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2224 v0
  = let v1 = d_tokenAlgebra_2220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__2226 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2226 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2228 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2228 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_2230 :: T_TransactionStructure_20 -> ()
d_AssetName_2230 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2232 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2232 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2234 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2236 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2238 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2240 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_2242 :: T_TransactionStructure_20 -> ()
d_Value_2242 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2244 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2244 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2246 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2246 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_2248 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2248 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_2250 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_2250 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2252 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2252 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2254 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2254 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_2256 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_2256 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_2258 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2258 v0
  = let v1 = d_tokenAlgebra_2220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_890
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_2260 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_2260 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_2262 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2262 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2264 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2264 v0
  = let v1 = d_tokenAlgebra_2220 (coe v0) in
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
d_size_2266 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_2266 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2268 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_2268 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2270 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2270 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
      (coe d_tokenAlgebra_2220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_2272 :: T_TransactionStructure_20 -> AgdaAny
d_ε_2272 v0
  = let v1 = d_tokenAlgebra_2220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_842
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2276 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2280 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2282 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2284 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2288 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2292 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2294 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2294 ~v0 = du_isMagmaIsomorphism_2294
du_isMagmaIsomorphism_2294 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2294 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2296 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2296 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2296 v2
du_isMagmaMonomorphism_2296 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2296 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2302 v0
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
d_isRelIsomorphism_2304 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2304 ~v0 ~v1 v2 = du_isRelIsomorphism_2304 v2
du_isRelIsomorphism_2304 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2306 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2306 ~v0 ~v1 v2 = du_isRelMonomorphism_2306 v2
du_isRelMonomorphism_2306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2306 v0
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
d_surjective_2308 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2308 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2310 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2312 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2312 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2316 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2316 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2318 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2320 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2320 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2322 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2322 ~v0 = du_isMagmaMonomorphism_2322
du_isMagmaMonomorphism_2322 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2324 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2324 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2326 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2326 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2328 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2328 ~v0 ~v1 v2 = du_isRelMonomorphism_2328 v2
du_isRelMonomorphism_2328 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2328 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2330 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2330 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2332 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2332 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_2334 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_2334 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_2336 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_2336 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13361 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_2338 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_2338 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2505
      (d_DecEq'45'TxId_1188 (coe v0)) (d_crypto_1226 (coe v0))
      (d_epochStructure_1512 (coe v0)) (d_scriptStructure_1794 (coe v0))
      (d_govParams_2190 (coe v0)) (d_globalConstants_1204 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_2342 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_2350 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2350 ~v0 = du_DecEq'45'GovRole_2350
du_DecEq'45'GovRole_2350 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2350
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_2352 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2352 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
      (coe d_govStructure_2338 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_2354 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2354 ~v0 = du_DecEq'45'Vote_2354
du_DecEq'45'Vote_2354 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2354
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_798
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_2356 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_2358 :: T_TransactionStructure_20 -> ()
d_GovActionID_2358 = erased
-- Ledger.Transaction.TransactionStructure._.GovActionState
d_GovActionState_2360 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_2362 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_2364 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_2366 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_2368 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2368 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_2372 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_NeedsHash_2372 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2386 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Voter
d_Voter_2388 :: T_TransactionStructure_20 -> ()
d_Voter_2388 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2392 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_actionWellFormed_2392 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed?
d_actionWellFormed'63'_2394 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2394 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_714
      (coe d_govStructure_2338 (coe v0))
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2398 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2398 ~v0 = du_getDRepVote_2398
du_getDRepVote_2398 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2398
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_802
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2400 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2400 ~v0 = du_maximum_2400
du_maximum_2400 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2400
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_654
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2406 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 -> AgdaAny
d_hash_2406 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_686 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2408 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2408 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_684 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.action
d_action_2428 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
d_action_2428 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.expiresIn
d_expiresIn_2430 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_expiresIn_2430 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.prevAction
d_prevAction_2432 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_prevAction_2432 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.returnAddr
d_returnAddr_2434 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2434 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.votes
d_votes_2436 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2436 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2440 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
d_action_2440 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_762 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2442 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678
d_anchor_2442 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_772 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2444 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> Integer
d_deposit_2444 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_768 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.policy
d_policy_2446 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  Maybe AgdaAny
d_policy_2446 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_766 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2448 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> AgdaAny
d_prevAction_2448 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_764 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2450 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2450 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_770 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2462 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678
d_anchor_2462 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_746 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2464 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2464 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_740 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2466 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_vote_2466 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_744 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.voter
d_voter_2468 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2468 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_742 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2480 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2482 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_924 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2482 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2484 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2486 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2488 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2490 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2500 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2502 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2506 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2514 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2516 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2516 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820
      (coe d_govStructure_2338 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2518 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DepositPurpose
d_DepositPurpose_2520 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Deposits
d_Deposits_2522 :: T_TransactionStructure_20 -> ()
d_Deposits_2522 = erased
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2530 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2534 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2534 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2540 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2544 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2544 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2546 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2550 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2550 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_844
-- Ledger.Transaction.TransactionStructure._.CertEnv.deposits
d_deposits_2610 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2610 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_880 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2612 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_860 -> AgdaAny
d_epoch_2612 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_872 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2614 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pp_2614 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_874 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2616 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_votes_2616 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_876 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2618 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2618 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_878 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2622 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_DState_884
d_dState_2622 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_932 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2624 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_GState_912
d_gState_2624 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_936 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2626 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900
d_pState_2626 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_934 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2646 ::
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2646 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_896 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2648 ::
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2648 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_894 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2650 ::
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2650 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_892 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.deposits
d_deposits_2654 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2654 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_952 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2656 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2656 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_950 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2658 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_2658 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_948 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2672 ::
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2672 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_920 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2674 ::
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2674 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_918 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2678 ::
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2678 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_906 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2680 ::
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2680 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_908 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2684 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_822 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2684 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_826 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2688 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2690 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState.deposits
d_deposits_2694 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2694 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_906 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2696 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2696 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_904 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2698 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2698 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_902 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2700 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2700 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_900 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2704 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2704 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_920 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.deposits
d_deposits_2706 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2706 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_922 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2708 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2708 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_918 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2710 :: T_TransactionStructure_20 -> ()
d_TxIn_2710 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2712 :: T_TransactionStructure_20 -> ()
d_TxOut_2712 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2714 :: T_TransactionStructure_20 -> ()
d_UTxO_2714 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2716 :: T_TransactionStructure_20 -> ()
d_Wdrl_2716 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2718 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2718 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2720 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2720 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2722 :: T_TransactionStructure_20 -> ()
d_Update_2722 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2724 a0 = ()
data T_TxBody_2724
  = C_TxBody'46'constructor_16629 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_828]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2766 ::
  T_TxBody_2724 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2766 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2768 ::
  T_TxBody_2724 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2768 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2770 ::
  T_TxBody_2724 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2770 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2772 :: T_TxBody_2724 -> Integer
d_txfee_2772 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2774 :: T_TxBody_2724 -> AgdaAny
d_mint_2774 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2776 ::
  T_TxBody_2724 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2776 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2778 ::
  T_TxBody_2724 -> [MAlonzo.Code.Ledger.Certs.T_DCert_828]
d_txcerts_2778 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2780 ::
  T_TxBody_2724 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2780 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2782 ::
  T_TxBody_2724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2782 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2784 ::
  T_TxBody_2724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748]
d_txprop_2784 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2786 :: T_TxBody_2724 -> Integer
d_txdonation_2786 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2788 ::
  T_TxBody_2724 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2788 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2790 :: T_TxBody_2724 -> Maybe AgdaAny
d_txADhash_2790 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_2792 :: T_TxBody_2724 -> Maybe AgdaAny
d_txNetworkId_2792 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_2794 :: T_TxBody_2724 -> Maybe Integer
d_curTreasury_2794 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2796 :: T_TxBody_2724 -> Integer
d_txsize_2796 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2798 :: T_TxBody_2724 -> AgdaAny
d_txid_2798 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2800 ::
  T_TxBody_2724 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2800 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2802 :: T_TxBody_2724 -> [AgdaAny]
d_reqSigHash_2802 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2804 :: T_TxBody_2724 -> Maybe AgdaAny
d_scriptIntHash_2804 v0
  = case coe v0 of
      C_TxBody'46'constructor_16629 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2806 a0 = ()
data T_TxWitnesses_2806
  = C_TxWitnesses'46'constructor_16801 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2816 ::
  T_TxWitnesses_2806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2816 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16801 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2818 ::
  T_TxWitnesses_2806 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2818 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16801 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2820 ::
  T_TxWitnesses_2806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2820 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16801 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2822 ::
  T_TxWitnesses_2806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2822 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16801 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2824 ::
  T_TransactionStructure_20 ->
  T_TxWitnesses_2806 -> [MAlonzo.Code.Ledger.Script.T_Timelock_260]
d_scriptsP1_2824 ~v0 v1 = du_scriptsP1_2824 v1
du_scriptsP1_2824 ::
  T_TxWitnesses_2806 -> [MAlonzo.Code.Ledger.Script.T_Timelock_260]
du_scriptsP1_2824 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2818 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2826 a0 = ()
data T_Tx_2826
  = C_Tx'46'constructor_16981 T_TxBody_2724 T_TxWitnesses_2806 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2836 :: T_Tx_2826 -> T_TxBody_2724
d_body_2836 v0
  = case coe v0 of
      C_Tx'46'constructor_16981 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2838 :: T_Tx_2826 -> T_TxWitnesses_2806
d_wits_2838 v0
  = case coe v0 of
      C_Tx'46'constructor_16981 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2840 :: T_Tx_2826 -> Bool
d_isValid_2840 v0
  = case coe v0 of
      C_Tx'46'constructor_16981 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2842 :: T_Tx_2826 -> Maybe AgdaAny
d_txAD_2842 v0
  = case coe v0 of
      C_Tx'46'constructor_16981 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2844 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2844 ~v0 v1 = du_getValue_2844 v1
du_getValue_2844 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2844 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2848 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_2848 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_2850 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2850 v0 v1
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
                                          MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432
                                          (d_scriptStructure_1794 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_436
                                                (coe d_crypto_1226 (coe v0))
                                                (coe d_epochStructure_1512 (coe v0))
                                                (coe d_scriptStructure_1794 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_450
                                                (coe d_scriptStructure_1794 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2860 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2860 ~v0 v1 = du_getValue'688'_2860 v1
du_getValue'688'_2860 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2860 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2864 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2864 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1188 (coe v0))
               (coe d_DecEq'45'Ix_1186 (coe v0))))
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
d_scriptOuts_2870 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2870 ~v0 v1 = du_scriptOuts_2870 v1
du_scriptOuts_2870 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2870 v0
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
d_txinsScript_2878 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2878 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1188 (coe v0))
               (coe d_DecEq'45'Ix_1186 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2870 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2884 ::
  T_TransactionStructure_20 ->
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2884 v0 v1 v2
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
                  (coe d_DecEq'45'TxId_1188 (coe v0))
                  (coe d_DecEq'45'Ix_1186 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2766 (coe d_body_2836 (coe v1)))
               (coe d_refInputs_2768 (coe d_body_2836 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2896 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2896 v0 ~v1 = du_collateral_2896 v0
du_collateral_2896 ::
  T_Tx_2826 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2896 v0
  = coe d_collateral_2800 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_2898 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_2898 v0 ~v1 = du_curTreasury_2898 v0
du_curTreasury_2898 :: T_Tx_2826 -> Maybe Integer
du_curTreasury_2898 v0
  = coe d_curTreasury_2794 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2900 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2900 v0 ~v1 = du_mint_2900 v0
du_mint_2900 :: T_Tx_2826 -> AgdaAny
du_mint_2900 v0 = coe d_mint_2774 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2902 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2902 v0 ~v1 = du_refInputs_2902 v0
du_refInputs_2902 ::
  T_Tx_2826 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2902 v0
  = coe d_refInputs_2768 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2904 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2904 v0 ~v1 = du_reqSigHash_2904 v0
du_reqSigHash_2904 :: T_Tx_2826 -> [AgdaAny]
du_reqSigHash_2904 v0
  = coe d_reqSigHash_2802 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2906 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2906 v0 ~v1 = du_scriptIntHash_2906 v0
du_scriptIntHash_2906 :: T_Tx_2826 -> Maybe AgdaAny
du_scriptIntHash_2906 v0
  = coe d_scriptIntHash_2804 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2908 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2908 v0 ~v1 = du_txADhash_2908 v0
du_txADhash_2908 :: T_Tx_2826 -> Maybe AgdaAny
du_txADhash_2908 v0
  = coe d_txADhash_2790 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_2910 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2910 v0 ~v1 = du_txNetworkId_2910 v0
du_txNetworkId_2910 :: T_Tx_2826 -> Maybe AgdaAny
du_txNetworkId_2910 v0
  = coe d_txNetworkId_2792 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2912 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828]
d_txcerts_2912 v0 ~v1 = du_txcerts_2912 v0
du_txcerts_2912 ::
  T_Tx_2826 -> [MAlonzo.Code.Ledger.Certs.T_DCert_828]
du_txcerts_2912 v0 = coe d_txcerts_2778 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2914 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2914 v0 ~v1 = du_txdonation_2914 v0
du_txdonation_2914 :: T_Tx_2826 -> Integer
du_txdonation_2914 v0
  = coe d_txdonation_2786 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2916 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2916 v0 ~v1 = du_txfee_2916 v0
du_txfee_2916 :: T_Tx_2826 -> Integer
du_txfee_2916 v0 = coe d_txfee_2772 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2918 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2918 v0 ~v1 = du_txid_2918 v0
du_txid_2918 :: T_Tx_2826 -> AgdaAny
du_txid_2918 v0 = coe d_txid_2798 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2920 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2920 v0 ~v1 = du_txins_2920 v0
du_txins_2920 ::
  T_Tx_2826 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2920 v0 = coe d_txins_2766 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2922 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2922 v0 ~v1 = du_txouts_2922 v0
du_txouts_2922 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2922 v0 = coe d_txouts_2770 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2924 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748]
d_txprop_2924 v0 ~v1 = du_txprop_2924 v0
du_txprop_2924 ::
  T_Tx_2826 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748]
du_txprop_2924 v0 = coe d_txprop_2784 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2926 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2926 v0 ~v1 = du_txsize_2926 v0
du_txsize_2926 :: T_Tx_2826 -> Integer
du_txsize_2926 v0 = coe d_txsize_2796 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2928 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2928 v0 ~v1 = du_txup_2928 v0
du_txup_2928 ::
  T_Tx_2826 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2928 v0 = coe d_txup_2788 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2930 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2930 v0 ~v1 = du_txvldt_2930 v0
du_txvldt_2930 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2930 v0 = coe d_txvldt_2776 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2932 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2932 v0 ~v1 = du_txvote_2932 v0
du_txvote_2932 ::
  T_Tx_2826 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
du_txvote_2932 v0 = coe d_txvote_2782 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2934 ::
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2934 v0 ~v1 = du_txwdrls_2934 v0
du_txwdrls_2934 ::
  T_Tx_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2934 v0 = coe d_txwdrls_2780 (coe d_body_2836 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2936 ::
  T_TransactionStructure_20 ->
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2936 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2818 (coe d_wits_2838 (coe v1)))
      (coe d_refScripts_2884 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2946 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2946 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe d_crypto_1226 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_534
               (coe du_m_2958 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2958 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2958 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2958 v0 ~v1 v2 v3 = du_m_2958 v0 v2 v3
du_m_2958 ::
  T_TransactionStructure_20 ->
  T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2958 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432
         (d_scriptStructure_1794 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_436 (coe d_crypto_1226 (coe v0))
               (coe d_epochStructure_1512 (coe v0))
               (coe d_scriptStructure_1794 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_450
               (coe d_scriptStructure_1794 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1226 (coe v0)))
      (coe d_txscripts_2936 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2960 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2960 ~v0 v1 = du_isP2Script_2960 v1
du_isP2Script_2960 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2960 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2962 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2962 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
              (d_tokenAlgebra_2220 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
