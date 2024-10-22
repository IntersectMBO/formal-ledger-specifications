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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Class.ToBool
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
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

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
  = C_TransactionStructure'46'constructor_15307 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360
                                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Conway.Conformance.Transaction._.THash
d_THash_88 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 -> ()
d_THash_88 = erased
-- Ledger.Conway.Conformance.Transaction._.Ser
d_Ser_96 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 -> ()
d_Ser_96 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra
d_TokenAlgebra_124 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__132 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.AssetName
d_AssetName_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_134 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_136 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.Value
d_Value_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_146 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_148 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.coin
d_coin_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_152 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_156 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.inject
d_inject_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_158 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.policies
d_policies_162 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_162 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.property
d_property_164 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_164 = erased
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.size
d_size_168 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_168 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Conformance.Transaction._.TokenAlgebra.specialAsset
d_specialAsset_170 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_170 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Ix
d_Ix_1354 :: T_TransactionStructure_24 -> ()
d_Ix_1354 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxId
d_TxId_1356 :: T_TransactionStructure_24 -> ()
d_TxId_1356 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1358 :: T_TransactionStructure_24 -> ()
d_AuxiliaryData_1358 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1360 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1360 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1362 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1362 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1364 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1364 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_1368 :: T_TransactionStructure_24 -> ()
d_THash_1368 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1370 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1370 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1372 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1372 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1374 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1374 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1376 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1376 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.globalConstants
d_globalConstants_1378 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1378 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1382 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1382 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Network
d_Network_1384 :: T_TransactionStructure_24 -> ()
d_Network_1384 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1386 :: T_TransactionStructure_24 -> AgdaAny
d_NetworkId_1386 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1388 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1388 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Quorum
d_Quorum_1390 :: T_TransactionStructure_24 -> Integer
d_Quorum_1390 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1392 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1392 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1394 :: T_TransactionStructure_24 -> Integer
d_SlotsPerEpoch'7580'_1394 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1396 ::
  T_TransactionStructure_24 -> Integer
d_StabilityWindow'7580'_1396 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1398 ::
  T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1398 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1400 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1400 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.crypto
d_crypto_1402 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1402 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1406 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1406 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1408 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1408 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_1402 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1410 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1410 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1412 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1412 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1414 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1414 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_1416 :: T_TransactionStructure_24 -> ()
d_THash_1416 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1418 :: T_TransactionStructure_24 -> ()
d_KeyPair_1418 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.SKey
d_SKey_1420 :: T_TransactionStructure_24 -> ()
d_SKey_1420 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1422 :: T_TransactionStructure_24 -> ()
d_ScriptHash_1422 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Ser
d_Ser_1424 :: T_TransactionStructure_24 -> ()
d_Ser_1424 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1426 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1426 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_1402 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1428 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1428 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Sig
d_Sig_1430 :: T_TransactionStructure_24 -> ()
d_Sig_1430 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1432 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1432 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKey
d_VKey_1434 :: T_TransactionStructure_24 -> ()
d_VKey_1434 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1436 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1436 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isSigned
d_isSigned_1438 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1438 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1440 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1440 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.khs
d_khs_1442 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1442 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1402 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.pkk
d_pkk_1444 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1444 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_1402 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.sign
d_sign_1446 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1446 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1450 :: T_TransactionStructure_24 -> ()
d_MemoryEstimate_1450 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1452 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1456 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1456 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1458 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1458 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1460 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1460 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1462 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1462 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1464 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1464 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1466 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1466 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1468 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1470 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1472 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1474 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1474 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1476 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1476 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1478 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1478 ~v0 = du_addValue_1478
du_addValue_1478 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
du_addValue_1478
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1480 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1480 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1482 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1482 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1484 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1484 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1486 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1486 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1488 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1488 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1490 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1490 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1492 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1492 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1494 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1494 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1496 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1496 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1498 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1498 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1500 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1500 ~v0 = du_sum'7515'_1500
du_sum'7515'_1500 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1500
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1502 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1502 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1506 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1510 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1510 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1512 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1514 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1518 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1520 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1522 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1522 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1524 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1524 ~v0 = du_isMagmaIsomorphism_1524
du_isMagmaIsomorphism_1524 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1524 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1526 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1526 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1526 v2
du_isMagmaMonomorphism_1526 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1526 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1528 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1530 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1530 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1532 v0
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
d_isRelIsomorphism_1534 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1534 ~v0 ~v1 v2 = du_isRelIsomorphism_1534 v2
du_isRelIsomorphism_1534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1534 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1536 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1536 ~v0 ~v1 v2 = du_isRelMonomorphism_1536 v2
du_isRelMonomorphism_1536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1536 v0
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
d_surjective_1538 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1538 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1540 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1542 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1546 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1546 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1548 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1548 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1550 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1550 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1552 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1552 ~v0 = du_isMagmaMonomorphism_1552
du_isMagmaMonomorphism_1552 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1552 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1554 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1554 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1556 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1556 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1558 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1558 ~v0 ~v1 v2 = du_isRelMonomorphism_1558 v2
du_isRelMonomorphism_1558 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1558 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1560 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1560 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1562 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1562 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Addr
d_Addr_1566 :: T_TransactionStructure_24 -> ()
d_Addr_1566 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1568 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1570 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Credential
d_Credential_1572 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1574 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1574 ~v0 = du_Dec'45'isScript_1574
du_Dec'45'isScript_1574 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1574
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1576 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1576 ~v0 = du_Dec'45'isVKey_1576
du_Dec'45'isVKey_1576 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1576
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1578 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1578 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1378 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1402 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1402 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1580 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1580 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1378 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1402 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1402 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1582 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1582 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1402 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1402 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1584 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1584 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1378 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1402 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1402 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1590 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1594 :: T_TransactionStructure_24 -> ()
d_ScriptAddr_1594 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1596 :: T_TransactionStructure_24 -> ()
d_ScriptBaseAddr_1596 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1598 :: T_TransactionStructure_24 -> ()
d_ScriptBootstrapAddr_1598 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1602 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1602 ~v0 = du_Show'45'Credential_1602
du_Show'45'Credential_1602 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1602 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1604 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1604 ~v0
  = du_Show'45'Credential'215'Coin_1604
