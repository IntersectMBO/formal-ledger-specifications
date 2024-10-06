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

module MAlonzo.Code.Ledger.Conway.Conformance.Transaction where

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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Conway.Conformance.Transaction.Tag
d_Tag_8 = ()
data T_Tag_8
  = C_Spend_10 | C_Mint_12 | C_Cert_14 | C_Rewrd_16 | C_Vote_18 |
    C_Propose_20
-- Ledger.Conway.Conformance.Transaction.DecEq-Tag
d_DecEq'45'Tag_22 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_22
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Mint_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_20
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Mint_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_12
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Cert_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_20
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Cert_14
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_14
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Rewrd_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_20
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Rewrd_16
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_16
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Vote_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_20
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Vote_18
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_18
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Propose_20
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Propose_20
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_20
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure
d_TransactionStructure_24 = ()
data T_TransactionStructure_24
  = C_TransactionStructure'46'constructor_14049 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260
                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138
                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424
                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
                                                MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Conway.Conformance.Transaction._.THash
d_THash_88 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 -> ()
d_THash_88 = erased
-- Ledger.Conway.Conformance.Transaction._.Ser
d_Ser_96 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138 -> ()
d_Ser_96 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra
d_TokenAlgebra_124 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__132 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.AssetName
d_AssetName_134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_AssetName_134 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_136 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.Value
d_Value_146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_Value_146 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.coin
d_coin_154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_224
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.inject
d_inject_160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.policies
d_policies_164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> [AgdaAny]
d_policies_164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.property
d_property_166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_166 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.size
d_size_170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_214
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.specialAsset
d_specialAsset_172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_specialAsset_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_220
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Ix
d_Ix_1224 :: T_TransactionStructure_24 -> ()
d_Ix_1224 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxId
d_TxId_1226 :: T_TransactionStructure_24 -> ()
d_TxId_1226 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1228 :: T_TransactionStructure_24 -> ()
d_AuxiliaryData_1228 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1230 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1230 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1232 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1232 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1234 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_adHashingScheme_1234 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_1238 :: T_TransactionStructure_24 -> ()
d_THash_1238 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1240 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1234 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1242 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1234 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1244 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1234 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1246 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1234 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.globalConstants
d_globalConstants_1248 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260
d_globalConstants_1248 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1252 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Network
d_Network_1254 :: T_TransactionStructure_24 -> ()
d_Network_1254 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1256 :: T_TransactionStructure_24 -> AgdaAny
d_NetworkId_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NetworkId_292
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1258 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Quorum
d_Quorum_1260 :: T_TransactionStructure_24 -> Integer
d_Quorum_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Quorum_290
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1262 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Network_282
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1264 :: T_TransactionStructure_24 -> Integer
d_SlotsPerEpoch'7580'_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1266 ::
  T_TransactionStructure_24 -> Integer
