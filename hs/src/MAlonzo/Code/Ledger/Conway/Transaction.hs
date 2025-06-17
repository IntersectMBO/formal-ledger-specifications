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

module MAlonzo.Code.Ledger.Conway.Transaction where

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
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Transaction.Tag
d_Tag_6 = ()
data T_Tag_6
  = C_Spend_8 | C_Mint_10 | C_Cert_12 | C_Rewrd_14 | C_Vote_16 |
    C_Propose_18
-- Ledger.Conway.Transaction.DecEq-Tag
d_DecEq'45'Tag_20 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_20
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_8
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Mint_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Mint_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Cert_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Cert_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_12
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Rewrd_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Rewrd_14
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_14
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Vote_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Vote_16
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_16
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Propose_18
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Propose_18
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_18
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Transaction.TransactionStructure
d_TransactionStructure_22 = ()
data T_TransactionStructure_22
  = C_TransactionStructure'46'constructor_14695 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
                                                MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
                                                MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
                                                MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516
                                                MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
                                                (AgdaAny -> AgdaAny)
-- Ledger.Conway.Transaction._.THash
d_THash_92 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 -> ()
d_THash_92 = erased
-- Ledger.Conway.Transaction._.Ser
d_Ser_100 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 -> ()
d_Ser_100 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra
d_TokenAlgebra_128 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__136 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__136 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_138 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_140 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.Value
d_Value_148 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_148 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_150 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coin
d_coin_154 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_154 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_158 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_160 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_160 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.inject
d_inject_162 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_162 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.policies
d_policies_166 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [AgdaAny]
d_policies_166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.size
d_size_170 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_170 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Ix
d_Ix_1246 :: T_TransactionStructure_22 -> ()
d_Ix_1246 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxId
d_TxId_1248 :: T_TransactionStructure_22 -> ()
d_TxId_1248 = erased
-- Ledger.Conway.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1250 :: T_TransactionStructure_22 -> ()
d_AuxiliaryData_1250 = erased
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1252 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1252 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1254 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1254 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1256 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_adHashingScheme_1256 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1260 :: T_TransactionStructure_22 -> ()
d_THash_1260 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1262 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
      (coe d_adHashingScheme_1256 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1264 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
      (coe d_adHashingScheme_1256 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1266 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
      (coe d_adHashingScheme_1256 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1268 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
      (coe d_adHashingScheme_1256 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.globalConstants
d_globalConstants_1270 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1270 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1274 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1276 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Network
d_Network_1278 :: T_TransactionStructure_22 -> ()
d_Network_1278 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1280 :: T_TransactionStructure_22 -> AgdaAny
d_NetworkId_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1282 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_300
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1284 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1286 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Positive'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Quorum
d_Quorum_1288 :: T_TransactionStructure_22 -> Integer
d_Quorum_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1290 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1292 :: T_TransactionStructure_22 -> Integer
d_SlotsPerEpoch'7580'_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1294 ::
  T_TransactionStructure_22 -> Integer
d_StabilityWindow'7580'_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1296 ::
  T_TransactionStructure_22 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1296 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1298 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_314
      (coe d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.crypto
d_crypto_1300 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_1300 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1304 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1304 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1306 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_1300 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1308 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1308 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1310 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1310 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1312 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1312 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1314 :: T_TransactionStructure_22 -> ()
d_THash_1314 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1316 :: T_TransactionStructure_22 -> ()
d_KeyPair_1316 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.SKey
d_SKey_1318 :: T_TransactionStructure_22 -> ()
d_SKey_1318 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1320 :: T_TransactionStructure_22 -> ()
d_ScriptHash_1320 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Ser
d_Ser_1322 :: T_TransactionStructure_22 -> ()
d_Ser_1322 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1324 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_1300 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1326 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1326 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.Sig
d_Sig_1328 :: T_TransactionStructure_22 -> ()
d_Sig_1328 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1330 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1330 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.VKey
d_VKey_1332 :: T_TransactionStructure_22 -> ()
d_VKey_1332 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1334 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1334 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned
d_isSigned_1336 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1336 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1338 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1338 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.khs
d_khs_1340 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_1300 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.pkk
d_pkk_1342 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_1300 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sign
d_sign_1344 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1344 v0
  = let v1 = d_crypto_1300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1348 :: T_TransactionStructure_22 -> ()
d_MemoryEstimate_1348 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1350 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1354 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1354 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1356 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1356 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1358 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1358 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1360 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1362 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1364 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1366 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1368 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1370 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_1370 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1372 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1374 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1374 ~v0 = du_addValue_1374
du_addValue_1374 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1374
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1376 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_1376 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1378 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1378 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1380 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1382 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1382 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1384 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_1384 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1386 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1386 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1388 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [AgdaAny]
d_policies_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1390 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1390 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1392 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_1392 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1394 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1394 ~v0 = du_sum'7515'_1394
du_sum'7515'_1394 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1394
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1396 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny
d_ε_1396 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1400 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1406 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1408 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1412 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1414 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1418 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1418 ~v0 = du_isMagmaIsomorphism_1418
du_isMagmaIsomorphism_1418 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1418 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1420 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1420 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1420 v2
du_isMagmaMonomorphism_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1428 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1428 ~v0 ~v1 v2 = du_isRelIsomorphism_1428 v2
du_isRelIsomorphism_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1430 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1430 ~v0 ~v1 v2 = du_isRelMonomorphism_1430 v2
du_isRelMonomorphism_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1430 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1434 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1436 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1440 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1446 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1446 ~v0 = du_isMagmaMonomorphism_1446
du_isMagmaMonomorphism_1446 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1446 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1452 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1452 ~v0 ~v1 v2 = du_isRelMonomorphism_1452 v2
du_isRelMonomorphism_1452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1454 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1456 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Addr
d_Addr_1460 :: T_TransactionStructure_22 -> ()
d_Addr_1460 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1462 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1464 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Credential
d_Credential_1466 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1468 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1468 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1470 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1470 ~v0 = du_Dec'45'isScript_1470
du_Dec'45'isScript_1470 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1470
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1472 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1472 ~v0 = du_Dec'45'isVKey_1472
du_Dec'45'isVKey_1472 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1472
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1474 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1270 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1300 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1476 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1270 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1300 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1478 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1300 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1480 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1270 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1300 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1482 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1484 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1484 ~v0
  = du_HasCredential'45'RwdAddr_1484
du_HasCredential'45'RwdAddr_1484 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1484
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1486 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1488 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1488 ~v0
  = du_HasNetworkId'45'BaseAddr_1488
du_HasNetworkId'45'BaseAddr_1488 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1488
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1490 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1490 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1490
du_HasNetworkId'45'BootstrapAddr_1490 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1490
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1492 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1492 ~v0
  = du_HasNetworkId'45'RwdAddr_1492
du_HasNetworkId'45'RwdAddr_1492 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1492
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1498 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1498 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1500 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1504 :: T_TransactionStructure_22 -> ()
d_ScriptAddr_1504 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1506 :: T_TransactionStructure_22 -> ()
d_ScriptBaseAddr_1506 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1508 :: T_TransactionStructure_22 -> ()
d_ScriptBootstrapAddr_1508 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1512 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1512 ~v0 = du_Show'45'Credential_1512
du_Show'45'Credential_1512 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1512 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1514 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1514 ~v0
  = du_Show'45'Credential'215'Coin_1514
du_Show'45'Credential'215'Coin_1514 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1514 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1516 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1516 ~v0 = du_Show'45'RwdAddr_1516
du_Show'45'RwdAddr_1516 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1516
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1518 :: T_TransactionStructure_22 -> ()
d_VKeyAddr_1518 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1520 :: T_TransactionStructure_22 -> ()
d_VKeyBaseAddr_1520 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1522 :: T_TransactionStructure_22 -> ()
d_VKeyBootstrapAddr_1522 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1526 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1526 ~v0 = du_getScriptHash_1526
du_getScriptHash_1526 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1526
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1528 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1530 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1530 ~v0 = du_isBootstrapAddr'63'_1530
du_isBootstrapAddr'63'_1530 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1530
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1532 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1532 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1534 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1534 ~v0 = du_isKeyHashObj_1534
du_isKeyHashObj_1534 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1534
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1536 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1536 ~v0 = du_isKeyHashObj'7495'_1536
du_isKeyHashObj'7495'_1536 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1536
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Transaction.TransactionStructure._.isScript
d_isScript_1538 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1540 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1540 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1542 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1542 ~v0 = du_isScriptObj_1542
du_isScriptObj_1542 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1542
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1544 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1544 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isVKey
d_isVKey_1546 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1548 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1548 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.netId
d_netId_1550 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1550 ~v0 = du_netId_1550
du_netId_1550 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1550 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Transaction.TransactionStructure._.payCred
d_payCred_1552 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1552 ~v0 = du_payCred_1552
du_payCred_1552 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1552
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1554 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1554 ~v0 = du_stakeCred_1554
du_stakeCred_1554 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1554
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.net
d_net_1558 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1560 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1562 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1566 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1568 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1568 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1570 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1570 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1580 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1584 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1584 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.net
d_net_1588 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1588 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1590 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1590 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.epochStructure
d_epochStructure_1604 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_1604 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1608 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1610 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1612 ::
  T_TransactionStructure_22 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1612 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1614 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1616 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1618 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Epoch
d_Epoch_1620 :: T_TransactionStructure_22 -> ()
d_Epoch_1620 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1622 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1624 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Slot
d_Slot_1626 :: T_TransactionStructure_22 -> ()
d_Slot_1626 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1628 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1630 :: T_TransactionStructure_22 -> AgdaAny
d_StabilityWindow_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1632 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addSlot
d_addSlot_1634 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.epoch
d_epoch_1636 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_epoch_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1638 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_firstSlot_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1640 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1642 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_suc'7497'_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1644 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_ℕtoEpoch_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1648 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Script.T_Timelock_266 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'evalTimelock_324
      (coe d_crypto_1300 (coe v0)) (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1650 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Timelock_280
      (coe d_crypto_1300 (coe v0)) (coe d_epochStructure_1604 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1652 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1654 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1668 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Timelock
d_Timelock_1670 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1684 a0 a1 a2 a3 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1688 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1690 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1692 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1694 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 -> ()
d_P1Script_1694 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1696 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1696 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1700 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1700 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1702 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_CostModel_1702 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1704 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_T_1704 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1706 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_THash_1706 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1708 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1708 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1710 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Datum_1710 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1712 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1714 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1716 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1718 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1720 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1722 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1724 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1724 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1726 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1726 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1728 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1730 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_ExUnits_1730 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1732 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1734 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_LangDepView_1734 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1736 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Language_1736 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1738 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_PlutusScript_1738 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1740 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV1_1740 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1742 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV2_1742 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1744 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV3_1744 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1746 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Prices_1746 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1748 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Redeemer_1748 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1750 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1752 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1754 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1756 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1756 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1758 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1758 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1760 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1762 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny
d_language_1762 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_language_260 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1764 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  () -> AgdaAny -> AgdaAny
d_toData_1764 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_toData_264 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1766 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1766 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1770 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1770 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1772 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_CostModel_1772 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1774 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_T_1774 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1776 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_THash_1776 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1778 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1780 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Datum_1780 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1782 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1784 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1786 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1788 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1790 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1792 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1794 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1796 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1798 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1798 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1800 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1800 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1802 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1804 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_ExUnits_1804 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1806 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1808 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1810 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1810 ~v0 = du_Hashable'45'Script_1810
du_Hashable'45'Script_1810 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1810
  = coe MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1812 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_LangDepView_1812 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1814 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Language_1814 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1816 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_P1Script_1816 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1818 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_1818 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1820 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1822 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1824 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1826 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Prices_1826 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1828 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Redeemer_1828 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1830 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Script_1830 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1832 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1834 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1836 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1838 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1838 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1840 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1840 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1842 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1844 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1846 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1848 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1848 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1850 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1850 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1852 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1854 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1854 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1856 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1856 = erased
-- Ledger.Conway.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1886 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_scriptStructure_1886 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1890 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1890 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.CostModel
d_CostModel_1892 :: T_TransactionStructure_22 -> ()
d_CostModel_1892 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T
d_T_1894 :: T_TransactionStructure_22 -> ()
d_T_1894 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1896 :: T_TransactionStructure_22 -> ()
d_THash_1896 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1898 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Datum
d_Datum_1900 :: T_TransactionStructure_22 -> ()
d_Datum_1900 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1902 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1904 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1906 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1908 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1910 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1912 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1914 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1916 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1918 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1918 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1886 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1920 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1920 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1886 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1922 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1924 :: T_TransactionStructure_22 -> ()
d_ExUnits_1924 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1926 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1928 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1930 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1932 :: T_TransactionStructure_22 -> ()
d_LangDepView_1932 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Language
d_Language_1934 :: T_TransactionStructure_22 -> ()
d_Language_1934 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1Script
d_P1Script_1936 :: T_TransactionStructure_22 -> ()
d_P1Script_1936 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1938 :: T_TransactionStructure_22 -> ()
d_PlutusScript_1938 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1940 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV1_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1942 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV2_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1944 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV3_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Prices
d_Prices_1946 :: T_TransactionStructure_22 -> ()
d_Prices_1946 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1948 :: T_TransactionStructure_22 -> ()
d_Redeemer_1948 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Script
d_Script_1950 :: T_TransactionStructure_22 -> ()
d_Script_1950 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1952 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1954 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1956 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1958 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1958 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1886 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1960 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1960 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1886 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1962 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe d_scriptStructure_1886 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1964 ::
  T_TransactionStructure_22 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.language
d_language_1966 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_language_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.p1s
d_p1s_1968 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ps
d_ps_1970 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.toData
d_toData_1972 ::
  T_TransactionStructure_22 -> () -> AgdaAny -> AgdaAny
d_toData_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1886 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1974 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1974 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1976 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1976 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt
d_Acnt_1980 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1982 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1982 ~v0
  = du_DecEq'45'DrepThresholds_1982
du_DecEq'45'DrepThresholds_1982 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1982
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_588
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1984 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1984 ~v0 = du_DecEq'45'PParamGroup_1984
du_DecEq'45'PParamGroup_1984 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1984
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_594
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1986 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_592
      (coe d_epochStructure_1604 (coe v0))
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1988 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1988 ~v0
  = du_DecEq'45'PoolThresholds_1988
du_DecEq'45'PoolThresholds_1988 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1988
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_590
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1990 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams
d_GovParams_1994 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1998 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1998 ~v0 = du_HasCast'45'Acnt_1998
du_HasCast'45'Acnt_1998 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1998
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2000 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_2002 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_2004 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_2006 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
d_HasgovActionDeposit'45'PParams_2006 ~v0
  = du_HasgovActionDeposit'45'PParams_2006
du_HasgovActionDeposit'45'PParams_2006 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446
du_HasgovActionDeposit'45'PParams_2006
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_478
-- Ledger.Conway.Transaction.TransactionStructure._.Hasreserves
d_Hasreserves_2008 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_2010 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2014 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParams
d_PParams_2016 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2018 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2020 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_2020 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2022 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2024 :: T_TransactionStructure_22 -> ()
d_ProtVer_2024 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2028 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2028 ~v0 = du_Show'45'DrepThresholds_2028
du_Show'45'DrepThresholds_2028 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2028
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_596
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2030 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_600
      (coe d_epochStructure_1604 (coe v0))
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2032 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2032 ~v0 = du_Show'45'PoolThresholds_2032
du_Show'45'PoolThresholds_2032 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2032
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_598
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2034 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2034 ~v0 = du_Show'45'ProtVer_2034
du_Show'45'ProtVer_2034 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2034
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_472 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_2044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446 ->
  AgdaAny -> Integer
d_govActionDepositOf_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2046 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2046 ~v0 = du_paramsWF'45'elim_2046
du_paramsWF'45'elim_2046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2046 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_568 v2
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2048 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> ()
d_paramsWellFormed_2048 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2050 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> [Integer]
d_positivePParams_2050 ~v0 = du_positivePParams_2050
du_positivePParams_2050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> [Integer]
du_positivePParams_2050
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_480
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2052 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2054 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2054 ~v0 = du_pvCanFollow'63'_2054
du_pvCanFollow'63'_2054 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2054
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1436
-- Ledger.Conway.Transaction.TransactionStructure._.reservesOf
d_reservesOf_2056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_180 ->
  AgdaAny -> Integer
d_reservesOf_2056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_188 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_2058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_2058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_2064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_2066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2076 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2078 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2080 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2084 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2088 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1548 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 -> ()
d_UpdateT_2094 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484
d_ppUpd_2098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1508
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2102 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  AgdaAny -> ()
d_ppdWellFormed_2102 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_updateGroups_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1502
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_428 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_PParamsOf_2108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_436 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_464 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_472 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_446 ->
  AgdaAny -> Integer
d_govActionDepositOf_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_454
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Hasreserves.reservesOf
d_reservesOf_2120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_180 ->
  AgdaAny -> Integer
d_reservesOf_2120 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_188 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_2124 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2140 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_Emax_2140 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_398 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a
d_a_2142 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_a_2142 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_370 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a0
d_a0_2144 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2144 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_402 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.b
d_b_2146 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_b_2146 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_372 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2148 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMaxTermLength_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_414 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2150 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_ccMinSize_2150 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_412 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2152 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_coinsPerUTxOByte_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_382 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2154 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_collateralPercentage_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_404
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2156 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_costmdls_2156 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_406 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2158 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_drepActivity_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_422 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2160 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_drepDeposit_2160 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_420 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2162 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_410 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2164 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionDeposit_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_418 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2166 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_govActionLifetime_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_416 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2168 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_keyDeposit_2168 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_374 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2170 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxBlockExUnits_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_362 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2172 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxBlockSize_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_354 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2174 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxCollateralInputs_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_366
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2176 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxHeaderSize_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_358 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2178 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerBlock_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_390
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2180 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxRefScriptSizePerTx_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_388
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2182 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_maxTxExUnits_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_360 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2184 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxTxSize_2184 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_356 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2186 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_maxValSize_2186 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_364 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2188 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_386
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2190 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_minUTxOValue_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_396 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2192 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_378 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2194 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_nopt_2194 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_400 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2196 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> Integer
d_poolDeposit_2196 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_376 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2198 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_408 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.prices
d_prices_2200 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 -> AgdaAny
d_prices_2200 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_384 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.pv
d_pv_2202 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2202 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_368 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2204 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_394
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2206 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2208 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2208 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_380 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2212 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 -> ()
d_UpdateT_2212 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2214 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2216 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2216 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1508 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2218 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  AgdaAny -> ()
d_ppdWellFormed_2218 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2220 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_updateGroups_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1502 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2224 ::
  T_TransactionStructure_22 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2224 ~v0 = du__'63''8599'__2224
du__'63''8599'__2224 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2224 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1228 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2226 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1430
      (coe d_epochStructure_1604 (coe v0))
      (coe d_scriptStructure_1886 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2228 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2230 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyPParamsUpdate_2230 ~v0 = du_applyPParamsUpdate_2230
du_applyPParamsUpdate_2230 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_applyPParamsUpdate_2230
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1276
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2232 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_2232 ~v0 = du_modifiedUpdateGroups_2232
du_modifiedUpdateGroups_2232 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_2232
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1212
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2234 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesEconomicGroup_2234 ~v0 = du_modifiesEconomicGroup_2234
du_modifiesEconomicGroup_2234 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesEconomicGroup_2234
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_908
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2236 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesGovernanceGroup_2236 ~v0
  = du_modifiesGovernanceGroup_2236
du_modifiesGovernanceGroup_2236 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesGovernanceGroup_2236
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1060
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2238 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesNetworkGroup_2238 ~v0 = du_modifiesNetworkGroup_2238
du_modifiesNetworkGroup_2238 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesNetworkGroup_2238
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_832
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2240 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesSecurityGroup_2240 ~v0 = du_modifiesSecurityGroup_2240
du_modifiesSecurityGroup_2240 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesSecurityGroup_2240
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1136
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2242 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
d_modifiesTechnicalGroup_2242 ~v0 = du_modifiesTechnicalGroup_2242
du_modifiesTechnicalGroup_2242 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> Bool
du_modifiesTechnicalGroup_2242
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_984
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2244 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 -> ()
d_paramsUpdateWellFormed_2244 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2246 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2246 ~v0
  = du_paramsUpdateWellFormed'63'_2246
du_paramsUpdateWellFormed'63'_2246 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2246
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_828
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2248 ::
  T_TransactionStructure_22 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_2248 ~v0 = du_'8801''45'update_2248
du_'8801''45'update_2248 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_2248 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1242 v1
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2252 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_Emax_2252 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_722 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2254 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_a_2254 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_692 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2256 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2256 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_720 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2258 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_b_2258 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_694 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2260 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_ccMaxTermLength_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_744 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2262 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_ccMinSize_2262 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_742 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2264 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_coinsPerUTxOByte_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_704 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2266 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_collateralPercentage_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_726
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2268 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_costmdls_2268 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_728 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2270 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_drepActivity_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_740 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2272 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_drepDeposit_2272 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_738 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2274 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_218
d_drepThresholds_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_730 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2276 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_govActionDeposit_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_736 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2278 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_govActionLifetime_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_734 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2280 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_keyDeposit_2280 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_696 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2282 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_maxBlockExUnits_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_688 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2284 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxBlockSize_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_676 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2286 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxCollateralInputs_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_684
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2288 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxHeaderSize_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_680 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2290 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_712
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2292 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_710
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2294 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_maxTxExUnits_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_686 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2296 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxTxSize_2296 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_678 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2298 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_maxValSize_2298 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_682 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2300 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_708
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2302 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_minUTxOValue_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_718 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2304 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_700 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2306 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_nopt_2306 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_724 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2308 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe Integer
d_poolDeposit_2308 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_698 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2310 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260
d_poolThresholds_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_732 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2312 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe AgdaAny
d_prices_2312 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_706 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2314 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2314 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_690 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2316 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_716
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2318 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_714
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2320 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_604 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2320 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_702 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2324 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2324 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_272 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2326 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2326 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_274 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2328 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2328 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_276 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2330 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2330 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_278 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2332 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_260 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2332 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_280 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.govParams
d_govParams_2340 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1516
d_govParams_2340 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2344 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1548
      (coe d_govParams_2340 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2346 :: T_TransactionStructure_22 -> ()
d_UpdateT_2346 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2348 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_applyUpdate_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1500
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe d_govParams_2340 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2350 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1484
d_ppUpd_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
      (coe d_govParams_2340 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2352 ::
  T_TransactionStructure_22 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1508
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe d_govParams_2340 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2354 :: T_TransactionStructure_22 -> AgdaAny -> ()
d_ppdWellFormed_2354 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2356 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_206]
d_updateGroups_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1502
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1534
         (coe d_govParams_2340 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2358 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
d_tokenAlgebra_2358 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._∙_
d__'8729'__2362 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2362 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2358 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._._≈_
d__'8776'__2364 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2364 = erased
-- Ledger.Conway.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2366 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2366 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2368 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2370 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2372 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2374 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2376 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Value
d_Value_2378 :: T_TransactionStructure_22 -> ()
d_Value_2378 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2380 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addValue
d_addValue_2382 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin
d_coin_2384 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_coin_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2386 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2386 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2388 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2390 ::
  T_TransactionStructure_22 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2390 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.inject
d_inject_2392 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_inject_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.monoid
d_monoid_2394 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2394 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2358 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.policies
d_policies_2396 ::
  T_TransactionStructure_22 -> AgdaAny -> [AgdaAny]
d_policies_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2398 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2398 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                 (coe d_tokenAlgebra_2358 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.size
d_size_2400 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_size_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2402 ::
  T_TransactionStructure_22 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
      (coe d_tokenAlgebra_2358 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ε
d_ε_2404 :: T_TransactionStructure_22 -> AgdaAny
d_ε_2404 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2358 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2408 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2414 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2416 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2420 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2426 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2426 ~v0 = du_isMagmaIsomorphism_2426
du_isMagmaIsomorphism_2426 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2426 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2428 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2428 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2428 v2
du_isMagmaMonomorphism_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2436 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2436 ~v0 ~v1 v2 = du_isRelIsomorphism_2436 v2
du_isRelIsomorphism_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2438 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2438 ~v0 ~v1 v2 = du_isRelMonomorphism_2438 v2
du_isRelMonomorphism_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2438 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2442 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2444 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2448 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2454 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2454 ~v0 = du_isMagmaMonomorphism_2454
du_isMagmaMonomorphism_2454 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2454 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2460 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2460 ~v0 ~v1 v2 = du_isRelMonomorphism_2460 v2
du_isRelMonomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2462 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2464 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txidBytes
d_txidBytes_2466 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_txidBytes_2466 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14695 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.govStructure
d_govStructure_2468 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8
d_govStructure_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.GovStructure.C_GovStructure'46'constructor_3181
      (d_DecEq'45'TxId_1254 (coe v0)) (d_crypto_1300 (coe v0))
      (d_epochStructure_1604 (coe v0)) (d_scriptStructure_1886 (coe v0))
      (d_govParams_2340 (coe v0)) (d_globalConstants_1270 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2472 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2480 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2480 ~v0 = du_DecEq'45'GovActionType_2480
du_DecEq'45'GovActionType_2480 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2480
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_888
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2482 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2482 ~v0 = du_DecEq'45'GovRole_2482
du_DecEq'45'GovRole_2482 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2482
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_890
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2484 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
      (coe d_govStructure_2468 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2486 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2486 ~v0 = du_DecEq'45'Vote_2486
du_DecEq'45'Vote_2486 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2486
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_892
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2488 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2490 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  ()
d_GovActionData_2490 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2492 :: T_TransactionStructure_22 -> ()
d_GovActionID_2492 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2494 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2496 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2498 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2500 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2502 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2504 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2504 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2504
du_HasCast'45'GovAction'45'Sigma_2504 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2504
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_798
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2506 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2506 ~v0 = du_HasCast'45'GovVote_2506
du_HasCast'45'GovVote_2506 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2506
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_896
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2508 ::
  T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2508 ~v0
  = du_HasCast'45'HashProtected_2508
du_HasCast'45'HashProtected_2508 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_810
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2510 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2510 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2510
du_HasCast'45'HashProtected'45'MaybeScriptHash_2510 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2510
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_812
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2512 :: T_TransactionStructure_22 -> () -> ()
d_HashProtected_2512 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2516 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768 ->
  ()
d_NeedsHash_2516 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2530 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2532 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2534 :: T_TransactionStructure_22 -> ()
d_Voter_2534 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_2542 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  AgdaAny
d_gaData_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_794 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_2544 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768
d_gaType_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_792 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2546 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_2546 ~v0 = du_getDRepVote_2546
du_getDRepVote_2546 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getDRepVote_2546
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_898
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2552 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_2552 ~v0 = du_proposedCC_2552
du_proposedCC_2552 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_proposedCC_2552
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_902
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2560 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_758 ->
  AgdaAny
d_hash_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_766 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2562 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_758 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_764 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_2566 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  AgdaAny
d_gaData_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_794 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_2568 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_768
d_gaType_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_792 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2572 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_866 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786
d_action_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_884 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2574 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_866 ->
  AgdaAny
d_expiresIn_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_882
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2576 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_866 ->
  AgdaAny
d_prevAction_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_886
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2578 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_866 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_880
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2580 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_878 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2600 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_786
d_action_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_854 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2602 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_758
d_anchor_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_864 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2604 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  Integer
d_deposit_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_860 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2606 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  Maybe AgdaAny
d_policy_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_858 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2608 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  AgdaAny
d_prevAction_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_856
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2610 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_862
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2622 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_758
d_anchor_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_838 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2624 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_832 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2626 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_814
d_vote_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_836 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2628 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_834 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DCert
d_DCert_2676 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2764 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2808 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2808 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1078 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_2954 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2954 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1078 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxIn
d_TxIn_2974 :: T_TransactionStructure_22 -> ()
d_TxIn_2974 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxOut
d_TxOut_2976 :: T_TransactionStructure_22 -> ()
d_TxOut_2976 = erased
-- Ledger.Conway.Transaction.TransactionStructure.UTxO
d_UTxO_2978 :: T_TransactionStructure_22 -> ()
d_UTxO_2978 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Wdrl
d_Wdrl_2980 :: T_TransactionStructure_22 -> ()
d_Wdrl_2980 = erased
-- Ledger.Conway.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2982 :: T_TransactionStructure_22 -> ()
d_RdmrPtr_2982 = erased
-- Ledger.Conway.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2984 :: T_TransactionStructure_22 -> ()
d_ProposedPPUpdates_2984 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Update
d_Update_2986 :: T_TransactionStructure_22 -> ()
d_Update_2986 = erased
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_2992 a0 a1 a2 = ()
newtype T_HasUTxO_2992
  = C_HasUTxO'46'constructor_18617 (AgdaAny ->
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3000 ::
  T_HasUTxO_2992 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3000 v0
  = case coe v0 of
      C_HasUTxO'46'constructor_18617 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3004 ::
  T_HasUTxO_2992 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3004 v0 = coe d_UTxOOf_3000 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody
d_TxBody_3006 a0 = ()
data T_TxBody_3006
  = C_TxBody'46'constructor_19843 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
                                  Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                  (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txins
d_txins_3048 ::
  T_TxBody_3006 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3048 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3050 ::
  T_TxBody_3006 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3050 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txouts
d_txouts_3052 ::
  T_TxBody_3006 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3052 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txfee
d_txfee_3054 :: T_TxBody_3006 -> Integer
d_txfee_3054 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.mint
d_mint_3056 :: T_TxBody_3006 -> AgdaAny
d_mint_3056 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3058 ::
  T_TxBody_3006 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3058 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3060 ::
  T_TxBody_3006 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcerts_3060 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3062 ::
  T_TxBody_3006 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3062 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3064 ::
  T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
d_txvote_3064 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3066 ::
  T_TxBody_3006 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
d_txprop_3066 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3068 :: T_TxBody_3006 -> Integer
d_txdonation_3068 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txup
d_txup_3070 ::
  T_TxBody_3006 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3070 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3072 :: T_TxBody_3006 -> Maybe AgdaAny
d_txADhash_3072 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3074 :: T_TxBody_3006 -> Maybe AgdaAny
d_txNetworkId_3074 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3076 :: T_TxBody_3006 -> Maybe Integer
d_curTreasury_3076 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txsize
d_txsize_3078 :: T_TxBody_3006 -> Integer
d_txsize_3078 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txid
d_txid_3080 :: T_TxBody_3006 -> AgdaAny
d_txid_3080 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3082 ::
  T_TxBody_3006 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3082 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3084 :: T_TxBody_3006 -> [AgdaAny]
d_reqSigHash_3084 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3086 :: T_TxBody_3006 -> Maybe AgdaAny
d_scriptIntHash_3086 v0
  = case coe v0 of
      C_TxBody'46'constructor_19843 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3092 a0 a1 a2 = ()
newtype T_HasTxBody_3092
  = C_HasTxBody'46'constructor_20329 (AgdaAny -> T_TxBody_3006)
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3100 :: T_HasTxBody_3092 -> AgdaAny -> T_TxBody_3006
d_TxBodyOf_3100 v0
  = case coe v0 of
      C_HasTxBody'46'constructor_20329 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3104 :: T_HasTxBody_3092 -> AgdaAny -> T_TxBody_3006
d_TxBodyOf_3104 v0 = coe d_TxBodyOf_3100 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3110 a0 a1 a2 = ()
newtype T_Hastxfee_3110
  = C_Hastxfee'46'constructor_20375 (AgdaAny -> Integer)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3118 :: T_Hastxfee_3110 -> AgdaAny -> Integer
d_txfeeOf_3118 v0
  = case coe v0 of
      C_Hastxfee'46'constructor_20375 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3122 :: T_Hastxfee_3110 -> AgdaAny -> Integer
d_txfeeOf_3122 v0 = coe d_txfeeOf_3118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3128 a0 a1 a2 = ()
newtype T_Hastxcerts_3128
  = C_Hastxcerts'46'constructor_20441 (AgdaAny ->
                                       [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3136 ::
  T_Hastxcerts_3128 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcertsOf_3136 v0
  = case coe v0 of
      C_Hastxcerts'46'constructor_20441 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3140 ::
  T_Hastxcerts_3128 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcertsOf_3140 v0 = coe d_txcertsOf_3136 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3146 a0 a1 a2 = ()
newtype T_Hastxprop_3146
  = C_Hastxprop'46'constructor_20507 (AgdaAny ->
                                      [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3154 ::
  T_Hastxprop_3146 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
d_txpropOf_3154 v0
  = case coe v0 of
      C_Hastxprop'46'constructor_20507 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3158 ::
  T_Hastxprop_3146 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
d_txpropOf_3158 v0 = coe d_txpropOf_3154 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid
d_Hastxid_3164 a0 a1 a2 = ()
newtype T_Hastxid_3164
  = C_Hastxid'46'constructor_20553 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3172 :: T_Hastxid_3164 -> AgdaAny -> AgdaAny
d_txidOf_3172 v0
  = case coe v0 of
      C_Hastxid'46'constructor_20553 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txidOf
d_txidOf_3176 :: T_Hastxid_3164 -> AgdaAny -> AgdaAny
d_txidOf_3176 v0 = coe d_txidOf_3172 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3178 a0 = ()
data T_TxWitnesses_3178
  = C_TxWitnesses'46'constructor_20665 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3188 ::
  T_TxWitnesses_3178 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3188 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20665 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3190 ::
  T_TxWitnesses_3178 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3190 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20665 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3192 ::
  T_TxWitnesses_3178 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_3192 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20665 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3194 ::
  T_TxWitnesses_3178 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3194 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20665 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3196 ::
  T_TransactionStructure_22 -> T_TxWitnesses_3178 -> [AgdaAny]
d_scriptsP1_3196 ~v0 v1 = du_scriptsP1_3196 v1
du_scriptsP1_3196 :: T_TxWitnesses_3178 -> [AgdaAny]
du_scriptsP1_3196 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3190 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.Tx
d_Tx_3198 a0 = ()
data T_Tx_3198
  = C_Tx'46'constructor_20857 T_TxBody_3006 T_TxWitnesses_3178 Bool
                              (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Tx.body
d_body_3208 :: T_Tx_3198 -> T_TxBody_3006
d_body_3208 v0
  = case coe v0 of
      C_Tx'46'constructor_20857 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.wits
d_wits_3210 :: T_Tx_3198 -> T_TxWitnesses_3178
d_wits_3210 v0
  = case coe v0 of
      C_Tx'46'constructor_20857 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.isValid
d_isValid_3212 :: T_Tx_3198 -> Bool
d_isValid_3212 v0
  = case coe v0 of
      C_Tx'46'constructor_20857 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.txAD
d_txAD_3214 :: T_Tx_3198 -> Maybe AgdaAny
d_txAD_3214 v0
  = case coe v0 of
      C_Tx'46'constructor_20857 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3216 ::
  T_TransactionStructure_22 -> T_HasTxBody_3092
d_HasTxBody'45'Tx_3216 ~v0 = du_HasTxBody'45'Tx_3216
du_HasTxBody'45'Tx_3216 :: T_HasTxBody_3092
du_HasTxBody'45'Tx_3216
  = coe
      C_HasTxBody'46'constructor_20329
      (coe (\ v0 -> d_body_3208 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3218 ::
  T_TransactionStructure_22 -> T_Hastxfee_3110
d_Hastxfee'45'Tx_3218 ~v0 = du_Hastxfee'45'Tx_3218
du_Hastxfee'45'Tx_3218 :: T_Hastxfee_3110
du_Hastxfee'45'Tx_3218
  = coe
      C_Hastxfee'46'constructor_20375
      (coe (\ v0 -> d_txfee_3054 (coe d_body_3208 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3220 ::
  T_TransactionStructure_22 -> T_Hastxcerts_3128
d_Hastxcerts'45'Tx_3220 ~v0 = du_Hastxcerts'45'Tx_3220
du_Hastxcerts'45'Tx_3220 :: T_Hastxcerts_3128
du_Hastxcerts'45'Tx_3220
  = coe
      C_Hastxcerts'46'constructor_20441
      (coe (\ v0 -> d_txcerts_3060 (coe d_body_3208 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3222 ::
  T_TransactionStructure_22 -> T_Hastxprop_3146
d_Hastxprop'45'Tx_3222 ~v0 = du_Hastxprop'45'Tx_3222
du_Hastxprop'45'Tx_3222 :: T_Hastxprop_3146
du_Hastxprop'45'Tx_3222
  = coe
      C_Hastxprop'46'constructor_20507
      (coe (\ v0 -> d_txprop_3066 (coe d_body_3208 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3224 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1070
d_HasWdrls'45'TxBody_3224 ~v0 = du_HasWdrls'45'TxBody_3224
du_HasWdrls'45'TxBody_3224 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1070
du_HasWdrls'45'TxBody_3224
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18111
      (coe (\ v0 -> d_txwdrls_3062 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3226 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1070
d_HasWdrls'45'Tx_3226 ~v0 = du_HasWdrls'45'Tx_3226
du_HasWdrls'45'Tx_3226 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1070
du_HasWdrls'45'Tx_3226
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18111
      (coe (\ v0 -> d_txwdrls_3062 (coe d_body_3208 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3228 :: T_TransactionStructure_22 -> T_Hastxid_3164
d_Hastxid'45'Tx_3228 ~v0 = du_Hastxid'45'Tx_3228
du_Hastxid'45'Tx_3228 :: T_Hastxid_3164
du_Hastxid'45'Tx_3228
  = coe
      C_Hastxid'46'constructor_20553
      (coe (\ v0 -> d_txid_3080 (coe d_body_3208 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.getValue
d_getValue_3230 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3230 ~v0 v1 = du_getValue_3230 v1
du_getValue_3230 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3230 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3234 :: T_TransactionStructure_22 -> ()
d_TxOut'688'_3234 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txOutHash
d_txOutHash_3236 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3236 v0 v1
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
                                          MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
                                          (d_scriptStructure_1886 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                                                (coe d_scriptStructure_1886 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe d_scriptStructure_1886 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3246 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3246 ~v0 v1 = du_getValue'688'_3246 v1
du_getValue'688'_3246 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3246 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3250 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3250 v0 v1 v2
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe d_DecEq'45'TxId_1254 (coe v0))
               (coe d_DecEq'45'Ix_1252 (coe v0))))
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
                       MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
                       (coe
                          MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Conway.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_3256 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3256 ~v0 v1 = du_scriptOuts_3256 v1
du_scriptOuts_3256 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3256 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
           (coe
              MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Conway.Transaction.TransactionStructure.txinsScript
d_txinsScript_3264 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3264 v0 v1 v2
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe d_DecEq'45'TxId_1254 (coe v0))
               (coe d_DecEq'45'Ix_1252 (coe v0))))
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
               (coe du_scriptOuts_3256 (coe v2)))))
-- Ledger.Conway.Transaction.TransactionStructure.refScripts
d_refScripts_3270 ::
  T_TransactionStructure_22 ->
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3270 v0 v1 v2
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
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe d_DecEq'45'TxId_1254 (coe v0))
                  (coe d_DecEq'45'Ix_1252 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_3048 (coe d_body_3208 (coe v1)))
               (coe d_refInputs_3050 (coe d_body_3208 (coe v1))))))
-- Ledger.Conway.Transaction.TransactionStructure._._.collateral
d_collateral_3282 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3282 v0 ~v1 = du_collateral_3282 v0
du_collateral_3282 ::
  T_Tx_3198 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3282 v0
  = coe d_collateral_3082 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3284 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3284 v0 ~v1 = du_curTreasury_3284 v0
du_curTreasury_3284 :: T_Tx_3198 -> Maybe Integer
du_curTreasury_3284 v0
  = coe d_curTreasury_3076 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.mint
d_mint_3286 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3286 v0 ~v1 = du_mint_3286 v0
du_mint_3286 :: T_Tx_3198 -> AgdaAny
du_mint_3286 v0 = coe d_mint_3056 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.refInputs
d_refInputs_3288 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3288 v0 ~v1 = du_refInputs_3288 v0
du_refInputs_3288 ::
  T_Tx_3198 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3288 v0
  = coe d_refInputs_3050 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3290 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3290 v0 ~v1 = du_reqSigHash_3290 v0
du_reqSigHash_3290 :: T_Tx_3198 -> [AgdaAny]
du_reqSigHash_3290 v0
  = coe d_reqSigHash_3084 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3292 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3292 v0 ~v1 = du_scriptIntHash_3292 v0
du_scriptIntHash_3292 :: T_Tx_3198 -> Maybe AgdaAny
du_scriptIntHash_3292 v0
  = coe d_scriptIntHash_3086 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txADhash
d_txADhash_3294 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3294 v0 ~v1 = du_txADhash_3294 v0
du_txADhash_3294 :: T_Tx_3198 -> Maybe AgdaAny
du_txADhash_3294 v0
  = coe d_txADhash_3072 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3296 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3296 v0 ~v1 = du_txNetworkId_3296 v0
du_txNetworkId_3296 :: T_Tx_3198 -> Maybe AgdaAny
du_txNetworkId_3296 v0
  = coe d_txNetworkId_3074 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txcerts
d_txcerts_3298 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcerts_3298 v0 ~v1 = du_txcerts_3298 v0
du_txcerts_3298 ::
  T_Tx_3198 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
du_txcerts_3298 v0 = coe d_txcerts_3060 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txdonation
d_txdonation_3300 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3300 v0 ~v1 = du_txdonation_3300 v0
du_txdonation_3300 :: T_Tx_3198 -> Integer
du_txdonation_3300 v0
  = coe d_txdonation_3068 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txfee
d_txfee_3302 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3302 v0 ~v1 = du_txfee_3302 v0
du_txfee_3302 :: T_Tx_3198 -> Integer
du_txfee_3302 v0 = coe d_txfee_3054 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txid
d_txid_3304 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3304 v0 ~v1 = du_txid_3304 v0
du_txid_3304 :: T_Tx_3198 -> AgdaAny
du_txid_3304 v0 = coe d_txid_3080 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txins
d_txins_3306 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3306 v0 ~v1 = du_txins_3306 v0
du_txins_3306 ::
  T_Tx_3198 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3306 v0 = coe d_txins_3048 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txouts
d_txouts_3308 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3308 v0 ~v1 = du_txouts_3308 v0
du_txouts_3308 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3308 v0 = coe d_txouts_3052 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txprop
d_txprop_3310 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
d_txprop_3310 v0 ~v1 = du_txprop_3310 v0
du_txprop_3310 ::
  T_Tx_3198 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_840]
du_txprop_3310 v0 = coe d_txprop_3066 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txsize
d_txsize_3312 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_3312 v0 ~v1 = du_txsize_3312 v0
du_txsize_3312 :: T_Tx_3198 -> Integer
du_txsize_3312 v0 = coe d_txsize_3078 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txup
d_txup_3314 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3314 v0 ~v1 = du_txup_3314 v0
du_txup_3314 ::
  T_Tx_3198 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3314 v0 = coe d_txup_3070 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvldt
d_txvldt_3316 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3316 v0 ~v1 = du_txvldt_3316 v0
du_txvldt_3316 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3316 v0 = coe d_txvldt_3058 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvote
d_txvote_3318 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
d_txvote_3318 v0 ~v1 = du_txvote_3318 v0
du_txvote_3318 ::
  T_Tx_3198 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
du_txvote_3318 v0 = coe d_txvote_3064 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3320 ::
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3320 v0 ~v1 = du_txwdrls_3320 v0
du_txwdrls_3320 ::
  T_Tx_3198 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3320 v0 = coe d_txwdrls_3062 (coe d_body_3208 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.txscripts
d_txscripts_3322 ::
  T_TransactionStructure_22 ->
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3322 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3190 (coe d_wits_3210 (coe v1)))
      (coe d_refScripts_3270 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3332 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3332 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe d_crypto_1300 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_3344 (coe v0) (coe v2) (coe v3)))))
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
                 (coe du_m_3344 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Transaction.TransactionStructure._.m
d_m_3344 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3344 v0 ~v1 v2 v3 = du_m_3344 v0 v2 v3
du_m_3344 ::
  T_TransactionStructure_22 ->
  T_Tx_3198 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3344 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_70
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1300 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.Hashable.d_hash_16
               (coe
                  MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
                  (d_scriptStructure_1886 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                        (coe d_scriptStructure_1886 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                        (coe d_scriptStructure_1886 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3322 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Transaction.TransactionStructure.isP2Script
d_isP2Script_3346 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3346 = erased
-- Ledger.Conway.Transaction.TransactionStructure.isP2Script?
d_isP2Script'63'_3350 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3350 ~v0 v1 = du_isP2Script'63'_3350 v1
du_isP2Script'63'_3350 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3350 v0
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
-- Ledger.Conway.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3356 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3356 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
              (d_tokenAlgebra_2358 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