du_Show'45'Credential'215'Coin_1604 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1604 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1606 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1606 ~v0 = du_Show'45'RwdAddr_1606
du_Show'45'RwdAddr_1606 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1606
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1608 :: T_TransactionStructure_24 -> ()
d_VKeyAddr_1608 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1610 :: T_TransactionStructure_24 -> ()
d_VKeyBaseAddr_1610 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1612 :: T_TransactionStructure_24 -> ()
d_VKeyBootstrapAddr_1612 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1616 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1616 ~v0 = du_getScriptHash_1616
du_getScriptHash_1616 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1616
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1618 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1620 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1620 ~v0 = du_isBootstrapAddr'63'_1620
du_isBootstrapAddr'63'_1620 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1620
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1622 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1622 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1624 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1624 ~v0 = du_isKeyHashObj_1624
du_isKeyHashObj_1624 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1624
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1626 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1626 ~v0 = du_isKeyHashObj'7495'_1626
du_isKeyHashObj'7495'_1626 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1626
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScript
d_isScript_1628 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1630 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1630 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1632 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1632 ~v0 = du_isScriptObj_1632
du_isScriptObj_1632 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1632
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1634 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1634 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isVKey
d_isVKey_1636 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1638 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1638 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.netId
d_netId_1640 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1640 ~v0 = du_netId_1640
du_netId_1640 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1640 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.payCred
d_payCred_1642 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1642 ~v0 = du_payCred_1642
du_payCred_1642 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1642 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1644 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1644 ~v0 = du_stakeCred_1644
du_stakeCred_1644 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1644
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr.net
d_net_1648 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1648 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1650 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1650 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1652 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1652 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1656 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1656 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1658 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1658 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1660 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1660 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.RwdAddr.net
d_net_1670 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1670 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1672 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1672 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.epochStructure
d_epochStructure_1686 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1686 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1690 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1690 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1692 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1692 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1694 ::
  T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1694 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1696 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1696 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1698 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1698 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1700 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_1700 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Epoch
