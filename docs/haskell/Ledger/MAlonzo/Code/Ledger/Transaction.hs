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
  = C_TransactionStructure'46'constructor_12955 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_1152
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Transaction._.Ser
d_Ser_86 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 -> ()
d_Ser_86 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_110 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_1122 :: T_TransactionStructure_20 -> ()
d_Ix_1122 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_1124 :: T_TransactionStructure_20 -> ()
d_TxId_1124 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1126 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_1126 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1128 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1128 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1130 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1130 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1132 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1132 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1136 :: T_TransactionStructure_20 -> ()
d_THash_1136 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1138 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1138 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_adHashingScheme_1132 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1140 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1140 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_adHashingScheme_1132 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1142 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1142 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_adHashingScheme_1132 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1144 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_1144 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1148 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1148 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1150 :: T_TransactionStructure_20 -> ()
d_Network_1150 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1152 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1152 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1154 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1154 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1156 :: T_TransactionStructure_20 -> Integer
d_Quorum_1156 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1158 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1158 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1160 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1160 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1162 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1162 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
      (coe d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1164 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1164 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1168 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1168 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1170 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1170 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_1164 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1172 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1172 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1174 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1174 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1176 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1176 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1178 :: T_TransactionStructure_20 -> ()
d_THash_1178 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1180 :: T_TransactionStructure_20 -> ()
d_KeyPair_1180 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1182 :: T_TransactionStructure_20 -> ()
d_SKey_1182 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1184 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1184 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1186 :: T_TransactionStructure_20 -> ()
d_Ser_1186 = erased
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1188 :: T_TransactionStructure_20 -> ()
d_Sig_1188 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1190 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1190 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1192 :: T_TransactionStructure_20 -> ()
d_VKey_1192 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1194 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1194 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1196 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1196 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1198 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1200 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1200 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1164 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1202 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_1164 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1204 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1204 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1208 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1208 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1210 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1214 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1214 ~v0 v1 = du__'8729'__1214 v1
du__'8729'__1214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1214 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1216 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1216 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1218 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1218 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1220 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1220 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1222 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1222 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1224 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1224 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1226 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1228 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1230 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1232 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1232 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1234 ~v0
  = du_Value'45'CommutativeMonoid_1234
du_Value'45'CommutativeMonoid_1234 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_1234
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1236 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1236 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1238 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1238 ~v0 = du_addValue_1238
du_addValue_1238 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1238
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1240 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1240 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1242 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1242 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1244 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1244 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1246 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1246 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1248 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1248 ~v0 v1 = du_monoid_1248 v1
du_monoid_1248 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_1248 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1250 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1250 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1252 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1252 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1254 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1254 ~v0 v1 = du_rawMonoid_1254 v1
du_rawMonoid_1254 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_1254 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1256 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1256 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1258 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1258 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1260 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1260 ~v0 = du_sum'7515'_1260
du_sum'7515'_1260 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1260
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1262 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1262 ~v0 v1 = du_ε_1262 v1
du_ε_1262 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
du_ε_1262 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1266 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1272 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1274 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1278 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1280 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1284 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1284 ~v0 ~v1 = du_isMagmaIsomorphism_1284
du_isMagmaIsomorphism_1284 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1284 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1286 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1286 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1286 v3
du_isMagmaMonomorphism_1286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1288 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1292 v0
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
d_isRelIsomorphism_1294 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1294 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1294 v3
du_isRelIsomorphism_1294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1296 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1296 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1296 v3
du_isRelMonomorphism_1296 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1296 v0
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
d_surjective_1298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1300 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1302 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1306 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1308 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1308 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1310 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1312 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1312 ~v0 ~v1 = du_isMagmaMonomorphism_1312
du_isMagmaMonomorphism_1312 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1312 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1314 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1314 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1316 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1316 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1318 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1318 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1318 v3
du_isRelMonomorphism_1318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1318 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1320 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1320 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1322 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1322 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1326 :: T_TransactionStructure_20 -> ()
d_Addr_1326 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1328 a0 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1330 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1332 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1334 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1334 ~v0 = du_Dec'45'isScript_1334
du_Dec'45'isScript_1334 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1334
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1336 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1336 ~v0 = du_Dec'45'isVKey_1336
du_Dec'45'isVKey_1336 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1336
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_138
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1338 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1338 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_184
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe d_globalConstants_1144 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1164 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1340 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1340 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_186
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe d_globalConstants_1144 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1164 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1342 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1342 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1164 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1344 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1344 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_188
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe d_globalConstants_1144 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1164 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1350 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1354 :: T_TransactionStructure_20 -> ()
d_ScriptAddr_1354 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1356 :: T_TransactionStructure_20 -> ()
d_ScriptBaseAddr_1356 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1358 :: T_TransactionStructure_20 -> ()
d_ScriptBootstrapAddr_1358 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1362 :: T_TransactionStructure_20 -> ()
d_VKeyAddr_1362 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1364 :: T_TransactionStructure_20 -> ()
d_VKeyBaseAddr_1364 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1366 :: T_TransactionStructure_20 -> ()
d_VKeyBootstrapAddr_1366 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1370 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> AgdaAny
d_getScriptHash_1370 ~v0 = du_getScriptHash_1370
du_getScriptHash_1370 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> AgdaAny
du_getScriptHash_1370
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_178
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1372 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1374 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1374 ~v0 = du_isBootstrapAddr'63'_1374
du_isBootstrapAddr'63'_1374 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1374
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_132
-- Ledger.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1376 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1376 ~v0 = du_isKeyHashObj_1376
du_isKeyHashObj_1376 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1376
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1378 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1380 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1380 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1382 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1382 ~v0 = du_isScriptObj_1382
du_isScriptObj_1382 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1382
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_26
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1384 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> ()
d_isScriptRwdAddr_1384 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1386 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1388 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1388 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1390 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1390 ~v0 = du_netId_1390
du_netId_1390 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1390 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1392 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1392 ~v0 = du_payCred_1392
du_payCred_1392 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1392 = coe MAlonzo.Code.Ledger.Address.du_payCred_102
-- Ledger.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1394 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1394 ~v0 = du_stakeCred_1394
du_stakeCred_1394 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1394
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_104
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1398 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_42 -> AgdaAny
d_net_1398 v0 = coe MAlonzo.Code.Ledger.Address.d_net_50 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1400 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1400 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_52 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1402 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1402 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_54 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1406 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> Integer
d_attrsSize_1406 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_68 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1408 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> AgdaAny
d_net_1408 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1410 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1410 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_66 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1420 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> AgdaAny
d_net_1420 v0 = coe MAlonzo.Code.Ledger.Address.d_net_76 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1422 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1422 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1436 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1436 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1440 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1440 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1442 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1442 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1444 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1444 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1446 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1446 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1448 :: T_TransactionStructure_20 -> ()
d_Epoch_1448 = erased
-- Ledger.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1450 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1450 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1452 :: T_TransactionStructure_20 -> ()
d_Slot_1452 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1454 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1454 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1456 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1456 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1458 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1458 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1460 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1462 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1462 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1464 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1464 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1466 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1466 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1468 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1468 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1470 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1470 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1474 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1474 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_296
      (coe d_crypto_1164 (coe v0)) (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1476 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1476 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_252
      (coe d_crypto_1164 (coe v0)) (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1478 a0 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1480 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_P1ScriptStructure'45'TL_1480 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_374
      (coe d_crypto_1164 (coe v0)) (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1482 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1496 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1498 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1512 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1516 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1516 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1518 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1518 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1520 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1520 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1522 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1522 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1524 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1524 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1528 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1528 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1530 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_1530 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1532 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_1532 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1534 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_1534 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1536 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1536 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1538 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Datum_1538 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1540 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1540 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1542 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1542 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1544 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1544 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1546 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1546 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1548 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1548 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1550 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1550 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1552 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1552 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1554 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1554 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1556 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1556 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1558 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_1558 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1560 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1560 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1562 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_1562 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1564 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_1564 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1566 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_1566 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1568 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV1_1568 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1570 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV2_1570 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1572 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV3_1572 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1574 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_1574 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1576 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Redeemer_1576 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1578 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1578 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1580 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1580 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1582 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_1582 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_232 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1584 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_1584 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_236 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1586 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1586 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1590 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1590 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1592 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_CostModel_1592 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1594 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_T_1594 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1596 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_THash_1596 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1598 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1598 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_172
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1600 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Datum_1600 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1602 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1602 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (let v2 = d_epochStructure_1436 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1604 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1604 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1606 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1606 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1608 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1608 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1610 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1610 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1612 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1612 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1614 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1614 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1616 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1616 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (let v2 = d_epochStructure_1436 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1618 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1618 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1620 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1620 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1622 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1622 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1624 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_ExUnits_1624 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1626 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1626 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1628 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1628 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (let v2 = d_epochStructure_1436 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1630 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1630 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1632 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1632 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
      (coe d_crypto_1164 (coe v0)) (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1634 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_LangDepView_1634 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1636 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Language_1636 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1638 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_P1Script_1638 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1640 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_PlutusScript_1640 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1642 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV1_1642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1644 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV2_1644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1646 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV3_1646 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1648 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Prices_1648 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1650 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Redeemer_1650 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1652 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Script_1652 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1654 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1654 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1656 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1656 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1658 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1658 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1660 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny
d_language_1660 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_232
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1662 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_414 (coe d_crypto_1164 (coe v0))
      (coe d_epochStructure_1436 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1664 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1664 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1666 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () -> AgdaAny -> AgdaAny
d_toData_1666 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1668 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_1668 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1670 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1670 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1700 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
d_scriptStructure_1700 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1704 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1704 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1706 :: T_TransactionStructure_20 -> ()
d_CostModel_1706 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1708 :: T_TransactionStructure_20 -> ()
d_T_1708 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1710 :: T_TransactionStructure_20 -> ()
d_THash_1710 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1712 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1712 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_172
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1714 :: T_TransactionStructure_20 -> ()
d_Datum_1714 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1716 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1716 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (let v2 = d_epochStructure_1436 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1700 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1718 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1718 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1720 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1722 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1722 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1724 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1724 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1726 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1726 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1728 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1728 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1730 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1730 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (let v2 = d_epochStructure_1436 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1700 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1732 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1732 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_428
                 (coe d_scriptStructure_1700 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1734 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1734 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_428
                 (coe d_scriptStructure_1700 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1736 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1736 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1738 :: T_TransactionStructure_20 -> ()
d_ExUnits_1738 = erased
-- Ledger.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1740 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1740 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1742 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1742 v0
  = let v1 = d_crypto_1164 (coe v0) in
    coe
      (let v2 = d_epochStructure_1436 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1700 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1744 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1744 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1746 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1746 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
      (coe d_crypto_1164 (coe v0)) (coe d_epochStructure_1436 (coe v0))
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1748 :: T_TransactionStructure_20 -> ()
d_LangDepView_1748 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1750 :: T_TransactionStructure_20 -> ()
d_Language_1750 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1752 :: T_TransactionStructure_20 -> ()
d_P1Script_1752 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1754 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1754 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1756 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV1_1756 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1758 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV2_1758 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_188
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1760 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV3_1760 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1762 :: T_TransactionStructure_20 -> ()
d_Prices_1762 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1764 :: T_TransactionStructure_20 -> ()
d_Redeemer_1764 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1766 :: T_TransactionStructure_20 -> ()
d_Script_1766 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1768 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1768 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_428
                 (coe d_scriptStructure_1700 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1770 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1770 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe d_scriptStructure_1700 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1772 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1772 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1774 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1774 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_232
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1776 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1776 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_414 (coe d_crypto_1164 (coe v0))
      (coe d_epochStructure_1436 (coe v0))
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1778 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1778 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_428
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1780 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1780 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe d_scriptStructure_1700 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1782 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_1782 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1784 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1784 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1788 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1790 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1790 ~v0
  = du_DecEq'45'DrepThresholds_1790
du_DecEq'45'DrepThresholds_1790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1790
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_414
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1792 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1792 ~v0 = du_DecEq'45'PParamGroup_1792
du_DecEq'45'PParamGroup_1792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1792
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_420
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1794 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1794 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
      (coe d_epochStructure_1436 (coe v0))
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1796 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1796 ~v0
  = du_DecEq'45'PoolThresholds_1796
du_DecEq'45'PoolThresholds_1796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1796
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_416
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1798 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1802 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1808 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1810 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1812 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1814 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1816 :: T_TransactionStructure_20 -> ()
d_ProtVer_1816 = erased
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1826 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> ()
d_paramsWellFormed_1826 = erased
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1828 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1830 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1830 ~v0 = du_pvCanFollow'63'_1830
du_pvCanFollow'63'_1830 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1830
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1072
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1836 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_reserves_1836 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_140 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1838 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_treasury_1838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_138 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1842 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1842 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1844 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1844 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1846 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1846 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1848 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1848 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_192 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1850 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1850 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_194 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1852 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1852 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_196 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1854 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1854 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_198 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1856 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1856 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1858 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1858 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1860 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1860 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1864 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1864 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1866 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1866 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1868 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1870 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_THash_1870 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1872 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_UpdateT_1872 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1874 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1874 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1876 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1876 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1878 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1880 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_1880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_1882 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1882 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1884 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> AgdaAny -> ()
d_ppdWellFormed_1884 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1886 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1886 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_1902 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_Emax_1902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_1904 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_a_1904 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_1906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1906 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_1908 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_b_1908 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMaxTermLength_1910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_1912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMinSize_1912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_coinsPerUTxOByte_1914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_collateralPercentage_1916 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_costmdls_1918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_drepActivity_1920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_344 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepDeposit_1922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_342 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_1924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_1924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_1926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionDeposit_1926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionLifetime_1928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_338 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_keyDeposit_1930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_maxBlockExUnits_1932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxBlockSize_1934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_288 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxCollateralInputs_1936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_300 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxHeaderSize_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_maxTxExUnits_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxTxSize_1942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_290 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxValSize_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_316
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_minUTxOValue_1948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_1950 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_nopt_1950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_1952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_poolDeposit_1952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_1954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_1956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> AgdaAny
d_prices_1956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_1958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1958 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_1962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> ()
d_UpdateT_1962 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1968 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> AgdaAny -> ()
d_ppdWellFormed_1968 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_1970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1138 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__1974 ::
  T_TransactionStructure_20 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1974 ~v0 = du__'63''8599'__1974
du__'63''8599'__1974 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1974 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__888 v1 v2
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1976 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1976 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1066
      (coe d_epochStructure_1436 (coe v0))
      (coe d_scriptStructure_1700 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1978 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1980 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyPParamsUpdate_1980 ~v0 = du_applyPParamsUpdate_1980
du_applyPParamsUpdate_1980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
du_applyPParamsUpdate_1980
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_936
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1982 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_modifiedUpdateGroups_1982 ~v0 = du_modifiedUpdateGroups_1982
du_modifiedUpdateGroups_1982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
du_modifiedUpdateGroups_1982
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_872
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1984 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesEconomicGroup_1984 ~v0 = du_modifiesEconomicGroup_1984
du_modifiesEconomicGroup_1984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesEconomicGroup_1984
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_680
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1986 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesGovernanceGroup_1986 ~v0
  = du_modifiesGovernanceGroup_1986
du_modifiesGovernanceGroup_1986 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesGovernanceGroup_1986
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_808
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1988 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesNetworkGroup_1988 ~v0 = du_modifiesNetworkGroup_1988
du_modifiesNetworkGroup_1988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesNetworkGroup_1988
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_616
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1990 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesTechnicalGroup_1990 ~v0 = du_modifiesTechnicalGroup_1990
du_modifiesTechnicalGroup_1990 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
du_modifiesTechnicalGroup_1990
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_744
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1992 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_paramsUpdateWellFormed_1992 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1994 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1994 ~v0
  = du_paramsUpdateWellFormed'63'_1994
du_paramsUpdateWellFormed'63'_1994 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1994
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_612
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1996 ::
  T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1996 ~v0 = du_'8801''45'update_1996
du_'8801''45'update_1996 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1996 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_902 v1
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2000 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_Emax_2000 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_518 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2002 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_a_2002 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_500 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2004 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2004 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_516 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2006 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_b_2006 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_502 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2008 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_2008 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_540 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2010 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_2010 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_538 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2012 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_2012 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2014 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_2014 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_522 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2016 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_costmdls_2016 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_524 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2018 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_drepActivity_2018 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_536 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2020 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_2020 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_534 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2022 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_2022 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_526 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2024 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_2024 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_532 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2026 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_2026 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_530 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2028 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_504 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2030 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxBlockExUnits_2030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_496 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_2032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_484 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2034 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_2034 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_492 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_2036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_488 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2038 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_maxTxExUnits_2038 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_494 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2040 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_2040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_486 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_2042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_490 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2044 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2044 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_510
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_2046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_514 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_nopt_2048 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_520 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_2050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_506 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2052 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_2052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_528 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe AgdaAny
d_prices_2054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_512 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2056 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2056 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_498 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2060 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2060 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2062 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2062 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2064 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2064 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2066 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2066 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_2068 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2068 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_226 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_2076 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152
d_govParams_2076 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2080 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2080 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe d_govParams_2076 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2082 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2082 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe d_govParams_2076 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2084 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208
      (coe d_govParams_2076 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_2086 :: T_TransactionStructure_20 -> ()
d_THash_2086 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2088 :: T_TransactionStructure_20 -> ()
d_UpdateT_2088 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2090 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2090 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe d_govParams_2076 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2092 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_2092 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe d_govParams_2076 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_2094 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2094 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
      (coe d_govParams_2076 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2096 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_2096 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
      (coe d_govParams_2076 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2098 ::
  T_TransactionStructure_20 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2098 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe d_govParams_2076 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2100 :: T_TransactionStructure_20 -> AgdaAny -> ()
d_ppdWellFormed_2100 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2102 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_2102 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe d_govParams_2076 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2104 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2104 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__2108 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2108 v0
  = let v1 = d_tokenAlgebra_2104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__2110 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2110 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2112 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2112 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_2114 :: T_TransactionStructure_20 -> ()
d_AssetName_2114 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2116 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2116 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2118 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2118 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2120 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2122 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2124 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_2126 :: T_TransactionStructure_20 -> ()
d_Value_2126 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2128 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2128 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2130 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2130 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_2132 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2132 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_2134 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_2134 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2136 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2136 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2138 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_2140 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_2140 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_2142 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2142 v0
  = let v1 = d_tokenAlgebra_2104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_890
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_2144 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_2144 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_2146 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2146 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2148 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2148 v0
  = let v1 = d_tokenAlgebra_2104 (coe v0) in
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
d_size_2150 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_2150 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2152 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_2152 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2154 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2154 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
      (coe d_tokenAlgebra_2104 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_2156 :: T_TransactionStructure_20 -> AgdaAny
d_ε_2156 v0
  = let v1 = d_tokenAlgebra_2104 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_842
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2160 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2166 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2168 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2172 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2178 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2178 ~v0 = du_isMagmaIsomorphism_2178
du_isMagmaIsomorphism_2178 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2178 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2180 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2180 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2180 v2
du_isMagmaMonomorphism_2180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2186 v0
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
d_isRelIsomorphism_2188 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2188 ~v0 ~v1 v2 = du_isRelIsomorphism_2188 v2
du_isRelIsomorphism_2188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2190 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2190 ~v0 ~v1 v2 = du_isRelMonomorphism_2190 v2
du_isRelMonomorphism_2190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2190 v0
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
d_surjective_2192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2194 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2196 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2200 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2202 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2204 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2206 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2206 ~v0 = du_isMagmaMonomorphism_2206
du_isMagmaMonomorphism_2206 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2206 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2210 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2212 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2212 ~v0 ~v1 v2 = du_isRelMonomorphism_2212 v2
du_isRelMonomorphism_2212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2214 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2216 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_2218 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_2218 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_2220 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_2220 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12955 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_2222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_2222 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2427
      (d_DecEq'45'TxId_1130 (coe v0)) (d_crypto_1164 (coe v0))
      (d_epochStructure_1436 (coe v0)) (d_scriptStructure_1700 (coe v0))
      (d_govParams_2076 (coe v0)) (d_globalConstants_1144 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_2226 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_2234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2234 ~v0 = du_DecEq'45'GovRole_2234
du_DecEq'45'GovRole_2234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2234
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_2236 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2236 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
      (coe d_govStructure_2222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_2238 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2238 ~v0 = du_DecEq'45'Vote_2238
du_DecEq'45'Vote_2238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2238
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_758
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_2240 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_2242 :: T_TransactionStructure_20 -> ()
d_GovActionID_2242 = erased
-- Ledger.Transaction.TransactionStructure._.GovActionState
d_GovActionState_2244 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_2246 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_2248 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_2250 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_2252 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2252 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_2256 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_NeedsHash_2256 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2270 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Voter
d_Voter_2272 :: T_TransactionStructure_20 -> ()
d_Voter_2272 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2276 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_actionWellFormed_2276 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed?
d_actionWellFormed'63'_2278 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2278 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_674
      (coe d_govStructure_2222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2282 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2282 ~v0 = du_getDRepVote_2282
du_getDRepVote_2282 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2282
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_762
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2284 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2284 ~v0 = du_maximum_2284
du_maximum_2284 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2284
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_614
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2290 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 -> AgdaAny
d_hash_2290 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_646 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2292 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2292 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_644 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.action
d_action_2312 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_2312 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_752 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.expiresIn
d_expiresIn_2314 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  AgdaAny
d_expiresIn_2314 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.prevAction
d_prevAction_2316 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  AgdaAny
d_prevAction_2316 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_754 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.returnAddr
d_returnAddr_2318 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_2318 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.votes
d_votes_2320 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2320 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_746 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2324 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_2324 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2326 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638
d_anchor_2326 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_732 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2328 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 -> Integer
d_deposit_2328 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_728 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.policy
d_policy_2330 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  Maybe AgdaAny
d_policy_2330 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_726 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2332 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 -> AgdaAny
d_prevAction_2332 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_724 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2334 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_2334 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_730 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2346 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638
d_anchor_2346 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_706 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2348 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2348 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_700 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2350 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_682
d_vote_2350 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_704 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.voter
d_voter_2352 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2352 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_702 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2364 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2366 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_884 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2366 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2368 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2370 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2372 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2374 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2384 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2386 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2390 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2398 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2400 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2400 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
      (coe d_govStructure_2222 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2402 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DepositPurpose
d_DepositPurpose_2404 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Deposits
d_Deposits_2406 :: T_TransactionStructure_20 -> ()
d_Deposits_2406 = erased
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2414 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2418 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2418 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2424 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2428 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2428 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2430 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2434 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2434 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_804
-- Ledger.Transaction.TransactionStructure._.CertEnv.deposits
d_deposits_2494 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2494 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_840 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2496 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_820 -> AgdaAny
d_epoch_2496 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_832 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2498 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pp_2498 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_834 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2500 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_votes_2500 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_836 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2502 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2502 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_838 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2506 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844
d_dState_2506 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_892 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2508 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_GState_872
d_gState_2508 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_896 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2510 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860
d_pState_2510 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_894 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2530 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2530 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_856 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2532 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2532 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_854 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2534 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2534 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_852 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.deposits
d_deposits_2538 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2538 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_912 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2540 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2540 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2542 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2542 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_908 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2556 ::
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2556 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_880 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2558 ::
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2558 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_878 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2562 ::
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2562 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_866 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2564 ::
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2564 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_868 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2568 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_782 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2568 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_786 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2570 :: T_TransactionStructure_20 -> ()
d_TxIn_2570 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2572 :: T_TransactionStructure_20 -> ()
d_TxOut_2572 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2574 :: T_TransactionStructure_20 -> ()
d_UTxO_2574 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2576 :: T_TransactionStructure_20 -> ()
d_Wdrl_2576 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2578 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2578 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2580 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2580 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2582 :: T_TransactionStructure_20 -> ()
d_Update_2582 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2584 a0 = ()
data T_TxBody_2584
  = C_TxBody'46'constructor_16151 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_788]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2626 ::
  T_TxBody_2584 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2626 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2628 ::
  T_TxBody_2584 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2628 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2630 ::
  T_TxBody_2584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2630 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2632 :: T_TxBody_2584 -> Integer
d_txfee_2632 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2634 :: T_TxBody_2584 -> AgdaAny
d_mint_2634 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2636 ::
  T_TxBody_2584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2636 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2638 ::
  T_TxBody_2584 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_2638 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2640 ::
  T_TxBody_2584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2640 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2642 ::
  T_TxBody_2584 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_txvote_2642 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2644 ::
  T_TxBody_2584 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708]
d_txprop_2644 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2646 :: T_TxBody_2584 -> Integer
d_txdonation_2646 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2648 ::
  T_TxBody_2584 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2648 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2650 :: T_TxBody_2584 -> Maybe AgdaAny
d_txADhash_2650 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_2652 :: T_TxBody_2584 -> Maybe AgdaAny
d_txNetworkId_2652 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_2654 :: T_TxBody_2584 -> Maybe Integer
d_curTreasury_2654 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2656 :: T_TxBody_2584 -> Integer
d_txsize_2656 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2658 :: T_TxBody_2584 -> AgdaAny
d_txid_2658 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2660 ::
  T_TxBody_2584 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2660 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2662 :: T_TxBody_2584 -> [AgdaAny]
d_reqSigHash_2662 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2664 :: T_TxBody_2584 -> Maybe AgdaAny
d_scriptIntHash_2664 v0
  = case coe v0 of
      C_TxBody'46'constructor_16151 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2666 a0 = ()
data T_TxWitnesses_2666
  = C_TxWitnesses'46'constructor_16323 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2676 ::
  T_TxWitnesses_2666 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2676 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16323 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2678 ::
  T_TxWitnesses_2666 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2678 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16323 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2680 ::
  T_TxWitnesses_2666 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2680 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16323 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2682 ::
  T_TxWitnesses_2666 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2682 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_16323 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2684 ::
  T_TransactionStructure_20 ->
  T_TxWitnesses_2666 -> [MAlonzo.Code.Ledger.Script.T_Timelock_238]
d_scriptsP1_2684 ~v0 v1 = du_scriptsP1_2684 v1
du_scriptsP1_2684 ::
  T_TxWitnesses_2666 -> [MAlonzo.Code.Ledger.Script.T_Timelock_238]
du_scriptsP1_2684 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2678 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2686 a0 = ()
data T_Tx_2686
  = C_Tx'46'constructor_16503 T_TxBody_2584 T_TxWitnesses_2666 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2696 :: T_Tx_2686 -> T_TxBody_2584
d_body_2696 v0
  = case coe v0 of
      C_Tx'46'constructor_16503 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2698 :: T_Tx_2686 -> T_TxWitnesses_2666
d_wits_2698 v0
  = case coe v0 of
      C_Tx'46'constructor_16503 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2700 :: T_Tx_2686 -> Bool
d_isValid_2700 v0
  = case coe v0 of
      C_Tx'46'constructor_16503 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2702 :: T_Tx_2686 -> Maybe AgdaAny
d_txAD_2702 v0
  = case coe v0 of
      C_Tx'46'constructor_16503 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2704 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2704 ~v0 v1 = du_getValue_2704 v1
du_getValue_2704 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2704 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2708 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_2708 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_2710 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2710 v0 v1
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
                                          MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
                                          (d_scriptStructure_1700 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_414
                                                (coe d_crypto_1164 (coe v0))
                                                (coe d_epochStructure_1436 (coe v0))
                                                (coe d_scriptStructure_1700 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_428
                                                (coe d_scriptStructure_1700 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2720 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2720 ~v0 v1 = du_getValue'688'_2720 v1
du_getValue'688'_2720 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2720 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2724 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2724 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_1130 (coe v0))
               (coe d_DecEq'45'Ix_1128 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1146 (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_138
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_102
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2730 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2730 ~v0 v1 = du_scriptOuts_2730 v1
du_scriptOuts_2730 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2730 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1130
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
           (coe
              MAlonzo.Code.Ledger.Address.du_payCred_102
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2738 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2738 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_1130 (coe v0))
               (coe d_DecEq'45'Ix_1128 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2730 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2744 ::
  T_TransactionStructure_20 ->
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2744 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Interface.IsSet.du_range_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe d_DecEq'45'TxId_1130 (coe v0))
                  (coe d_DecEq'45'Ix_1128 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2626 (coe d_body_2696 (coe v1)))
               (coe d_refInputs_2628 (coe d_body_2696 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2756 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2756 v0 ~v1 = du_collateral_2756 v0
du_collateral_2756 ::
  T_Tx_2686 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2756 v0
  = coe d_collateral_2660 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_2758 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_2758 v0 ~v1 = du_curTreasury_2758 v0
du_curTreasury_2758 :: T_Tx_2686 -> Maybe Integer
du_curTreasury_2758 v0
  = coe d_curTreasury_2654 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2760 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2760 v0 ~v1 = du_mint_2760 v0
du_mint_2760 :: T_Tx_2686 -> AgdaAny
du_mint_2760 v0 = coe d_mint_2634 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2762 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2762 v0 ~v1 = du_refInputs_2762 v0
du_refInputs_2762 ::
  T_Tx_2686 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2762 v0
  = coe d_refInputs_2628 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2764 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2764 v0 ~v1 = du_reqSigHash_2764 v0
du_reqSigHash_2764 :: T_Tx_2686 -> [AgdaAny]
du_reqSigHash_2764 v0
  = coe d_reqSigHash_2662 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2766 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2766 v0 ~v1 = du_scriptIntHash_2766 v0
du_scriptIntHash_2766 :: T_Tx_2686 -> Maybe AgdaAny
du_scriptIntHash_2766 v0
  = coe d_scriptIntHash_2664 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2768 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2768 v0 ~v1 = du_txADhash_2768 v0
du_txADhash_2768 :: T_Tx_2686 -> Maybe AgdaAny
du_txADhash_2768 v0
  = coe d_txADhash_2650 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_2770 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2770 v0 ~v1 = du_txNetworkId_2770 v0
du_txNetworkId_2770 :: T_Tx_2686 -> Maybe AgdaAny
du_txNetworkId_2770 v0
  = coe d_txNetworkId_2652 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2772 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_2772 v0 ~v1 = du_txcerts_2772 v0
du_txcerts_2772 ::
  T_Tx_2686 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
du_txcerts_2772 v0 = coe d_txcerts_2638 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2774 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2774 v0 ~v1 = du_txdonation_2774 v0
du_txdonation_2774 :: T_Tx_2686 -> Integer
du_txdonation_2774 v0
  = coe d_txdonation_2646 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2776 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2776 v0 ~v1 = du_txfee_2776 v0
du_txfee_2776 :: T_Tx_2686 -> Integer
du_txfee_2776 v0 = coe d_txfee_2632 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2778 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2778 v0 ~v1 = du_txid_2778 v0
du_txid_2778 :: T_Tx_2686 -> AgdaAny
du_txid_2778 v0 = coe d_txid_2658 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2780 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2780 v0 ~v1 = du_txins_2780 v0
du_txins_2780 ::
  T_Tx_2686 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2780 v0 = coe d_txins_2626 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2782 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2782 v0 ~v1 = du_txouts_2782 v0
du_txouts_2782 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2782 v0 = coe d_txouts_2630 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2784 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708]
d_txprop_2784 v0 ~v1 = du_txprop_2784 v0
du_txprop_2784 ::
  T_Tx_2686 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708]
du_txprop_2784 v0 = coe d_txprop_2644 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2786 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2786 v0 ~v1 = du_txsize_2786 v0
du_txsize_2786 :: T_Tx_2686 -> Integer
du_txsize_2786 v0 = coe d_txsize_2656 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2788 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2788 v0 ~v1 = du_txup_2788 v0
du_txup_2788 ::
  T_Tx_2686 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2788 v0 = coe d_txup_2648 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2790 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2790 v0 ~v1 = du_txvldt_2790 v0
du_txvldt_2790 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2790 v0 = coe d_txvldt_2636 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2792 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_txvote_2792 v0 ~v1 = du_txvote_2792 v0
du_txvote_2792 ::
  T_Tx_2686 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
du_txvote_2792 v0 = coe d_txvote_2642 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2794 ::
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2794 v0 ~v1 = du_txwdrls_2794 v0
du_txwdrls_2794 ::
  T_Tx_2686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2794 v0 = coe d_txwdrls_2640 (coe d_body_2696 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2796 ::
  T_TransactionStructure_20 ->
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2796 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2678 (coe d_wits_2698 (coe v1)))
      (coe d_refScripts_2744 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2806 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1630
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe d_crypto_1164 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_532
               (coe du_m_2818 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2818 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2818 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2818 v0 ~v1 v2 v3 = du_m_2818 v0 v2 v3
du_m_2818 ::
  T_TransactionStructure_20 ->
  T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2818 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
         (d_scriptStructure_1700 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_414 (coe d_crypto_1164 (coe v0))
               (coe d_epochStructure_1436 (coe v0))
               (coe d_scriptStructure_1700 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_428
               (coe d_scriptStructure_1700 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1164 (coe v0)))
      (coe d_txscripts_2796 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2820 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2820 ~v0 v1 = du_isP2Script_2820 v1
du_isP2Script_2820 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2820 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2822 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2822 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
              (d_tokenAlgebra_2104 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