d_StabilityWindow'7580'_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1268 ::
  T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1268 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1270 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_ℕEpochStructure_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕEpochStructure_306
      (coe d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.crypto
d_crypto_1272 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138
d_crypto_1272 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1276 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1276 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1278 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
      (coe d_crypto_1272 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1280 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1282 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1282 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1284 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1284 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_1286 :: T_TransactionStructure_24 -> ()
d_THash_1286 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1288 :: T_TransactionStructure_24 -> ()
d_KeyPair_1288 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.SKey
d_SKey_1290 :: T_TransactionStructure_24 -> ()
d_SKey_1290 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1292 :: T_TransactionStructure_24 -> ()
d_ScriptHash_1292 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Ser
d_Ser_1294 :: T_TransactionStructure_24 -> ()
d_Ser_1294 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1296 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
      (coe d_crypto_1272 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1298 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1298 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Sig
d_Sig_1300 :: T_TransactionStructure_24 -> ()
d_Sig_1300 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1302 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1302 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKey
d_VKey_1304 :: T_TransactionStructure_24 -> ()
d_VKey_1304 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1306 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1306 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isSigned
d_isSigned_1308 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1308 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1310 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1310 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.khs
d_khs_1312 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_khs_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
      (coe d_crypto_1272 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.pkk
d_pkk_1314 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_PKKScheme_60
d_pkk_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176
      (coe d_crypto_1272 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.sign
d_sign_1316 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1316 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1320 :: T_TransactionStructure_24 -> ()
d_MemoryEstimate_1320 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1322 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1326 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1326 ~v0 v1 = du__'8729'__1326 v1
du__'8729'__1326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1326 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1328 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1328 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1330 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_AssetName_1332 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1338 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1340 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1342 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_Value_1344 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1346 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_1346 ~v0
  = du_Value'45'CommutativeMonoid_1346
du_Value'45'CommutativeMonoid_1346 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
du_Value'45'CommutativeMonoid_1346
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1350 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1350 ~v0 = du_addValue_1350
du_addValue_1350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1350
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_addValue_230
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1354 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1354 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_224
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1360 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1360 ~v0 v1 = du_monoid_1360 v1
du_monoid_1360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
du_monoid_1360 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> [AgdaAny]
d_policies_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1364 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1366 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1366 ~v0 v1 = du_rawMonoid_1366 v1
du_rawMonoid_1366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
du_rawMonoid_1366 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_214
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_specialAsset_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_220
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1372 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1372 ~v0 = du_sum'7515'_1372
du_sum'7515'_1372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1372
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_sum'7515'_248
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1374 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_ε_1374 ~v0 v1 = du_ε_1374 v1
du_ε_1374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
du_ε_1374 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_984
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1378 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1380 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1384 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1386 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1390 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1396 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1396 ~v0 ~v1 = du_isMagmaIsomorphism_1396
du_isMagmaIsomorphism_1396 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1396 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1398 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1398 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1398 v3
du_isMagmaMonomorphism_1398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1398 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1400 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1406 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1406 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1406 v3
du_isRelIsomorphism_1406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1408 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1408 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1408 v3
du_isRelMonomorphism_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1408 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1412 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1414 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1418 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1424 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1424 ~v0 ~v1 = du_isMagmaMonomorphism_1424
du_isMagmaMonomorphism_1424 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1424 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1430 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1430 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1430 v3
du_isRelMonomorphism_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1432 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1434 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Addr
d_Addr_1438 :: T_TransactionStructure_24 -> ()
d_Addr_1438 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1440 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1442 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Credential
d_Credential_1444 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1446 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1446 ~v0 = du_Dec'45'isScript_1446
du_Dec'45'isScript_1446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1446
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1448 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1448 ~v0 = du_Dec'45'isVKey_1448
du_Dec'45'isVKey_1448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1448
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isVKey_148
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1450 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BaseAddr_194
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe d_globalConstants_1248 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe d_crypto_1272 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_crypto_1272 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1452 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BootstrapAddr_196
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe d_globalConstants_1248 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe d_crypto_1272 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_crypto_1272 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1454 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe d_crypto_1272 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_crypto_1272 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1456 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe d_globalConstants_1248 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe d_crypto_1272 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_crypto_1272 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1462 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1466 :: T_TransactionStructure_24 -> ()
d_ScriptAddr_1466 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1468 :: T_TransactionStructure_24 -> ()
d_ScriptBaseAddr_1468 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1470 :: T_TransactionStructure_24 -> ()
d_ScriptBootstrapAddr_1470 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1474 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1474 ~v0 = du_Show'45'Credential_1474
du_Show'45'Credential_1474 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1474 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential_210
      v1 v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1476 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1476 ~v0
  = du_Show'45'Credential'215'Coin_1476
du_Show'45'Credential'215'Coin_1476 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1476 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential'215'Coin_214
      v1 v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1478 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1478 ~v0 = du_Show'45'RwdAddr_1478
du_Show'45'RwdAddr_1478 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1478
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'RwdAddr_212
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1480 :: T_TransactionStructure_24 -> ()
d_VKeyAddr_1480 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1482 :: T_TransactionStructure_24 -> ()
d_VKeyBaseAddr_1482 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1484 :: T_TransactionStructure_24 -> ()
d_VKeyBootstrapAddr_1484 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1488 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_isScript_46 ->
  AgdaAny
d_getScriptHash_1488 ~v0 = du_getScriptHash_1488
du_getScriptHash_1488 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_isScript_46 ->
  AgdaAny
du_getScriptHash_1488
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_getScriptHash_188
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1490 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1492 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1492 ~v0 = du_isBootstrapAddr'63'_1492
du_isBootstrapAddr'63'_1492 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1492
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isBootstrapAddr'63'_142
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1494 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  ()
d_isKeyHash_1494 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1496 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1496 ~v0 = du_isKeyHashObj_1496
du_isKeyHashObj_1496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1496
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj_26
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1498 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1498 ~v0 = du_isKeyHashObj'7495'_1498
du_isKeyHashObj'7495'_1498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1498
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj'7495'_30
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScript
d_isScript_1500 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1502 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1502 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1504 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1504 ~v0 = du_isScriptObj_1504
du_isScriptObj_1504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1504
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isScriptObj_36
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1506 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 -> ()
d_isScriptRwdAddr_1506 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isVKey
d_isVKey_1508 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1510 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1510 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.netId
d_netId_1512 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1512 ~v0 = du_netId_1512
du_netId_1512 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1512
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_netId_116
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.payCred
d_payCred_1514 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_payCred_1514 ~v0 = du_payCred_1514
du_payCred_1514 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_payCred_1514
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1516 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stakeCred_1516 ~v0 = du_stakeCred_1516
du_stakeCred_1516 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_stakeCred_1516
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_stakeCred_114
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr.net
d_net_1520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  AgdaAny
d_net_1520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_60 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_pay_1522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_pay_62 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_64 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  Integer
d_attrsSize_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_attrsSize_78
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  AgdaAny
d_net_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_74 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_pay_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_pay_76 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.RwdAddr.net
d_net_1542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  AgdaAny
d_net_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.epochStructure
d_epochStructure_1558 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_epochStructure_1558 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1562 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'__80
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1564 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'''__82
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1566 ::
  T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1566 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1568 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1570 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Slot_70
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1572 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Epoch
d_Epoch_1574 :: T_TransactionStructure_24 -> ()
d_Epoch_1574 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1576 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Number'45'Epoch_256
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1578 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Epoch_64
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Slot
d_Slot_1580 :: T_TransactionStructure_24 -> ()
d_Slot_1580 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1582 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Slot'691'_58
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1584 :: T_TransactionStructure_24 -> AgdaAny
d_StabilityWindow_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow_76
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1586 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.addSlot
d_addSlot_1588 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addSlot_248
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.epoch
d_epoch_1590 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_epoch_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1592 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_firstSlot_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1594 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_preoEpoch_90
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1596 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_suc'7497'_1596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_suc'7497'_78
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1598 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_ℕtoEpoch_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕtoEpoch_244
      (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1602 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_1604 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_416
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1606 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Timelock_282
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_1608 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_1608 ~v0
  = du_Hashable'45'HashedTimelock_1608
du_Hashable'45'HashedTimelock_1608 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HashedTimelock_1608
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_414
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.HashedTimelock
d_HashedTimelock_1610 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1612 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1614 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_P1ScriptStructure'45'TL_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'TL_418
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1616 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1630 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Timelock
d_Timelock_1632 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1646 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.HashedTimelock.storedHash
d_storedHash_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  AgdaAny
d_storedHash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_412
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.HashedTimelock.timelock
d_timelock_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268
d_timelock_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_410
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  ()
d_P1Script_1662 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1664 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1668 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_CostModel_1670 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_T_1672 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_THash_1674 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1678 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Datum_1678 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1682 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1690 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1692 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1692 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1694 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1694 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1698 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_ExUnits_1698 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_LangDepView_1702 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Language_1704 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1706 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_PlutusScript_1706 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1710 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1712 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Prices_1714 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1716 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Redeemer_1716 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1722 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1724 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1726 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1734 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1738 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_CostModel_1740 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_T_1742 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_THash_1744 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1748 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Datum_1748 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1750 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1750 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (let v2 = d_epochStructure_1558 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                    (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1756 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1758 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1762 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1764 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1764 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (let v2 = d_epochStructure_1558 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                    (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1766 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1766 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1768 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_ExUnits_1772 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1774 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1776 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1776 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (let v2 = d_epochStructure_1558 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                    (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1780 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_LangDepView_1782 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Language_1784 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1786 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_P1Script_1786 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_PlutusScript_1788 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV1_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV2_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV3_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Prices_1796 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1798 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Redeemer_1798 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1800 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Script_1800 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1808 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1810 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> AgdaAny
d_language_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1818 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_p1s_1818 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () -> AgdaAny -> AgdaAny
d_toData_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1824 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_1824 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1826 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1856 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424
d_scriptStructure_1856 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1860 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1860 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CostModel
d_CostModel_1862 :: T_TransactionStructure_24 -> ()
d_CostModel_1862 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T
d_T_1864 :: T_TransactionStructure_24 -> ()
d_T_1864 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_1866 :: T_TransactionStructure_24 -> ()
d_THash_1866 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1868 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Datum
d_Datum_1870 :: T_TransactionStructure_24 -> ()
d_Datum_1870 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1872 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1872 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (let v2 = d_epochStructure_1558 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1874 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1876 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1878 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1880 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1882 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1884 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1886 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1886 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (let v2 = d_epochStructure_1558 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1888 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1888 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                 (coe d_scriptStructure_1856 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1890 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1890 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                 (coe d_scriptStructure_1856 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1892 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1894 :: T_TransactionStructure_24 -> ()
d_ExUnits_1894 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1896 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1898 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1898 v0
  = let v1 = d_crypto_1272 (coe v0) in
    coe
      (let v2 = d_epochStructure_1558 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1900 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1902 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1904 :: T_TransactionStructure_24 -> ()
d_LangDepView_1904 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Language
d_Language_1906 :: T_TransactionStructure_24 -> ()
d_Language_1906 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1Script
d_P1Script_1908 :: T_TransactionStructure_24 -> ()
d_P1Script_1908 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1910 :: T_TransactionStructure_24 -> ()
d_PlutusScript_1910 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1912 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV1_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1914 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV2_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1916 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV3_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Prices
d_Prices_1918 :: T_TransactionStructure_24 -> ()
d_Prices_1918 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1920 :: T_TransactionStructure_24 -> ()
d_Redeemer_1920 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script
d_Script_1922 :: T_TransactionStructure_24 -> ()
d_Script_1922 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1924 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1926 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1928 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1930 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1930 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                 (coe d_scriptStructure_1856 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1932 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1932 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                 (coe d_scriptStructure_1856 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1934 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe d_scriptStructure_1856 (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1936 ::
  T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.language
d_language_1938 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_language_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.p1s
d_p1s_1940 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_p1s_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
      (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ps
d_ps_1942 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.toData
d_toData_1944 ::
  T_TransactionStructure_24 -> () -> AgdaAny -> AgdaAny
d_toData_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe d_scriptStructure_1856 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1946 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_1946 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1948 ::
  T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1948 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Acnt
d_Acnt_1952 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1954 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1954 ~v0
  = du_DecEq'45'DrepThresholds_1954
du_DecEq'45'DrepThresholds_1954 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1954
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'DrepThresholds_500
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1956 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1956 ~v0 = du_DecEq'45'PParamGroup_1956
du_DecEq'45'PParamGroup_1956 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1956
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1958 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
      (coe d_epochStructure_1558 (coe v0))
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1960 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1960 ~v0
  = du_DecEq'45'PoolThresholds_1960
du_DecEq'45'PoolThresholds_1960 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1960
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PoolThresholds_502
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1962 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams
d_GovParams_1966 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1972 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams
d_PParams_1974 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1976 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1978 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1980 :: T_TransactionStructure_24 -> ()
d_ProtVer_1980 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1984 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1984 ~v0 = du_Show'45'DrepThresholds_1984
du_Show'45'DrepThresholds_1984 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1984
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'DrepThresholds_508
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_1986 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
      (coe d_epochStructure_1558 (coe v0))
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1988 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1988 ~v0 = du_Show'45'PoolThresholds_1988
du_Show'45'PoolThresholds_1988 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1988
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PoolThresholds_510
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_1990 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1990 ~v0 = du_Show'45'ProtVer_1990
du_Show'45'ProtVer_1990 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1990
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ℚ
d_Show'45'ℚ_1992 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1992 ~v0 = du_Show'45'ℚ_1992
du_Show'45'ℚ_1992 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_1992
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2000 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2000 ~v0 = du_paramsWF'45'elim_2000
du_paramsWF'45'elim_2000 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsWF'45'elim_466
      v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2002 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_2002 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2004 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
d_positivePParams_2004 ~v0 = du_positivePParams_2004
du_positivePParams_2004 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
du_positivePParams_2004
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_positivePParams_382
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2006 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2008 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2008 ~v0 = du_pvCanFollow'63'_2008
du_pvCanFollow'63'_2008 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2008
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_2010 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_2010 ~v0
  = du_refScriptCostStride'62'0_2010
du_refScriptCostStride'62'0_2010 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_2010 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_refScriptCostStride'62'0_488
      v0
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2016 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2018 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2022 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2024 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2026 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_2046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.THash
d_THash_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_THash_2050 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_UpdateT_2052 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.Show-THash
d_Show'45'THash_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2066 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> ()
d_ppdWellFormed_2066 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2068 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.a
d_a_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.a0
d_a0_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.b
d_b_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2094 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2124 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2128 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2136 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.prices
d_prices_2142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.pv
d_pv_2144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_2152 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2158 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> ()
d_ppdWellFormed_2158 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2164 ::
  T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2164 ~v0 = du__'63''8599'__2164
du__'63''8599'__2164 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2164 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du__'63''8599'__1036
      v1 v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2166 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
      (coe d_epochStructure_1558 (coe v0))
      (coe d_scriptStructure_1856 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2168 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2170 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_2170 ~v0 = du_applyPParamsUpdate_2170
du_applyPParamsUpdate_2170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_applyPParamsUpdate_2170
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2172 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_modifiedUpdateGroups_2172 ~v0 = du_modifiedUpdateGroups_2172
du_modifiedUpdateGroups_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
du_modifiedUpdateGroups_2172
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2174 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesEconomicGroup_2174 ~v0 = du_modifiesEconomicGroup_2174
du_modifiesEconomicGroup_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesEconomicGroup_2174
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesEconomicGroup_804
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2176 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesGovernanceGroup_2176 ~v0
  = du_modifiesGovernanceGroup_2176
du_modifiesGovernanceGroup_2176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesGovernanceGroup_2176
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesGovernanceGroup_948
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2178 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesNetworkGroup_2178 ~v0 = du_modifiesNetworkGroup_2178
du_modifiesNetworkGroup_2178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesNetworkGroup_2178
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesNetworkGroup_732
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2180 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesTechnicalGroup_2180 ~v0 = du_modifiesTechnicalGroup_2180
du_modifiesTechnicalGroup_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesTechnicalGroup_2180
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesTechnicalGroup_876
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2182 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_paramsUpdateWellFormed_2182 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2184 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2184 ~v0
  = du_paramsUpdateWellFormed'63'_2184
du_paramsUpdateWellFormed'63'_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2184
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsUpdateWellFormed'63'_728
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2186 ::
  T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2186 ~v0 = du_'8801''45'update_2186
du_'8801''45'update_2186 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_2186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_'8801''45'update_1050
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_Emax_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_costmdls_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_drepActivity_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2220 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_maxBlockExUnits_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2222 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_maxTxExUnits_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2242 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2246 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2248 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_prices_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.govParams
d_govParams_2274 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_govParams_2274 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2278 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2282 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe d_govParams_2274 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_2284 :: T_TransactionStructure_24 -> ()
d_THash_2284 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2286 :: T_TransactionStructure_24 -> ()
d_UpdateT_2286 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2288 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2290 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2292 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_2294 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe d_govParams_2274 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2296 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe d_govParams_2274 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2298 ::
  T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2300 :: T_TransactionStructure_24 -> AgdaAny -> ()
d_ppdWellFormed_2300 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2302 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_2274 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2304 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_tokenAlgebra_2304 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._∙_
d__'8729'__2308 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2308 v0
  = let v1 = d_tokenAlgebra_2304 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__982
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._≈_
d__'8776'__2310 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2310 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2312 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2312 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.AssetName
d_AssetName_2314 :: T_TransactionStructure_24 -> ()
d_AssetName_2314 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2316 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2318 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2320 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2322 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2324 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Value
d_Value_2326 :: T_TransactionStructure_24 -> ()
d_Value_2326 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2328 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2330 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.addValue
d_addValue_2332 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_addValue_230
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.coin
d_coin_2334 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_coin_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2336 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2336 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2338 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_224
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.inject
d_inject_2340 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_inject_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.monoid
d_monoid_2342 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2342 v0
  = let v1 = d_tokenAlgebra_2304 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.policies
d_policies_2344 ::
  T_TransactionStructure_24 -> AgdaAny -> [AgdaAny]
d_policies_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.property
d_property_2346 ::
  T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2346 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2348 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2348 v0
  = let v1 = d_tokenAlgebra_2304 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.size
d_size_2350 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_size_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_214
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2352 :: T_TransactionStructure_24 -> AgdaAny
d_specialAsset_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_220
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2354 ::
  T_TransactionStructure_24 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_sum'7515'_248
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ε
d_ε_2356 :: T_TransactionStructure_24 -> AgdaAny
d_ε_2356 v0
  = let v1 = d_tokenAlgebra_2304 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_984
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2360 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2362 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2364 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2366 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2368 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2372 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2374 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2378 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2378 ~v0 = du_isMagmaIsomorphism_2378
du_isMagmaIsomorphism_2378 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2378 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2380 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2380 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2380 v2
du_isMagmaMonomorphism_2380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2380 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2386 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2388 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2388 ~v0 ~v1 v2 = du_isRelIsomorphism_2388 v2
du_isRelIsomorphism_2388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2388 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2390 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2390 ~v0 ~v1 v2 = du_isRelMonomorphism_2390 v2
du_isRelMonomorphism_2390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2390 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2394 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2396 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2400 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2406 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2406 ~v0 = du_isMagmaMonomorphism_2406
du_isMagmaMonomorphism_2406 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2406 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2408 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2412 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2412 ~v0 ~v1 v2 = du_isRelMonomorphism_2412 v2
du_isRelMonomorphism_2412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2414 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2416 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txidBytes
d_txidBytes_2418 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_txidBytes_2418 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.networkId
d_networkId_2420 :: T_TransactionStructure_24 -> AgdaAny
d_networkId_2420 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14049 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.govStructure
d_govStructure_2422 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10
d_govStructure_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.C_GovStructure'46'constructor_2849
      (d_DecEq'45'TxId_1232 (coe v0)) (d_crypto_1272 (coe v0))
      (d_epochStructure_1558 (coe v0)) (d_scriptStructure_1856 (coe v0))
      (d_govParams_2274 (coe v0)) (d_globalConstants_1248 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2426 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2434 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2434 ~v0 = du_DecEq'45'GovRole_2434
du_DecEq'45'GovRole_2434 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2434
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2436 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
      (coe d_govStructure_2422 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2438 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2438 ~v0 = du_DecEq'45'Vote_2438
du_DecEq'45'Vote_2438 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2438
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2440 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2442 :: T_TransactionStructure_24 -> ()
d_GovActionID_2442 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2444 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2446 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2448 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2450 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2452 :: T_TransactionStructure_24 -> () -> ()
d_HashProtected_2452 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2456 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_2456 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2470 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2472 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2474 :: T_TransactionStructure_24 -> ()
d_Voter_2474 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.actionWellFormed
d_actionWellFormed_2480 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_2480 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_2482 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
      (coe d_govStructure_2422 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2486 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getDRepVote_2486 ~v0 = du_getDRepVote_2486
du_getDRepVote_2486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_getDRepVote_2486
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.maximum
d_maximum_2488 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2488 ~v0 = du_maximum_2488
du_maximum_2488 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2488
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  AgdaAny
d_hash_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_hash_718
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_url_716
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_expiresIn_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2536 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2580 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2582 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2582 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2584 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2586 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2588 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2590 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2600 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState
d_CertState_2602 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DCert
d_DCert_2606 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState
d_DState_2614 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2616 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe d_govStructure_2422 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2618 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DepositPurpose
d_DepositPurpose_2620 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Deposits
d_Deposits_2622 :: T_TransactionStructure_24 -> ()
d_Deposits_2622 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState
d_GState_2630 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2634 :: T_TransactionStructure_24 -> ()
d_GovCertEnv_2634 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PState
d_PState_2640 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2644 :: T_TransactionStructure_24 -> ()
d_PoolEnv_2644 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2646 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.certDeposit
d_certDeposit_2650 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2650 ~v0 = du_certDeposit_2650
du_certDeposit_2650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2650 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990 v0
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.certRefund
d_certRefund_2652 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_certRefund_2652 ~v0 = du_certRefund_2652
du_certRefund_2652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
du_certRefund_2652
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.cwitness
d_cwitness_2654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_cwitness_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_cwitness_888
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.updateCertDeposit
d_updateCertDeposit_2668 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_2668 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
      (coe d_govStructure_2422 (coe v0)) v2 v3
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2722 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState.dState
d_dState_2726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState.gState
d_gState_2728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState.pState
d_pState_2730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.deposits
d_deposits_2750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.rewards
d_rewards_2752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2756 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_984 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2762 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pparams_982 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState.deposits
d_deposits_2778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState.dreps
d_dreps_2780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PState.pools
d_pools_2784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PState.retiring
d_retiring_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_rewardAddr_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxIn
d_TxIn_2792 :: T_TransactionStructure_24 -> ()
d_TxIn_2792 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxOut
d_TxOut_2794 :: T_TransactionStructure_24 -> ()
d_TxOut_2794 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.UTxO
d_UTxO_2796 :: T_TransactionStructure_24 -> ()
d_UTxO_2796 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Wdrl
d_Wdrl_2798 :: T_TransactionStructure_24 -> ()
d_Wdrl_2798 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2800 :: T_TransactionStructure_24 -> ()
d_RdmrPtr_2800 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2802 :: T_TransactionStructure_24 -> ()
d_ProposedPPUpdates_2802 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Update
d_Update_2804 :: T_TransactionStructure_24 -> ()
d_Update_2804 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody
d_TxBody_2806 a0 = ()
data T_TxBody_2806
  = C_TxBody'46'constructor_18037 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
                                  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
                                  Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                  (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txins
d_txins_2848 ::
  T_TxBody_2806 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2848 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2850 ::
  T_TxBody_2806 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2850 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2852 ::
  T_TxBody_2806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2852 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2854 :: T_TxBody_2806 -> Integer
d_txfee_2854 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.mint
d_mint_2856 :: T_TxBody_2806 -> AgdaAny
d_mint_2856 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2858 ::
  T_TxBody_2806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2858 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2860 ::
  T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2860 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2862 ::
  T_TxBody_2806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2862 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2864 ::
  T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2864 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2866 ::
  T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_2866 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2868 :: T_TxBody_2806 -> Integer
d_txdonation_2868 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txup
d_txup_2870 ::
  T_TxBody_2806 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2870 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2872 :: T_TxBody_2806 -> Maybe AgdaAny
d_txADhash_2872 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_2874 :: T_TxBody_2806 -> Maybe AgdaAny
d_txNetworkId_2874 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_2876 :: T_TxBody_2806 -> Maybe Integer
d_curTreasury_2876 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2878 :: T_TxBody_2806 -> Integer
d_txsize_2878 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txid
d_txid_2880 :: T_TxBody_2806 -> AgdaAny
d_txid_2880 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2882 ::
  T_TxBody_2806 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2882 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2884 :: T_TxBody_2806 -> [AgdaAny]
d_reqSigHash_2884 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2886 :: T_TxBody_2806 -> Maybe AgdaAny
d_scriptIntHash_2886 v0
  = case coe v0 of
      C_TxBody'46'constructor_18037 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2888 a0 = ()
data T_TxWitnesses_2888
  = C_TxWitnesses'46'constructor_18589 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2898 ::
  T_TxWitnesses_2888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2898 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18589 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2900 ::
  T_TxWitnesses_2888 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2900 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18589 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2902 ::
  T_TxWitnesses_2888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2902 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18589 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2904 ::
  T_TxWitnesses_2888 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2904 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18589 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2906 ::
  T_TransactionStructure_24 ->
  T_TxWitnesses_2888 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404]
d_scriptsP1_2906 ~v0 v1 = du_scriptsP1_2906 v1
du_scriptsP1_2906 ::
  T_TxWitnesses_2888 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404]
du_scriptsP1_2906 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2900 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx
d_Tx_2908 a0 = ()
data T_Tx_2908
  = C_Tx'46'constructor_18781 T_TxBody_2806 T_TxWitnesses_2888 Bool
                              (Maybe AgdaAny)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.body
d_body_2918 :: T_Tx_2908 -> T_TxBody_2806
d_body_2918 v0
  = case coe v0 of
      C_Tx'46'constructor_18781 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.wits
d_wits_2920 :: T_Tx_2908 -> T_TxWitnesses_2888
d_wits_2920 v0
  = case coe v0 of
      C_Tx'46'constructor_18781 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.isValid
d_isValid_2922 :: T_Tx_2908 -> Bool
d_isValid_2922 v0
  = case coe v0 of
      C_Tx'46'constructor_18781 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.txAD
d_txAD_2924 :: T_Tx_2908 -> Maybe AgdaAny
d_txAD_2924 v0
  = case coe v0 of
      C_Tx'46'constructor_18781 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.getValue
d_getValue_2926 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2926 ~v0 v1 = du_getValue_2926 v1
du_getValue_2926 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2926 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2930 :: T_TransactionStructure_24 -> ()
d_TxOut'688'_2930 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txOutHash
d_txOutHash_2932 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2932 v0 v1
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
                                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                                    (MAlonzo.Code.Interface.Hashable.d_hash_16
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
                                          (d_scriptStructure_1856 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
                                                (coe d_crypto_1272 (coe v0))
                                                (coe d_epochStructure_1558 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                                (coe d_scriptStructure_1856 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2942 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2942 ~v0 v1 = du_getValue'688'_2942 v1
du_getValue'688'_2942 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2942 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2946 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2946 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1232 (coe v0))
               (coe d_DecEq'45'Ix_1230 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1174 (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isVKey_148
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2952 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2952 ~v0 v1 = du_scriptOuts_2952 v1
du_scriptOuts_2952 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2952 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1158
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txinsScript
d_txinsScript_2960 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2960 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1232 (coe v0))
               (coe d_DecEq'45'Ix_1230 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_554)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2952 (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.refScripts
d_refScripts_2966 ::
  T_TransactionStructure_24 ->
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2966 v0 v1 v2
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
         MAlonzo.Code.Interface.IsSet.du_range_552
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1374
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe d_DecEq'45'TxId_1232 (coe v0))
                  (coe d_DecEq'45'Ix_1230 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2848 (coe d_body_2918 (coe v1)))
               (coe d_refInputs_2850 (coe d_body_2918 (coe v1))))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.collateral
d_collateral_2978 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2978 v0 ~v1 = du_collateral_2978 v0
du_collateral_2978 ::
  T_Tx_2908 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2978 v0
  = coe d_collateral_2882 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_2980 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_2980 v0 ~v1 = du_curTreasury_2980 v0
du_curTreasury_2980 :: T_Tx_2908 -> Maybe Integer
du_curTreasury_2980 v0
  = coe d_curTreasury_2876 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.mint
d_mint_2982 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2982 v0 ~v1 = du_mint_2982 v0
du_mint_2982 :: T_Tx_2908 -> AgdaAny
du_mint_2982 v0 = coe d_mint_2856 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.refInputs
d_refInputs_2984 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2984 v0 ~v1 = du_refInputs_2984 v0
du_refInputs_2984 ::
  T_Tx_2908 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2984 v0
  = coe d_refInputs_2850 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2986 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2986 v0 ~v1 = du_reqSigHash_2986 v0
du_reqSigHash_2986 :: T_Tx_2908 -> [AgdaAny]
du_reqSigHash_2986 v0
  = coe d_reqSigHash_2884 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2988 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2988 v0 ~v1 = du_scriptIntHash_2988 v0
du_scriptIntHash_2988 :: T_Tx_2908 -> Maybe AgdaAny
du_scriptIntHash_2988 v0
  = coe d_scriptIntHash_2886 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txADhash
d_txADhash_2990 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2990 v0 ~v1 = du_txADhash_2990 v0
du_txADhash_2990 :: T_Tx_2908 -> Maybe AgdaAny
du_txADhash_2990 v0
  = coe d_txADhash_2872 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_2992 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2992 v0 ~v1 = du_txNetworkId_2992 v0
du_txNetworkId_2992 :: T_Tx_2908 -> Maybe AgdaAny
du_txNetworkId_2992 v0
  = coe d_txNetworkId_2874 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txcerts
d_txcerts_2994 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2994 v0 ~v1 = du_txcerts_2994 v0
du_txcerts_2994 ::
  T_Tx_2908 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
du_txcerts_2994 v0 = coe d_txcerts_2860 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txdonation
d_txdonation_2996 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2996 v0 ~v1 = du_txdonation_2996 v0
du_txdonation_2996 :: T_Tx_2908 -> Integer
du_txdonation_2996 v0
  = coe d_txdonation_2868 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txfee
d_txfee_2998 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2998 v0 ~v1 = du_txfee_2998 v0
du_txfee_2998 :: T_Tx_2908 -> Integer
du_txfee_2998 v0 = coe d_txfee_2854 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txid
d_txid_3000 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3000 v0 ~v1 = du_txid_3000 v0
du_txid_3000 :: T_Tx_2908 -> AgdaAny
du_txid_3000 v0 = coe d_txid_2880 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txins
d_txins_3002 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3002 v0 ~v1 = du_txins_3002 v0
du_txins_3002 ::
  T_Tx_2908 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3002 v0 = coe d_txins_2848 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txouts
d_txouts_3004 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3004 v0 ~v1 = du_txouts_3004 v0
du_txouts_3004 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3004 v0 = coe d_txouts_2852 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txprop
d_txprop_3006 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_3006 v0 ~v1 = du_txprop_3006 v0
du_txprop_3006 ::
  T_Tx_2908 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
du_txprop_3006 v0 = coe d_txprop_2866 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txsize
d_txsize_3008 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_3008 v0 ~v1 = du_txsize_3008 v0
du_txsize_3008 :: T_Tx_2908 -> Integer
du_txsize_3008 v0 = coe d_txsize_2878 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txup
d_txup_3010 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3010 v0 ~v1 = du_txup_3010 v0
du_txup_3010 ::
  T_Tx_2908 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3010 v0 = coe d_txup_2870 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txvldt
d_txvldt_3012 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3012 v0 ~v1 = du_txvldt_3012 v0
du_txvldt_3012 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3012 v0 = coe d_txvldt_2858 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txvote
d_txvote_3014 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_3014 v0 ~v1 = du_txvote_3014 v0
du_txvote_3014 ::
  T_Tx_2908 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
du_txvote_3014 v0 = coe d_txvote_2864 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3016 ::
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3016 v0 ~v1 = du_txwdrls_3016 v0
du_txwdrls_3016 ::
  T_Tx_2908 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3016 v0 = coe d_txwdrls_2862 (coe d_body_2918 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txscripts
d_txscripts_3018 ::
  T_TransactionStructure_24 ->
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3018 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2900 (coe d_wits_2920 (coe v1)))
      (coe d_refScripts_2966 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3028 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3028 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe d_crypto_1272 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_386
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_538
               (coe du_m_3040 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1722
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_3040 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.m
d_m_3040 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3040 v0 ~v1 v2 v3 = du_m_3040 v0 v2 v3
du_m_3040 ::
  T_TransactionStructure_24 ->
  T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3040 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
         (d_scriptStructure_1856 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
               (coe d_crypto_1272 (coe v0)) (coe d_epochStructure_1558 (coe v0))))
         (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
               (coe d_scriptStructure_1856 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_crypto_1272 (coe v0)))
      (coe d_txscripts_3018 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.isP2Script
d_isP2Script_3042 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_3042 ~v0 v1 = du_isP2Script_3042 v1
du_isP2Script_3042 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_3042 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3044 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3044 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
              (d_tokenAlgebra_2304 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