d_Epoch_1702 :: T_TransactionStructure_24 -> ()
d_Epoch_1702 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1704 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1704 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1706 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1706 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Slot
d_Slot_1708 :: T_TransactionStructure_24 -> ()
d_Slot_1708 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1710 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1710 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1712 :: T_TransactionStructure_24 -> AgdaAny
d_StabilityWindow_1712 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1714 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1714 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.addSlot
d_addSlot_1716 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1716 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.epoch
d_epoch_1718 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_epoch_1718 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1720 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_firstSlot_1720 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1722 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1722 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1724 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_suc'7497'_1724 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1726 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_ℕtoEpoch_1726 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1730 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1730 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322 (coe v1)
            (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_1732 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_352
      (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1734 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1734 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278 (coe v1)
            (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_1736 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_1736 ~v0
  = du_Hashable'45'HashedTimelock_1736
du_Hashable'45'HashedTimelock_1736 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HashedTimelock_1736
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_350
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.HashedTimelock
d_HashedTimelock_1738 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1740 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1742 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'TL_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'TL_354
      (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1744 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1758 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Timelock
d_Timelock_1760 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1774 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.HashedTimelock.storedHash
d_storedHash_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  AgdaAny
d_storedHash_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_348
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.HashedTimelock.timelock
d_timelock_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_346
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1784 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1784 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1786 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1786 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1788 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1788 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1790 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1790 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1792 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1792 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1796 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1796 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1798 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1798 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1800 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1800 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1802 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1802 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1804 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1804 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1806 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1806 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1808 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1808 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1810 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1810 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1812 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1812 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1814 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1814 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1816 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1816 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1818 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1818 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1820 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1820 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1822 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1822 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1824 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1824 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1826 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1826 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1828 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1828 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1830 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1830 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1832 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1832 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1834 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1834 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1836 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1836 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1838 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1838 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1840 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1840 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1842 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1842 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1844 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1844 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1846 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1846 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1848 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1848 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1850 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1850 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1852 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1852 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1854 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1854 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1856 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1856 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1858 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1858 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1860 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1860 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1862 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1862 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.Dec-evalTimelock
d_Dec'45'evalTimelock_1866 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1866 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322 (coe v1)
            (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.DecEq-Timelock
d_DecEq'45'Timelock_1868 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1868 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278 (coe v1)
            (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.P1ScriptStructure
d_P1ScriptStructure_1870 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1872 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'TL_1872 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_400 (coe v1)
            (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.PlutusStructure
d_PlutusStructure_1874 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure
d_ScriptStructure_1888 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.Timelock
d_Timelock_1890 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.evalTimelock
d_evalTimelock_1904 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure._≥ᵉ_
d__'8805''7497'__1908 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1908 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.CostModel
d_CostModel_1910 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_CostModel_1910 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.T
d_T_1912 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_T_1912 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.THash
d_THash_1914 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_THash_1914 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Dataʰ
d_Data'688'_1916 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1916 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Datum
d_Datum_1918 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Datum_1918 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1920 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1920 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1922 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1922 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1924 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1924 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1926 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1926 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1928 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1928 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1930 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1930 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1932 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1932 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1934 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1934 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-T
d_DecEq'45'T_1936 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1936 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1938 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1938 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1940 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1940 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.ExUnits
d_ExUnits_1942 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_ExUnits_1942 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1944 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1944 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_438 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1946 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1946 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1948 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1948 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1950 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1950 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528 (coe v1)
            (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.LangDepView
d_LangDepView_1952 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_LangDepView_1952 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Language
d_Language_1954 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Language_1954 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.P1Script
d_P1Script_1956 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_P1Script_1956 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.PlutusScript
d_PlutusScript_1958 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_1958 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.PlutusV1
d_PlutusV1_1960 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_1960 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.PlutusV2
d_PlutusV2_1962 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_1962 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.PlutusV3
d_PlutusV3_1964 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_1964 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Prices
d_Prices_1966 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Prices_1966 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Redeemer
d_Redeemer_1968 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Redeemer_1968 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Script
d_Script_1970 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Script_1970 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1972 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1972 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1974 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1974 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Show-Prices
d_Show'45'Prices_1976 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1976 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.Show-THash
d_Show'45'THash_1978 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1978 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.T-Hashable
d_T'45'Hashable_1980 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1980 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.T-isHashable
d_T'45'isHashable_1982 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1982 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1984 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1984 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.language
d_language_1986 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_1986 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.p1s
d_p1s_1988 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1988 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe (coe MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.ps
d_ps_1990 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1990 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.toData
d_toData_1992 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_1992 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.validP1Script
d_validP1Script_1994 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 -> ()
d_validP1Script_1994 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script.ScriptStructure.validPlutusScript
d_validPlutusScript_1996 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1996 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2028 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_2030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_CostModel_2030 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.T
d_T_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_T_2032 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_2034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_THash_2034 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2036 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_2038 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Datum_2038 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2040 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2040 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                    (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2042 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2044 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2046 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2048 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2050 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2052 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2054 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2054 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                    (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2056 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2058 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2060 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_ExUnits_2062 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_410
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2066 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2066 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                    (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2068 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2068 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2070 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_486
      (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_2072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_LangDepView_2072 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_2074 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Language_2074 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_2076 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_P1Script_2076 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_2078 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_PlutusScript_2078 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny
d_PlutusV1_2080 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny
d_PlutusV2_2082 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny
d_PlutusV3_2084 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Prices_2086 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_2088 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Redeemer_2088 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_2090 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Script_2090 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2092 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2094 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2094 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2096 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2098 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2100 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2102 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.language
d_language_2106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny
d_language_2106 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_2108 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2108 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
      (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_2110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_2112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  () -> AgdaAny -> AgdaAny
d_toData_2112 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_2114 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  ()
d_validP1Script_2114 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2116 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_2118 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360
d_scriptStructure_2118 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__2122 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2122 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CostModel
d_CostModel_2124 :: T_TransactionStructure_24 -> ()
d_CostModel_2124 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T
d_T_2126 :: T_TransactionStructure_24 -> ()
d_T_2126 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_2128 :: T_TransactionStructure_24 -> ()
d_THash_2128 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_2130 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2130 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Datum
d_Datum_2132 :: T_TransactionStructure_24 -> ()
d_Datum_2132 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_2134 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2134 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2136 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2136 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_2138 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2138 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_2140 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2140 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_2142 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2142 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_2144 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2144 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_2146 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2146 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_2148 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2148 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2150 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2150 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_2118 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2152 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2152 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_2118 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2154 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2154 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ExUnits
d_ExUnits_2156 :: T_TransactionStructure_24 -> ()
d_ExUnits_2156 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_2158 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_410
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_2160 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2160 v0
  = let v1 = d_crypto_1402 (coe v0) in
    coe
      (let v2 = d_epochStructure_1686 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
               (coe v2))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2162 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2162 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_2164 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_486
      (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.LangDepView
d_LangDepView_2166 :: T_TransactionStructure_24 -> ()
d_LangDepView_2166 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Language
d_Language_2168 :: T_TransactionStructure_24 -> ()
d_Language_2168 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.P1Script
d_P1Script_2170 :: T_TransactionStructure_24 -> ()
d_P1Script_2170 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_2172 :: T_TransactionStructure_24 -> ()
d_PlutusScript_2172 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_2174 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV1_2174 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_2176 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV2_2176 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_2178 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV3_2178 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Prices
d_Prices_2180 :: T_TransactionStructure_24 -> ()
d_Prices_2180 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Redeemer
d_Redeemer_2182 :: T_TransactionStructure_24 -> ()
d_Redeemer_2182 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Script
d_Script_2184 :: T_TransactionStructure_24 -> ()
d_Script_2184 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_2186 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2186 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_2188 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2188 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_2190 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2190 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2192 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2192 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_2118 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2194 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2194 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                 (coe d_scriptStructure_2118 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_2196 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2196 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe d_scriptStructure_2118 (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_2198 ::
  T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.language
d_language_2200 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_language_2200 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.p1s
d_p1s_2202 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
      (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ps
d_ps_2204 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.toData
d_toData_2206 ::
  T_TransactionStructure_24 -> () -> AgdaAny -> AgdaAny
d_toData_2206 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe d_scriptStructure_2118 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2208 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  ()
d_validP1Script_2208 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2210 ::
  T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2210 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Acnt
d_Acnt_2214 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2216 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2216 ~v0
  = du_DecEq'45'DrepThresholds_2216
du_DecEq'45'DrepThresholds_2216 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2216
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'DrepThresholds_500
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2218 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2218 ~v0 = du_DecEq'45'PParamGroup_2218
du_DecEq'45'PParamGroup_2218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2218
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2220 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
      (coe d_epochStructure_1686 (coe v0))
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2222 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2222 ~v0
  = du_DecEq'45'PoolThresholds_2222
du_DecEq'45'PoolThresholds_2222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2222
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PoolThresholds_502
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2224 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams
d_GovParams_2228 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2234 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams
d_PParams_2236 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2238 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2240 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2242 :: T_TransactionStructure_24 -> ()
d_ProtVer_2242 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2246 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2246 ~v0 = du_Show'45'DrepThresholds_2246
du_Show'45'DrepThresholds_2246 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2246
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'DrepThresholds_508
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2248 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
      (coe d_epochStructure_1686 (coe v0))
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2250 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2250 ~v0 = du_Show'45'PoolThresholds_2250
du_Show'45'PoolThresholds_2250 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PoolThresholds_510
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2252 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2252 ~v0 = du_Show'45'ProtVer_2252
du_Show'45'ProtVer_2252 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2252
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-ℚ
d_Show'45'ℚ_2254 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_2254 ~v0 = du_Show'45'ℚ_2254
du_Show'45'ℚ_2254 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_2254
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2262 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2262 ~v0 = du_paramsWF'45'elim_2262
du_paramsWF'45'elim_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsWF'45'elim_466
      v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2264 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_2264 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2266 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
d_positivePParams_2266 ~v0 = du_positivePParams_2266
du_positivePParams_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
du_positivePParams_2266
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_positivePParams_382
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2268 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2270 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2270 ~v0 = du_pvCanFollow'63'_2270
du_pvCanFollow'63'_2270 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2270
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_2272 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_2272 ~v0
  = du_refScriptCostStride'62'0_2272
du_refScriptCostStride'62'0_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_2272 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_refScriptCostStride'62'0_488
      v0
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2306 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2308 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.THash
d_THash_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_THash_2312 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_UpdateT_2314 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.Show-THash
d_Show'45'THash_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2316 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2318 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2328 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> ()
d_ppdWellFormed_2328 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2346 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.a
d_a_2348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.a0
d_a0_2350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.b
d_b_2352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.prices
d_prices_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.pv
d_pv_2406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_2414 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2418 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2420 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> ()
d_ppdWellFormed_2420 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2422 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2426 ::
  T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2426 ~v0 = du__'63''8599'__2426
du__'63''8599'__2426 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2426 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du__'63''8599'__1036
      v1 v2
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2428 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
      (coe d_epochStructure_1686 (coe v0))
      (coe d_scriptStructure_2118 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2430 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2432 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_2432 ~v0 = du_applyPParamsUpdate_2432
du_applyPParamsUpdate_2432 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_applyPParamsUpdate_2432
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2434 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_modifiedUpdateGroups_2434 ~v0 = du_modifiedUpdateGroups_2434
du_modifiedUpdateGroups_2434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
du_modifiedUpdateGroups_2434
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2436 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesEconomicGroup_2436 ~v0 = du_modifiesEconomicGroup_2436
du_modifiesEconomicGroup_2436 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesEconomicGroup_2436
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesEconomicGroup_804
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2438 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesGovernanceGroup_2438 ~v0
  = du_modifiesGovernanceGroup_2438
du_modifiesGovernanceGroup_2438 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesGovernanceGroup_2438
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesGovernanceGroup_948
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2440 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesNetworkGroup_2440 ~v0 = du_modifiesNetworkGroup_2440
du_modifiesNetworkGroup_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesNetworkGroup_2440
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesNetworkGroup_732
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2442 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesTechnicalGroup_2442 ~v0 = du_modifiesTechnicalGroup_2442
du_modifiesTechnicalGroup_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
du_modifiesTechnicalGroup_2442
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesTechnicalGroup_876
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2444 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_paramsUpdateWellFormed_2444 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2446 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2446 ~v0
  = du_paramsUpdateWellFormed'63'_2446
du_paramsUpdateWellFormed'63'_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2446
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsUpdateWellFormed'63'_728
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2448 ::
  T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2448 ~v0 = du_'8801''45'update_2448
du_'8801''45'update_2448 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_2448 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_'8801''45'update_1050
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_Emax_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2454 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2456 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2460 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2462 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2464 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2466 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_costmdls_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2470 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_drepActivity_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2474 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2480 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2482 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_maxBlockExUnits_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2484 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2488 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2490 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_maxTxExUnits_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe AgdaAny
d_prices_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.govParams
d_govParams_2536 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_govParams_2536 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2540 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2540 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2542 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2542 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2544 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe d_govParams_2536 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.THash
d_THash_2546 :: T_TransactionStructure_24 -> ()
d_THash_2546 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2548 :: T_TransactionStructure_24 -> ()
d_UpdateT_2548 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2550 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2550 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2552 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2552 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2554 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_2556 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe d_govParams_2536 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2558 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe d_govParams_2536 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2560 ::
  T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2562 :: T_TransactionStructure_24 -> AgdaAny -> ()
d_ppdWellFormed_2562 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2564 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe d_govParams_2536 (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2566 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2566 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._∙_
d__'8729'__2570 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2570 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2566 (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._≈_
d__'8776'__2572 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2572 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2574 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2574 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.AssetName
d_AssetName_2576 :: T_TransactionStructure_24 -> ()
d_AssetName_2576 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2578 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2578 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2580 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2580 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2582 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2584 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2586 a0 a1 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Value
d_Value_2588 :: T_TransactionStructure_24 -> ()
d_Value_2588 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2590 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2590 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.addValue
d_addValue_2592 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_2592 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.coin
d_coin_2594 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_coin_2594 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2596 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2596 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2598 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2598 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.inject
d_inject_2600 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_inject_2600 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.monoid
d_monoid_2602 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2602 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2566 (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.policies
d_policies_2604 ::
  T_TransactionStructure_24 -> AgdaAny -> [AgdaAny]
d_policies_2604 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.property
d_property_2606 ::
  T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2606 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2608 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2608 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                 (coe d_tokenAlgebra_2566 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.size
d_size_2610 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_size_2610 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2612 :: T_TransactionStructure_24 -> AgdaAny
d_specialAsset_2612 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2614 ::
  T_TransactionStructure_24 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2614 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
      (coe d_tokenAlgebra_2566 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.ε
d_ε_2616 :: T_TransactionStructure_24 -> AgdaAny
d_ε_2616 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2566 (coe v0))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2620 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2620 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2622 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2624 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2626 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2628 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2628 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2632 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2632 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2634 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2636 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2638 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2638 ~v0 = du_isMagmaIsomorphism_2638
du_isMagmaIsomorphism_2638 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2638 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2640 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2640 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2640 v2
du_isMagmaMonomorphism_2640 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2640 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2642 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2644 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2644 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2646 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2646 v0
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
d_isRelIsomorphism_2648 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2648 ~v0 ~v1 v2 = du_isRelIsomorphism_2648 v2
du_isRelIsomorphism_2648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2648 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2650 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2650 ~v0 ~v1 v2 = du_isRelMonomorphism_2650 v2
du_isRelMonomorphism_2650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2650 v0
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
d_surjective_2652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2652 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2654 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2656 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2660 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2662 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2664 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2664 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2666 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2666 ~v0 = du_isMagmaMonomorphism_2666
du_isMagmaMonomorphism_2666 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2666 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2668 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2670 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2672 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2672 ~v0 ~v1 v2 = du_isRelMonomorphism_2672 v2
du_isRelMonomorphism_2672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2672 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2674 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2676 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txidBytes
d_txidBytes_2678 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_txidBytes_2678 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.networkId
d_networkId_2680 :: T_TransactionStructure_24 -> AgdaAny
d_networkId_2680 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_15307 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.govStructure
d_govStructure_2682 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10
d_govStructure_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.C_GovStructure'46'constructor_2849
      (d_DecEq'45'TxId_1362 (coe v0)) (d_crypto_1402 (coe v0))
      (d_epochStructure_1686 (coe v0)) (d_scriptStructure_2118 (coe v0))
      (d_govParams_2536 (coe v0)) (d_globalConstants_1378 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2686 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2694 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2694 ~v0 = du_DecEq'45'GovRole_2694
du_DecEq'45'GovRole_2694 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2694
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2696 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
      (coe d_govStructure_2682 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2698 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2698 ~v0 = du_DecEq'45'Vote_2698
du_DecEq'45'Vote_2698 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2698
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2700 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2702 :: T_TransactionStructure_24 -> ()
d_GovActionID_2702 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2704 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2706 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2708 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2710 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2712 :: T_TransactionStructure_24 -> () -> ()
d_HashProtected_2712 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2716 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_2716 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2730 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2732 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2734 :: T_TransactionStructure_24 -> ()
d_Voter_2734 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.actionWellFormed
d_actionWellFormed_2740 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_2740 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_2742 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
      (coe d_govStructure_2682 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2746 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2746 ~v0 = du_getDRepVote_2746
du_getDRepVote_2746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2746
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.maximum
d_maximum_2748 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2748 ~v0 = du_maximum_2748
du_maximum_2748 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2748
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2758 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  AgdaAny
d_hash_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_hash_718
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_url_716
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_expiresIn_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2840 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2842 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2842 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2844 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2846 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2848 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2850 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2860 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState
d_CertState_2862 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DCert
d_DCert_2866 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState
d_DState_2874 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2876 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe d_govStructure_2682 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2878 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DepositPurpose
d_DepositPurpose_2880 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.Deposits
d_Deposits_2882 :: T_TransactionStructure_24 -> ()
d_Deposits_2882 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState
d_GState_2890 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2894 :: T_TransactionStructure_24 -> ()
d_GovCertEnv_2894 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PState
d_PState_2900 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2904 :: T_TransactionStructure_24 -> ()
d_PoolEnv_2904 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2906 a0 = ()
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.certDeposit
d_certDeposit_2910 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2910 ~v0 = du_certDeposit_2910
du_certDeposit_2910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2910 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990 v0
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.certRefund
d_certRefund_2912 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_certRefund_2912 ~v0 = du_certRefund_2912
du_certRefund_2912 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
du_certRefund_2912
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.cwitness
d_cwitness_2914 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_cwitness_888
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.updateCertDeposit
d_updateCertDeposit_2928 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_2928 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
      (coe d_govStructure_2682 (coe v0)) v2 v3
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_2976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2978 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_2978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_2980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState.dState
d_dState_2986 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_2986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState.gState
d_gState_2988 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_2988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.CertState.pState
d_pState_2990 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_2990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.deposits
d_deposits_3010 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.rewards
d_rewards_3012 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_3014 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_3016 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_3020 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_984 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_3022 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pparams_982 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_3036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState.deposits
d_deposits_3038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.GState.dreps
d_dreps_3040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PState.pools
d_pools_3044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PState.retiring
d_retiring_3046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_3050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
      (coe v0)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxIn
d_TxIn_3052 :: T_TransactionStructure_24 -> ()
d_TxIn_3052 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxOut
d_TxOut_3054 :: T_TransactionStructure_24 -> ()
d_TxOut_3054 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.UTxO
d_UTxO_3056 :: T_TransactionStructure_24 -> ()
d_UTxO_3056 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Wdrl
d_Wdrl_3058 :: T_TransactionStructure_24 -> ()
d_Wdrl_3058 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_3060 :: T_TransactionStructure_24 -> ()
d_RdmrPtr_3060 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3062 :: T_TransactionStructure_24 -> ()
d_ProposedPPUpdates_3062 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Update
d_Update_3064 :: T_TransactionStructure_24 -> ()
d_Update_3064 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody
d_TxBody_3066 a0 = ()
data T_TxBody_3066
  = C_TxBody'46'constructor_19485 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
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
d_txins_3108 ::
  T_TxBody_3066 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3108 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3110 ::
  T_TxBody_3066 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3110 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txouts
d_txouts_3112 ::
  T_TxBody_3066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3112 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txfee
d_txfee_3114 :: T_TxBody_3066 -> Integer
d_txfee_3114 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.mint
d_mint_3116 :: T_TxBody_3066 -> AgdaAny
d_mint_3116 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3118 ::
  T_TxBody_3066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3118 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3120 ::
  T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_3120 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3122 ::
  T_TxBody_3066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3122 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3124 ::
  T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_3124 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3126 ::
  T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_3126 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3128 :: T_TxBody_3066 -> Integer
d_txdonation_3128 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txup
d_txup_3130 ::
  T_TxBody_3066 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3130 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3132 :: T_TxBody_3066 -> Maybe AgdaAny
d_txADhash_3132 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3134 :: T_TxBody_3066 -> Maybe AgdaAny
d_txNetworkId_3134 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3136 :: T_TxBody_3066 -> Maybe Integer
d_curTreasury_3136 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txsize
d_txsize_3138 :: T_TxBody_3066 -> Integer
d_txsize_3138 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.txid
d_txid_3140 :: T_TxBody_3066 -> AgdaAny
d_txid_3140 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3142 ::
  T_TxBody_3066 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3142 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3144 :: T_TxBody_3066 -> [AgdaAny]
d_reqSigHash_3144 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3146 :: T_TxBody_3066 -> Maybe AgdaAny
d_scriptIntHash_3146 v0
  = case coe v0 of
      C_TxBody'46'constructor_19485 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3148 a0 = ()
data T_TxWitnesses_3148
  = C_TxWitnesses'46'constructor_20037 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3158 ::
  T_TxWitnesses_3148 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3158 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20037 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3160 ::
  T_TxWitnesses_3148 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3160 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20037 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3162 ::
  T_TxWitnesses_3148 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_3162 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20037 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3164 ::
  T_TxWitnesses_3148 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3164 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20037 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3166 ::
  T_TransactionStructure_24 ->
  T_TxWitnesses_3148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340]
d_scriptsP1_3166 ~v0 v1 = du_scriptsP1_3166 v1
du_scriptsP1_3166 ::
  T_TxWitnesses_3148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340]
du_scriptsP1_3166 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3160 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx
d_Tx_3168 a0 = ()
data T_Tx_3168
  = C_Tx'46'constructor_20229 T_TxBody_3066 T_TxWitnesses_3148 Bool
                              (Maybe AgdaAny)
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.body
d_body_3178 :: T_Tx_3168 -> T_TxBody_3066
d_body_3178 v0
  = case coe v0 of
      C_Tx'46'constructor_20229 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.wits
d_wits_3180 :: T_Tx_3168 -> T_TxWitnesses_3148
d_wits_3180 v0
  = case coe v0 of
      C_Tx'46'constructor_20229 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.isValid
d_isValid_3182 :: T_Tx_3168 -> Bool
d_isValid_3182 v0
  = case coe v0 of
      C_Tx'46'constructor_20229 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.Tx.txAD
d_txAD_3184 :: T_Tx_3168 -> Maybe AgdaAny
d_txAD_3184 v0
  = case coe v0 of
      C_Tx'46'constructor_20229 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.getValue
d_getValue_3186 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3186 ~v0 v1 = du_getValue_3186 v1
du_getValue_3186 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3186 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3190 :: T_TransactionStructure_24 -> ()
d_TxOut'688'_3190 = erased
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txOutHash
d_txOutHash_3192 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3192 v0 v1
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
                                          (d_scriptStructure_2118 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
                                                (coe d_crypto_1402 (coe v0))
                                                (coe d_epochStructure_1686 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                                                (coe d_scriptStructure_2118 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3202 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3202 ~v0 v1 = du_getValue'688'_3202 v1
du_getValue'688'_3202 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3202 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3206 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3206 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__704
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_1362 (coe v0))
               (coe d_DecEq'45'Ix_1360 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1184
               (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_108
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_3212 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3212 ~v0 v1 = du_scriptOuts_3212 v1
du_scriptOuts_3212 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3212 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
           (coe
              MAlonzo.Code.Ledger.Address.du_payCred_108
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txinsScript
d_txinsScript_3220 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3220 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__704
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_1362 (coe v0))
               (coe d_DecEq'45'Ix_1360 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_3212 (coe v2)))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.refScripts
d_refScripts_3226 ::
  T_TransactionStructure_24 ->
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3226 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_550
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe d_DecEq'45'TxId_1362 (coe v0))
                  (coe d_DecEq'45'Ix_1360 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_3108 (coe d_body_3178 (coe v1)))
               (coe d_refInputs_3110 (coe d_body_3178 (coe v1))))))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.collateral
d_collateral_3238 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3238 v0 ~v1 = du_collateral_3238 v0
du_collateral_3238 ::
  T_Tx_3168 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3238 v0
  = coe d_collateral_3142 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3240 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3240 v0 ~v1 = du_curTreasury_3240 v0
du_curTreasury_3240 :: T_Tx_3168 -> Maybe Integer
du_curTreasury_3240 v0
  = coe d_curTreasury_3136 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.mint
d_mint_3242 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3242 v0 ~v1 = du_mint_3242 v0
du_mint_3242 :: T_Tx_3168 -> AgdaAny
du_mint_3242 v0 = coe d_mint_3116 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.refInputs
d_refInputs_3244 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3244 v0 ~v1 = du_refInputs_3244 v0
du_refInputs_3244 ::
  T_Tx_3168 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3244 v0
  = coe d_refInputs_3110 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3246 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3246 v0 ~v1 = du_reqSigHash_3246 v0
du_reqSigHash_3246 :: T_Tx_3168 -> [AgdaAny]
du_reqSigHash_3246 v0
  = coe d_reqSigHash_3144 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3248 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3248 v0 ~v1 = du_scriptIntHash_3248 v0
du_scriptIntHash_3248 :: T_Tx_3168 -> Maybe AgdaAny
du_scriptIntHash_3248 v0
  = coe d_scriptIntHash_3146 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txADhash
d_txADhash_3250 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3250 v0 ~v1 = du_txADhash_3250 v0
du_txADhash_3250 :: T_Tx_3168 -> Maybe AgdaAny
du_txADhash_3250 v0
  = coe d_txADhash_3132 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3252 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3252 v0 ~v1 = du_txNetworkId_3252 v0
du_txNetworkId_3252 :: T_Tx_3168 -> Maybe AgdaAny
du_txNetworkId_3252 v0
  = coe d_txNetworkId_3134 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txcerts
d_txcerts_3254 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_3254 v0 ~v1 = du_txcerts_3254 v0
du_txcerts_3254 ::
  T_Tx_3168 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
du_txcerts_3254 v0 = coe d_txcerts_3120 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txdonation
d_txdonation_3256 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3256 v0 ~v1 = du_txdonation_3256 v0
du_txdonation_3256 :: T_Tx_3168 -> Integer
du_txdonation_3256 v0
  = coe d_txdonation_3128 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txfee
d_txfee_3258 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3258 v0 ~v1 = du_txfee_3258 v0
du_txfee_3258 :: T_Tx_3168 -> Integer
du_txfee_3258 v0 = coe d_txfee_3114 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txid
d_txid_3260 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3260 v0 ~v1 = du_txid_3260 v0
du_txid_3260 :: T_Tx_3168 -> AgdaAny
du_txid_3260 v0 = coe d_txid_3140 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txins
d_txins_3262 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3262 v0 ~v1 = du_txins_3262 v0
du_txins_3262 ::
  T_Tx_3168 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3262 v0 = coe d_txins_3108 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txouts
d_txouts_3264 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3264 v0 ~v1 = du_txouts_3264 v0
du_txouts_3264 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3264 v0 = coe d_txouts_3112 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txprop
d_txprop_3266 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_3266 v0 ~v1 = du_txprop_3266 v0
du_txprop_3266 ::
  T_Tx_3168 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
du_txprop_3266 v0 = coe d_txprop_3126 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txsize
d_txsize_3268 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_3268 v0 ~v1 = du_txsize_3268 v0
du_txsize_3268 :: T_Tx_3168 -> Integer
du_txsize_3268 v0 = coe d_txsize_3138 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txup
d_txup_3270 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3270 v0 ~v1 = du_txup_3270 v0
du_txup_3270 ::
  T_Tx_3168 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3270 v0 = coe d_txup_3130 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txvldt
d_txvldt_3272 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3272 v0 ~v1 = du_txvldt_3272 v0
du_txvldt_3272 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3272 v0 = coe d_txvldt_3118 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txvote
d_txvote_3274 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_3274 v0 ~v1 = du_txvote_3274 v0
du_txvote_3274 ::
  T_Tx_3168 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
du_txvote_3274 v0 = coe d_txvote_3124 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3276 ::
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3276 v0 ~v1 = du_txwdrls_3276 v0
du_txwdrls_3276 ::
  T_Tx_3168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3276 v0 = coe d_txwdrls_3122 (coe d_body_3178 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.txscripts
d_txscripts_3278 ::
  T_TransactionStructure_24 ->
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3278 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3160 (coe d_wits_3180 (coe v1)))
      (coe d_refScripts_3226 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3288 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3288 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe d_crypto_1402 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_3300 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1680
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe du_m_3300 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure._.m
d_m_3300 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3300 v0 ~v1 v2 v3 = du_m_3300 v0 v2 v3
du_m_3300 ::
  T_TransactionStructure_24 ->
  T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3300 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
         (d_scriptStructure_2118 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
               (coe d_crypto_1402 (coe v0)) (coe d_epochStructure_1686 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
               (coe d_scriptStructure_2118 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1402 (coe v0)))
      (coe d_txscripts_3278 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.isP2Script
d_isP2Script_3302 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_3302 ~v0 v1 = du_isP2Script_3302 v1
du_isP2Script_3302 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_3302 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Conway.Conformance.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3304 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3304 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
              (d_tokenAlgebra_2566 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
