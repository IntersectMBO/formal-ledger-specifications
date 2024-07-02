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
  = C_TransactionStructure'46'constructor_12675 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_1142
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
d_Ix_1086 :: T_TransactionStructure_20 -> ()
d_Ix_1086 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_1088 :: T_TransactionStructure_20 -> ()
d_TxId_1088 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1090 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_1090 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1092 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1092 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1094 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1094 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1096 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1096 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1100 :: T_TransactionStructure_20 -> ()
d_THash_1100 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1102 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1102 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_adHashingScheme_1096 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1104 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1104 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_adHashingScheme_1096 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1106 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1106 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_adHashingScheme_1096 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1108 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_1108 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1112 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1112 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1114 :: T_TransactionStructure_20 -> ()
d_Network_1114 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1116 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1116 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1118 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1118 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1120 :: T_TransactionStructure_20 -> Integer
d_Quorum_1120 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1122 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1122 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1124 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1124 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1126 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1126 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
      (coe d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1128 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1128 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1132 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1132 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1134 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1134 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_1128 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1136 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1136 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1138 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1138 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1140 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1140 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1142 :: T_TransactionStructure_20 -> ()
d_THash_1142 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1144 :: T_TransactionStructure_20 -> ()
d_KeyPair_1144 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1146 :: T_TransactionStructure_20 -> ()
d_SKey_1146 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1148 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1148 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1150 :: T_TransactionStructure_20 -> ()
d_Ser_1150 = erased
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1152 :: T_TransactionStructure_20 -> ()
d_Sig_1152 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1154 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1154 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1156 :: T_TransactionStructure_20 -> ()
d_VKey_1156 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1158 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1158 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1160 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1160 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1162 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1162 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1164 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1164 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1128 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1166 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1166 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_1128 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1168 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1168 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1172 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1172 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1174 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1178 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1178 ~v0 v1 = du__'8729'__1178 v1
du__'8729'__1178 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1178 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1180 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1180 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1182 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1182 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1184 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1184 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1186 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1186 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1188 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1188 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1190 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1192 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1194 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1196 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1196 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1198 ~v0
  = du_Value'45'CommutativeMonoid_1198
du_Value'45'CommutativeMonoid_1198 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_1198
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1200 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1200 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1202 ~v0 = du_addValue_1202
du_addValue_1202 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1202
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1204 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1204 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1206 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1208 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1208 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1210 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1210 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1212 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1212 ~v0 v1 = du_monoid_1212 v1
du_monoid_1212 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_1212 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1214 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1216 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1216 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1218 ~v0 v1 = du_rawMonoid_1218 v1
du_rawMonoid_1218 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_1218 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1220 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1220 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1222 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1222 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1224 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1224 ~v0 = du_sum'7515'_1224
du_sum'7515'_1224 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1224
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1226 ~v0 v1 = du_ε_1226 v1
du_ε_1226 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
du_ε_1226 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1230 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1232 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1236 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1238 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1238 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1242 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1248 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1248 ~v0 ~v1 = du_isMagmaIsomorphism_1248
du_isMagmaIsomorphism_1248 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1248 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1250 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1250 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1250 v3
du_isMagmaMonomorphism_1250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1250 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1256 v0
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
d_isRelIsomorphism_1258 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1258 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1258 v3
du_isRelIsomorphism_1258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1260 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1260 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1260 v3
du_isRelMonomorphism_1260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1260 v0
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
d_surjective_1262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1264 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1266 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1270 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1272 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1276 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1276 ~v0 ~v1 = du_isMagmaMonomorphism_1276
du_isMagmaMonomorphism_1276 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1276 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1280 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1282 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1282 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1282 v3
du_isRelMonomorphism_1282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1284 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1286 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1290 :: T_TransactionStructure_20 -> ()
d_Addr_1290 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1292 a0 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1294 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1296 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1298 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1298 ~v0 = du_Dec'45'isScript_1298
du_Dec'45'isScript_1298 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1298
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_140
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1300 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1300 ~v0 = du_Dec'45'isVKey_1300
du_Dec'45'isVKey_1300 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1300
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_126
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1302 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1302 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_172
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe d_globalConstants_1108 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1128 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1304 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1304 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_174
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe d_globalConstants_1108 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1128 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1306 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1306 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1128 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1308 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1308 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_176
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe d_globalConstants_1108 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1128 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1312 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1316 :: T_TransactionStructure_20 -> ()
d_ScriptAddr_1316 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1318 :: T_TransactionStructure_20 -> ()
d_ScriptBaseAddr_1318 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1320 :: T_TransactionStructure_20 -> ()
d_ScriptBootstrapAddr_1320 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1324 :: T_TransactionStructure_20 -> ()
d_VKeyAddr_1324 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1326 :: T_TransactionStructure_20 -> ()
d_VKeyBaseAddr_1326 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1328 :: T_TransactionStructure_20 -> ()
d_VKeyBootstrapAddr_1328 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1332 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> AgdaAny
d_getScriptHash_1332 ~v0 = du_getScriptHash_1332
du_getScriptHash_1332 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> AgdaAny
du_getScriptHash_1332
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_166
-- Ledger.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1334 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1334 ~v0 = du_isKeyHashObj_1334
du_isKeyHashObj_1334 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1334
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1336 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1338 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1338 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1340 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1340 ~v0 = du_isScriptObj_1340
du_isScriptObj_1340 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1340
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_26
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1342 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> ()
d_isScriptRwdAddr_1342 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1344 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1346 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1346 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1348 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1348 ~v0 = du_netId_1348
du_netId_1348 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1348 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1350 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1350 ~v0 = du_payCred_1350
du_payCred_1350 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1350 = coe MAlonzo.Code.Ledger.Address.du_payCred_102
-- Ledger.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1352 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1352 ~v0 = du_stakeCred_1352
du_stakeCred_1352 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1352
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_104
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1356 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_42 -> AgdaAny
d_net_1356 v0 = coe MAlonzo.Code.Ledger.Address.d_net_50 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1358 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1358 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_52 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1360 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1360 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_54 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1364 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> Integer
d_attrsSize_1364 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_68 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1366 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> AgdaAny
d_net_1366 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1368 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1368 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_66 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1378 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> AgdaAny
d_net_1378 v0 = coe MAlonzo.Code.Ledger.Address.d_net_76 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1380 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1380 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1390 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1390 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1394 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1394 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1396 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1396 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1398 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1398 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1400 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1400 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1402 :: T_TransactionStructure_20 -> ()
d_Epoch_1402 = erased
-- Ledger.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1404 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1404 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1406 :: T_TransactionStructure_20 -> ()
d_Slot_1406 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1408 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1408 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1410 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1410 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1412 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1412 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1414 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1414 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1416 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1416 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1418 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1418 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1420 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1420 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1422 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1422 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1424 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1424 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1428 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1428 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_280
      (coe d_crypto_1128 (coe v0)) (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1430 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1430 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_236
      (coe d_crypto_1128 (coe v0)) (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1432 a0 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1434 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_P1ScriptStructure'45'TL_1434 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_358
      (coe d_crypto_1128 (coe v0)) (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1436 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1450 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1452 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1466 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1470 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1470 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1472 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1472 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1474 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1474 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1476 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1476 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1478 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1478 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1482 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1482 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1484 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_1484 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1486 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_1486 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1488 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_1488 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1490 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1490 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1492 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Datum_1492 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1494 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1494 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1496 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1496 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1498 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1498 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1500 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1500 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1502 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1502 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1504 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1504 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1506 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1506 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1508 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1508 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1510 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_1510 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1512 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1512 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1514 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_1514 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1516 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_1516 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1518 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_1518 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1520 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_1520 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1522 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Redeemer_1522 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1524 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1524 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1526 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1526 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1528 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_1528 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1530 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_1530 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1532 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1532 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1536 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1536 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1538 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_CostModel_1538 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1540 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_T_1540 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1542 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_THash_1542 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1544 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1544 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1546 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Datum_1546 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1548 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1548 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (let v2 = d_epochStructure_1390 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1550 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1550 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1552 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1552 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1554 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1554 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1556 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1556 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1558 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1558 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1560 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1560 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (let v2 = d_epochStructure_1390 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1562 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1562 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1564 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1564 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1566 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1566 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1568 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_ExUnits_1568 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1570 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1570 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1572 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1572 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (let v2 = d_epochStructure_1390 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1574 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1574 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1576 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1576 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
      (coe d_crypto_1128 (coe v0)) (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1578 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_LangDepView_1578 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1580 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Language_1580 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1582 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_P1Script_1582 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1584 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_PlutusScript_1584 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1586 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Prices_1586 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1588 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Redeemer_1588 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1590 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Script_1590 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1592 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1592 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1594 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1594 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1596 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1596 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1598 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny
d_language_1598 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1600 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1600 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_398 (coe d_crypto_1128 (coe v0))
      (coe d_epochStructure_1390 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1602 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1602 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1604 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () -> AgdaAny -> AgdaAny
d_toData_1604 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1606 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_1606 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1608 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1608 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1638 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d_scriptStructure_1638 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1642 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1642 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1644 :: T_TransactionStructure_20 -> ()
d_CostModel_1644 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1646 :: T_TransactionStructure_20 -> ()
d_T_1646 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1648 :: T_TransactionStructure_20 -> ()
d_THash_1648 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1650 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1650 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1652 :: T_TransactionStructure_20 -> ()
d_Datum_1652 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1654 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1654 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (let v2 = d_epochStructure_1390 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1638 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1656 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1656 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1658 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1658 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1660 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1660 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1662 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1662 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1664 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1664 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1666 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1666 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (let v2 = d_epochStructure_1390 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1638 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1668 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1668 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_1638 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1670 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1670 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_1638 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1672 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1672 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1674 :: T_TransactionStructure_20 -> ()
d_ExUnits_1674 = erased
-- Ledger.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1676 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1676 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1678 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1678 v0
  = let v1 = d_crypto_1128 (coe v0) in
    coe
      (let v2 = d_epochStructure_1390 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1638 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1680 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1680 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1682 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1682 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
      (coe d_crypto_1128 (coe v0)) (coe d_epochStructure_1390 (coe v0))
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1684 :: T_TransactionStructure_20 -> ()
d_LangDepView_1684 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1686 :: T_TransactionStructure_20 -> ()
d_Language_1686 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1688 :: T_TransactionStructure_20 -> ()
d_P1Script_1688 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1690 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1690 = erased
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1692 :: T_TransactionStructure_20 -> ()
d_Prices_1692 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1694 :: T_TransactionStructure_20 -> ()
d_Redeemer_1694 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1696 :: T_TransactionStructure_20 -> ()
d_Script_1696 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1698 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1698 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_1638 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1700 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1700 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe d_scriptStructure_1638 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1702 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1704 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1706 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_398 (coe d_crypto_1128 (coe v0))
      (coe d_epochStructure_1390 (coe v0))
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1708 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_412
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1710 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1710 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_1638 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1712 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_1712 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1714 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1714 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1718 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1720 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1720 ~v0
  = du_DecEq'45'DrepThresholds_1720
du_DecEq'45'DrepThresholds_1720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1720
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_404
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1722 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1722 ~v0 = du_DecEq'45'PParamGroup_1722
du_DecEq'45'PParamGroup_1722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1722
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_410
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1724 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1724 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_408
      (coe d_epochStructure_1390 (coe v0))
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1726 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1726 ~v0
  = du_DecEq'45'PoolThresholds_1726
du_DecEq'45'PoolThresholds_1726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1726
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_406
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1728 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1732 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1738 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1740 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1742 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1744 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1746 :: T_TransactionStructure_20 -> ()
d_ProtVer_1746 = erased
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1756 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_1756 = erased
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1758 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1760 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1760 ~v0 = du_pvCanFollow'63'_1760
du_pvCanFollow'63'_1760 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1760
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1062
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1764 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_reserves_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_132 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1766 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_treasury_1766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_130 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1770 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1770 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_176 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1772 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1772 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_178 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1774 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1774 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1776 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1776 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1778 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1778 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1780 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1780 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1782 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1782 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1784 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1784 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1786 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1786 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_192 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1788 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1788 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_194 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1792 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1792 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1794 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1794 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1796 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1198 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1798 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1142 -> ()
d_THash_1798 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1800 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 -> ()
d_UpdateT_1800 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1802 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1802 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1804 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1804 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1126
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1806 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1808 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110
d_ppUpd_1808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_1810 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1810 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1134
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1812 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 -> AgdaAny -> ()
d_ppdWellFormed_1812 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1814 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1814 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1128
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1172 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_1830 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_Emax_1830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_1832 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_a_1832 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_1834 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1834 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_1836 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_b_1836 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMaxTermLength_1838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_334 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_1840 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMinSize_1840 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_332 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_coinsPerUTxOByte_1842 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_1844 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_collateralPercentage_1844 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_316 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_1846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_costmdls_1846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_1848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_drepActivity_1848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_1850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepDeposit_1850 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_1852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_1852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_1854 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionDeposit_1854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionLifetime_1856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_1858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_keyDeposit_1858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxBlockExUnits_1860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_1862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxBlockSize_1862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_278 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxCollateralInputs_1864 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_286 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxHeaderSize_1866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_282 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxTxExUnits_1868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_1870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxTxSize_1870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_280 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_1872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxValSize_1872 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_284 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1874 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1874 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_304
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_1876 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_minUTxOValue_1876 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_1878 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_nopt_1878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_1880 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_poolDeposit_1880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_1882 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_1882 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_1884 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_prices_1884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_1886 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1886 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_1890 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 -> ()
d_UpdateT_1890 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1892 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1126 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1894 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1134 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1896 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 -> AgdaAny -> ()
d_ppdWellFormed_1896 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1128 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__1902 ::
  T_TransactionStructure_20 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1902 ~v0 = du__'63''8599'__1902
du__'63''8599'__1902 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1902 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__878 v1 v2
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1904 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1904 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1056
      (coe d_epochStructure_1390 (coe v0))
      (coe d_scriptStructure_1638 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1906 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1908 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyPParamsUpdate_1908 ~v0 = du_applyPParamsUpdate_1908
du_applyPParamsUpdate_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
du_applyPParamsUpdate_1908
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_926
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1910 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_modifiedUpdateGroups_1910 ~v0 = du_modifiedUpdateGroups_1910
du_modifiedUpdateGroups_1910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
du_modifiedUpdateGroups_1910
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_862
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1912 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesEconomicGroup_1912 ~v0 = du_modifiesEconomicGroup_1912
du_modifiesEconomicGroup_1912 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesEconomicGroup_1912
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_670
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1914 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesGovernanceGroup_1914 ~v0
  = du_modifiesGovernanceGroup_1914
du_modifiesGovernanceGroup_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesGovernanceGroup_1914
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_798
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1916 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesNetworkGroup_1916 ~v0 = du_modifiesNetworkGroup_1916
du_modifiesNetworkGroup_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesNetworkGroup_1916
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_606
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1918 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
d_modifiesTechnicalGroup_1918 ~v0 = du_modifiesTechnicalGroup_1918
du_modifiesTechnicalGroup_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Bool
du_modifiesTechnicalGroup_1918
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_734
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1920 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> ()
d_paramsUpdateWellFormed_1920 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1922 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1922 ~v0
  = du_paramsUpdateWellFormed'63'_1922
du_paramsUpdateWellFormed'63'_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1922
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_602
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_1924 ::
  T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1924 ~v0 = du_'8801''45'update_1924
du_'8801''45'update_1924 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1924 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_892 v1
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_Emax_1928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_508 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_a_1930 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_490 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1932 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_506 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_b_1934 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_492 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_ccMaxTermLength_1936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_530 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_ccMinSize_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_528 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_coinsPerUTxOByte_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_498 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_collateralPercentage_1942 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_512 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_costmdls_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_514 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_drepActivity_1946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_526 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_drepDeposit_1948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_524 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_1950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_516 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_govActionDeposit_1952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_522 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_govActionLifetime_1954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_520 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_keyDeposit_1956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_494 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxBlockExUnits_1958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_486 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxBlockSize_1960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_474 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxCollateralInputs_1962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_482 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxHeaderSize_1964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_478 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_maxTxExUnits_1966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_484 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxTxSize_1968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_476 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_maxValSize_1970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_480 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1972 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_500
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_minUTxOValue_1974 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_504 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_nopt_1976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_510 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe Integer
d_poolDeposit_1978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_496 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1980 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_1980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_518 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_1982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 -> Maybe AgdaAny
d_prices_1982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_502 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_1984 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_414 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1984 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_488 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_1988 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1988 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_1990 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1990 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_1992 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1992 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_1994 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1994 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_1996 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1996 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_216 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_2004 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1142
d_govParams_2004 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2008 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2008 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
         (coe d_govParams_2004 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2010 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2010 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
         (coe d_govParams_2004 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2012 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2012 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1198
      (coe d_govParams_2004 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_2014 :: T_TransactionStructure_20 -> ()
d_THash_2014 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2016 :: T_TransactionStructure_20 -> ()
d_UpdateT_2016 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2018 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2018 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
         (coe d_govParams_2004 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2020 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_2020 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1126
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
         (coe d_govParams_2004 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_2022 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2022 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1186
      (coe d_govParams_2004 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2024 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1110
d_ppUpd_2024 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
      (coe d_govParams_2004 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2026 ::
  T_TransactionStructure_20 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2026 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1134
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
         (coe d_govParams_2004 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2028 :: T_TransactionStructure_20 -> AgdaAny -> ()
d_ppdWellFormed_2028 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2030 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_2030 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1128
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1172
         (coe d_govParams_2004 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2032 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2032 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__2036 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2036 v0
  = let v1 = d_tokenAlgebra_2032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__2038 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2038 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2040 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2040 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_2042 :: T_TransactionStructure_20 -> ()
d_AssetName_2042 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2044 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2044 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2046 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2046 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2048 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2050 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2052 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_2054 :: T_TransactionStructure_20 -> ()
d_Value_2054 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2056 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2056 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2058 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2058 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_2060 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2060 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_2062 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_2062 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2064 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2064 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2066 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2066 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_2068 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_2068 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_2070 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2070 v0
  = let v1 = d_tokenAlgebra_2032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_890
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_2072 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_2072 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_2074 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2074 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2076 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2076 v0
  = let v1 = d_tokenAlgebra_2032 (coe v0) in
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
d_size_2078 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_2078 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2080 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_2080 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2082 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2082 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
      (coe d_tokenAlgebra_2032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_2084 :: T_TransactionStructure_20 -> AgdaAny
d_ε_2084 v0
  = let v1 = d_tokenAlgebra_2032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_842
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2088 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2088 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2090 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2090 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2092 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2092 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2094 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2096 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2100 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2102 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2104 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2106 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2106 ~v0 = du_isMagmaIsomorphism_2106
du_isMagmaIsomorphism_2106 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2106 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2108 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2108 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2108 v2
du_isMagmaMonomorphism_2108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2108 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2110 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2114 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2114 v0
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
d_isRelIsomorphism_2116 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2116 ~v0 ~v1 v2 = du_isRelIsomorphism_2116 v2
du_isRelIsomorphism_2116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2116 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2118 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2118 ~v0 ~v1 v2 = du_isRelMonomorphism_2118 v2
du_isRelMonomorphism_2118 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2118 v0
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
d_surjective_2120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2120 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2122 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2124 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2128 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2130 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2134 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2134 ~v0 = du_isMagmaMonomorphism_2134
du_isMagmaMonomorphism_2134 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2134 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2138 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2140 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2140 ~v0 ~v1 v2 = du_isRelMonomorphism_2140 v2
du_isRelMonomorphism_2140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2142 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2144 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_2146 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_2146 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_2148 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_2148 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12675 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_2150 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_2150 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2389
      (d_DecEq'45'TxId_1094 (coe v0)) (d_crypto_1128 (coe v0))
      (d_epochStructure_1390 (coe v0)) (d_scriptStructure_1638 (coe v0))
      (d_govParams_2004 (coe v0)) (d_globalConstants_1108 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_2154 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_2162 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2162 ~v0 = du_DecEq'45'GovRole_2162
du_DecEq'45'GovRole_2162 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2162
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_736
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_2164 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2164 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_740
      (coe d_govStructure_2150 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_2166 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2166 ~v0 = du_DecEq'45'Vote_2166
du_DecEq'45'Vote_2166 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2166
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_738
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_2168 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_2170 :: T_TransactionStructure_20 -> ()
d_GovActionID_2170 = erased
-- Ledger.Transaction.TransactionStructure._.GovActionState
d_GovActionState_2172 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_2174 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_2176 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_2178 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_2180 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2180 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_2184 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_628 -> ()
d_NeedsHash_2184 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2198 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Voter
d_Voter_2200 :: T_TransactionStructure_20 -> ()
d_Voter_2200 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2204 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_628 -> ()
d_actionWellFormed_2204 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed?
d_actionWellFormed'63'_2206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_628 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2206 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_654
      (coe d_govStructure_2150 (coe v0))
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2210 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2210 ~v0 = du_getDRepVote_2210
du_getDRepVote_2210 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2210
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_742
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2212 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2212 ~v0 = du_maximum_2212
du_maximum_2212 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2212
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_594
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2218 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618 -> AgdaAny
d_hash_2218 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_626 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2220 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2220 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_624 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.action
d_action_2240 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_714 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_628
d_action_2240 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_732 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.expiresIn
d_expiresIn_2242 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_714 ->
  AgdaAny
d_expiresIn_2242 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_730 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.prevAction
d_prevAction_2244 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_714 ->
  AgdaAny
d_prevAction_2244 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_734 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.returnAddr
d_returnAddr_2246 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_714 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_2246 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_728 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.votes
d_votes_2248 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2248 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_726 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2252 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_628
d_action_2252 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_702 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2254 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618
d_anchor_2254 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_712 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2256 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 -> Integer
d_deposit_2256 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_708 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.policy
d_policy_2258 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 ->
  Maybe AgdaAny
d_policy_2258 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_706 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2260 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 -> AgdaAny
d_prevAction_2260 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_704 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2262 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_2262 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2274 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618
d_anchor_2274 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_686 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2276 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2276 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_680 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2278 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662
d_vote_2278 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_684 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.voter
d_voter_2280 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2280 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_682 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2292 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2294 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_786 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_846 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_754] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_846 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2294 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2296 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2298 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2300 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2302 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2312 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2314 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2316 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2322 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2324 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2332 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2334 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2334 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2340 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2342 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2342 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2344 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2348 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_754 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2348 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_770
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2408 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_786 -> AgdaAny
d_epoch_2408 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_796 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2410 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_786 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_2410 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_798 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2412 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_786 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_votes_2412 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_800 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2414 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2414 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_802 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2418 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_846 ->
  MAlonzo.Code.Ledger.Certs.T_DState_806
d_dState_2418 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_854 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2420 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_846 ->
  MAlonzo.Code.Ledger.Certs.T_GState_834
d_gState_2420 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_858 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2422 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_846 ->
  MAlonzo.Code.Ledger.Certs.T_PState_822
d_pState_2422 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_856 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2442 ::
  MAlonzo.Code.Ledger.Certs.T_DState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2442 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_818 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2444 ::
  MAlonzo.Code.Ledger.Certs.T_DState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2444 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_816 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2446 ::
  MAlonzo.Code.Ledger.Certs.T_DState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2446 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_814 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2450 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_862 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2450 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_870 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2452 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_862 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2452 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_868 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2456 ::
  MAlonzo.Code.Ledger.Certs.T_GState_834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2456 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_842 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2458 ::
  MAlonzo.Code.Ledger.Certs.T_GState_834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2458 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_840 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2462 ::
  MAlonzo.Code.Ledger.Certs.T_PState_822 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2462 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_828 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2464 ::
  MAlonzo.Code.Ledger.Certs.T_PState_822 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2464 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_830 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2468 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_748 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2468 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_752 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2470 :: T_TransactionStructure_20 -> ()
d_TxIn_2470 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2472 :: T_TransactionStructure_20 -> ()
d_TxOut_2472 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2474 :: T_TransactionStructure_20 -> ()
d_UTxO_2474 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2476 :: T_TransactionStructure_20 -> ()
d_Wdrl_2476 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2478 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2478 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2480 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2480 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2482 :: T_TransactionStructure_20 -> ()
d_Update_2482 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2484 a0 = ()
data T_TxBody_2484
  = C_TxBody'46'constructor_15827 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_754]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2526 ::
  T_TxBody_2484 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2526 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2528 ::
  T_TxBody_2484 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2528 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2530 ::
  T_TxBody_2484 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2530 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2532 :: T_TxBody_2484 -> Integer
d_txfee_2532 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2534 :: T_TxBody_2484 -> AgdaAny
d_mint_2534 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2536 ::
  T_TxBody_2484 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2536 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2538 ::
  T_TxBody_2484 -> [MAlonzo.Code.Ledger.Certs.T_DCert_754]
d_txcerts_2538 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2540 ::
  T_TxBody_2484 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2540 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2542 ::
  T_TxBody_2484 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_txvote_2542 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2544 ::
  T_TxBody_2484 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688]
d_txprop_2544 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2546 :: T_TxBody_2484 -> Integer
d_txdonation_2546 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2548 ::
  T_TxBody_2484 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2548 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2550 :: T_TxBody_2484 -> Maybe AgdaAny
d_txADhash_2550 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_2552 :: T_TxBody_2484 -> Maybe AgdaAny
d_txNetworkId_2552 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_2554 :: T_TxBody_2484 -> Maybe Integer
d_curTreasury_2554 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2556 :: T_TxBody_2484 -> Integer
d_txsize_2556 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2558 :: T_TxBody_2484 -> AgdaAny
d_txid_2558 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2560 ::
  T_TxBody_2484 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2560 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2562 :: T_TxBody_2484 -> [AgdaAny]
d_reqSigHash_2562 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2564 :: T_TxBody_2484 -> Maybe AgdaAny
d_scriptIntHash_2564 v0
  = case coe v0 of
      C_TxBody'46'constructor_15827 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2566 a0 = ()
data T_TxWitnesses_2566
  = C_TxWitnesses'46'constructor_15999 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2576 ::
  T_TxWitnesses_2566 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2576 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15999 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2578 ::
  T_TxWitnesses_2566 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2578 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15999 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2580 ::
  T_TxWitnesses_2566 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2580 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15999 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2582 ::
  T_TxWitnesses_2566 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2582 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15999 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2584 ::
  T_TransactionStructure_20 ->
  T_TxWitnesses_2566 -> [MAlonzo.Code.Ledger.Script.T_Timelock_222]
d_scriptsP1_2584 ~v0 v1 = du_scriptsP1_2584 v1
du_scriptsP1_2584 ::
  T_TxWitnesses_2566 -> [MAlonzo.Code.Ledger.Script.T_Timelock_222]
du_scriptsP1_2584 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2578 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2586 a0 = ()
data T_Tx_2586
  = C_Tx'46'constructor_16179 T_TxBody_2484 T_TxWitnesses_2566 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2596 :: T_Tx_2586 -> T_TxBody_2484
d_body_2596 v0
  = case coe v0 of
      C_Tx'46'constructor_16179 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2598 :: T_Tx_2586 -> T_TxWitnesses_2566
d_wits_2598 v0
  = case coe v0 of
      C_Tx'46'constructor_16179 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2600 :: T_Tx_2586 -> Bool
d_isValid_2600 v0
  = case coe v0 of
      C_Tx'46'constructor_16179 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2602 :: T_Tx_2586 -> Maybe AgdaAny
d_txAD_2602 v0
  = case coe v0 of
      C_Tx'46'constructor_16179 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2604 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2604 ~v0 v1 = du_getValue_2604 v1
du_getValue_2604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2604 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2608 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_2608 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_2610 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2610 v0 v1
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
                                          MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
                                          (d_scriptStructure_1638 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_398
                                                (coe d_crypto_1128 (coe v0))
                                                (coe d_epochStructure_1390 (coe v0))
                                                (coe d_scriptStructure_1638 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_412
                                                (coe d_scriptStructure_1638 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2620 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2620 ~v0 v1 = du_getValue'688'_2620 v1
du_getValue'688'_2620 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2620 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2624 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2624 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1094 (coe v0))
               (coe d_DecEq'45'Ix_1092 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_526
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1144 (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_126
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_102
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2630 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2630 ~v0 v1 = du_scriptOuts_2630 v1
du_scriptOuts_2630 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2630 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1128
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_140
           (coe
              MAlonzo.Code.Ledger.Address.du_payCred_102
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2638 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2638 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1094 (coe v0))
               (coe d_DecEq'45'Ix_1092 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_526
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_530)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2630 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2644 ::
  T_TransactionStructure_20 ->
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2644 v0 v1 v2
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
         MAlonzo.Code.Interface.IsSet.du_range_528
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534)
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
                  (coe d_DecEq'45'TxId_1094 (coe v0))
                  (coe d_DecEq'45'Ix_1092 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2526 (coe d_body_2596 (coe v1)))
               (coe d_refInputs_2528 (coe d_body_2596 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2656 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2656 v0 ~v1 = du_collateral_2656 v0
du_collateral_2656 ::
  T_Tx_2586 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2656 v0
  = coe d_collateral_2560 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_2658 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_2658 v0 ~v1 = du_curTreasury_2658 v0
du_curTreasury_2658 :: T_Tx_2586 -> Maybe Integer
du_curTreasury_2658 v0
  = coe d_curTreasury_2554 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2660 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2660 v0 ~v1 = du_mint_2660 v0
du_mint_2660 :: T_Tx_2586 -> AgdaAny
du_mint_2660 v0 = coe d_mint_2534 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2662 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2662 v0 ~v1 = du_refInputs_2662 v0
du_refInputs_2662 ::
  T_Tx_2586 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2662 v0
  = coe d_refInputs_2528 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2664 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2664 v0 ~v1 = du_reqSigHash_2664 v0
du_reqSigHash_2664 :: T_Tx_2586 -> [AgdaAny]
du_reqSigHash_2664 v0
  = coe d_reqSigHash_2562 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2666 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2666 v0 ~v1 = du_scriptIntHash_2666 v0
du_scriptIntHash_2666 :: T_Tx_2586 -> Maybe AgdaAny
du_scriptIntHash_2666 v0
  = coe d_scriptIntHash_2564 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2668 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2668 v0 ~v1 = du_txADhash_2668 v0
du_txADhash_2668 :: T_Tx_2586 -> Maybe AgdaAny
du_txADhash_2668 v0
  = coe d_txADhash_2550 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_2670 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2670 v0 ~v1 = du_txNetworkId_2670 v0
du_txNetworkId_2670 :: T_Tx_2586 -> Maybe AgdaAny
du_txNetworkId_2670 v0
  = coe d_txNetworkId_2552 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2672 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_754]
d_txcerts_2672 v0 ~v1 = du_txcerts_2672 v0
du_txcerts_2672 ::
  T_Tx_2586 -> [MAlonzo.Code.Ledger.Certs.T_DCert_754]
du_txcerts_2672 v0 = coe d_txcerts_2538 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2674 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2674 v0 ~v1 = du_txdonation_2674 v0
du_txdonation_2674 :: T_Tx_2586 -> Integer
du_txdonation_2674 v0
  = coe d_txdonation_2546 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2676 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2676 v0 ~v1 = du_txfee_2676 v0
du_txfee_2676 :: T_Tx_2586 -> Integer
du_txfee_2676 v0 = coe d_txfee_2532 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2678 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2678 v0 ~v1 = du_txid_2678 v0
du_txid_2678 :: T_Tx_2586 -> AgdaAny
du_txid_2678 v0 = coe d_txid_2558 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2680 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2680 v0 ~v1 = du_txins_2680 v0
du_txins_2680 ::
  T_Tx_2586 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2680 v0 = coe d_txins_2526 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2682 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2682 v0 ~v1 = du_txouts_2682 v0
du_txouts_2682 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2682 v0 = coe d_txouts_2530 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2684 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688]
d_txprop_2684 v0 ~v1 = du_txprop_2684 v0
du_txprop_2684 ::
  T_Tx_2586 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_688]
du_txprop_2684 v0 = coe d_txprop_2544 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2686 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2686 v0 ~v1 = du_txsize_2686 v0
du_txsize_2686 :: T_Tx_2586 -> Integer
du_txsize_2686 v0 = coe d_txsize_2556 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2688 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2688 v0 ~v1 = du_txup_2688 v0
du_txup_2688 ::
  T_Tx_2586 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2688 v0 = coe d_txup_2548 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2690 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2690 v0 ~v1 = du_txvldt_2690 v0
du_txvldt_2690 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2690 v0 = coe d_txvldt_2536 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2692 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_txvote_2692 v0 ~v1 = du_txvote_2692 v0
du_txvote_2692 ::
  T_Tx_2586 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
du_txvote_2692 v0 = coe d_txvote_2542 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2694 ::
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2694 v0 ~v1 = du_txwdrls_2694 v0
du_txwdrls_2694 ::
  T_Tx_2586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2694 v0 = coe d_txwdrls_2540 (coe d_body_2596 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2696 ::
  T_TransactionStructure_20 ->
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2696 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2578 (coe d_wits_2598 (coe v1)))
      (coe d_refScripts_2644 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2706 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe d_crypto_1128 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_532
               (coe du_m_2718 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2718 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2718 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2718 v0 ~v1 v2 v3 = du_m_2718 v0 v2 v3
du_m_2718 ::
  T_TransactionStructure_20 ->
  T_Tx_2586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2718 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
         (d_scriptStructure_1638 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_398 (coe d_crypto_1128 (coe v0))
               (coe d_epochStructure_1390 (coe v0))
               (coe d_scriptStructure_1638 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_412
               (coe d_scriptStructure_1638 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1128 (coe v0)))
      (coe d_txscripts_2696 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2720 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2720 ~v0 v1 = du_isP2Script_2720 v1
du_isP2Script_2720 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2720 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2722 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2722 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
              (d_tokenAlgebra_2032 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
