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
import qualified MAlonzo.Code.Data.List.Base
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
  = C_TransactionStructure'46'constructor_14613 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
                                                MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
                                                MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
                                                MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
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
d_Ix_1240 :: T_TransactionStructure_22 -> ()
d_Ix_1240 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxId
d_TxId_1242 :: T_TransactionStructure_22 -> ()
d_TxId_1242 = erased
-- Ledger.Conway.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1244 :: T_TransactionStructure_22 -> ()
d_AuxiliaryData_1244 = erased
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1246 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1246 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1248 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1248 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1250 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_adHashingScheme_1250 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1254 :: T_TransactionStructure_22 -> ()
d_THash_1254 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1256 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
      (coe d_adHashingScheme_1250 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1258 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
      (coe d_adHashingScheme_1250 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1260 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
      (coe d_adHashingScheme_1250 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1262 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
      (coe d_adHashingScheme_1250 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.globalConstants
d_globalConstants_1264 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1264 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1268 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1270 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Network
d_Network_1272 :: T_TransactionStructure_22 -> ()
d_Network_1272 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1274 :: T_TransactionStructure_22 -> AgdaAny
d_NetworkId_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1276 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_300
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1278 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1280 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Positive'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Quorum
d_Quorum_1282 :: T_TransactionStructure_22 -> Integer
d_Quorum_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1284 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1286 :: T_TransactionStructure_22 -> Integer
d_SlotsPerEpoch'7580'_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1288 ::
  T_TransactionStructure_22 -> Integer
d_StabilityWindow'7580'_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1290 ::
  T_TransactionStructure_22 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1290 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1292 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_314
      (coe d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.crypto
d_crypto_1294 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_1294 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1298 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1298 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1300 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_1294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1302 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1302 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1304 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1304 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1306 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1306 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1308 :: T_TransactionStructure_22 -> ()
d_THash_1308 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1310 :: T_TransactionStructure_22 -> ()
d_KeyPair_1310 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.SKey
d_SKey_1312 :: T_TransactionStructure_22 -> ()
d_SKey_1312 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1314 :: T_TransactionStructure_22 -> ()
d_ScriptHash_1314 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Ser
d_Ser_1316 :: T_TransactionStructure_22 -> ()
d_Ser_1316 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1318 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_1294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1320 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1320 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.Sig
d_Sig_1322 :: T_TransactionStructure_22 -> ()
d_Sig_1322 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1324 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1324 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.VKey
d_VKey_1326 :: T_TransactionStructure_22 -> ()
d_VKey_1326 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1328 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1328 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned
d_isSigned_1330 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1330 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1332 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1332 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.khs
d_khs_1334 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_1294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.pkk
d_pkk_1336 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_1294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sign
d_sign_1338 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1338 v0
  = let v1 = d_crypto_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1342 :: T_TransactionStructure_22 -> ()
d_MemoryEstimate_1342 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1344 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1348 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1348 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1350 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1350 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1352 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1352 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1354 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1356 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1358 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1360 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1362 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1364 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_1364 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1366 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1368 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1368 ~v0 = du_addValue_1368
du_addValue_1368 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1368
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1370 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_1370 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1372 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1372 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1374 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1376 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1376 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1378 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_1378 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1380 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1380 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1382 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [AgdaAny]
d_policies_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1384 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1384 v0
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
d_size_1386 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_1386 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1388 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1388 ~v0 = du_sum'7515'_1388
du_sum'7515'_1388 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1388
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1390 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny
d_ε_1390 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1394 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1398 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1400 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1402 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1406 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1408 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1412 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1412 ~v0 = du_isMagmaIsomorphism_1412
du_isMagmaIsomorphism_1412 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1412 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1414 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1414 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1414 v2
du_isMagmaMonomorphism_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1414 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1420 v0
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
d_isRelIsomorphism_1422 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1422 ~v0 ~v1 v2 = du_isRelIsomorphism_1422 v2
du_isRelIsomorphism_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1424 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1424 ~v0 ~v1 v2 = du_isRelMonomorphism_1424 v2
du_isRelMonomorphism_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1424 v0
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
d_surjective_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1428 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1430 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1434 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1440 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1440 ~v0 = du_isMagmaMonomorphism_1440
du_isMagmaMonomorphism_1440 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1440 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1446 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1446 ~v0 ~v1 v2 = du_isRelMonomorphism_1446 v2
du_isRelMonomorphism_1446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1448 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1450 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Addr
d_Addr_1454 :: T_TransactionStructure_22 -> ()
d_Addr_1454 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1456 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1458 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Credential
d_Credential_1460 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1462 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1462 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1464 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1464 ~v0 = du_Dec'45'isScript_1464
du_Dec'45'isScript_1464 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1464
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1466 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1466 ~v0 = du_Dec'45'isVKey_1466
du_Dec'45'isVKey_1466 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1466
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1468 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1264 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1294 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1470 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1264 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1294 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1472 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1294 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1474 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1264 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1294 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1476 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1478 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1478 ~v0
  = du_HasCredential'45'RwdAddr_1478
du_HasCredential'45'RwdAddr_1478 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1478
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1480 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1482 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1482 ~v0
  = du_HasNetworkId'45'BaseAddr_1482
du_HasNetworkId'45'BaseAddr_1482 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1482
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1484 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1484 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1484
du_HasNetworkId'45'BootstrapAddr_1484 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1484
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1486 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1486 ~v0
  = du_HasNetworkId'45'RwdAddr_1486
du_HasNetworkId'45'RwdAddr_1486 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1486
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1492 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1492 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1494 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1498 :: T_TransactionStructure_22 -> ()
d_ScriptAddr_1498 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1500 :: T_TransactionStructure_22 -> ()
d_ScriptBaseAddr_1500 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1502 :: T_TransactionStructure_22 -> ()
d_ScriptBootstrapAddr_1502 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1506 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1506 ~v0 = du_Show'45'Credential_1506
du_Show'45'Credential_1506 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1506 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1508 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1508 ~v0
  = du_Show'45'Credential'215'Coin_1508
du_Show'45'Credential'215'Coin_1508 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1508 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1510 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1510 ~v0 = du_Show'45'RwdAddr_1510
du_Show'45'RwdAddr_1510 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1510
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1512 :: T_TransactionStructure_22 -> ()
d_VKeyAddr_1512 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1514 :: T_TransactionStructure_22 -> ()
d_VKeyBaseAddr_1514 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1516 :: T_TransactionStructure_22 -> ()
d_VKeyBootstrapAddr_1516 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1520 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1520 ~v0 = du_getScriptHash_1520
du_getScriptHash_1520 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1520
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1522 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1524 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1524 ~v0 = du_isBootstrapAddr'63'_1524
du_isBootstrapAddr'63'_1524 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1524
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1526 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1526 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1528 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1528 ~v0 = du_isKeyHashObj_1528
du_isKeyHashObj_1528 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1528
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1530 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1530 ~v0 = du_isKeyHashObj'7495'_1530
du_isKeyHashObj'7495'_1530 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1530
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Transaction.TransactionStructure._.isScript
d_isScript_1532 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1534 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1534 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1536 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1536 ~v0 = du_isScriptObj_1536
du_isScriptObj_1536 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1536
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1538 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1538 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isVKey
d_isVKey_1540 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1542 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1542 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.netId
d_netId_1544 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1544 ~v0 = du_netId_1544
du_netId_1544 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1544 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Transaction.TransactionStructure._.payCred
d_payCred_1546 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1546 ~v0 = du_payCred_1546
du_payCred_1546 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1546
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1548 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1548 ~v0 = du_stakeCred_1548
du_stakeCred_1548 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1548
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.net
d_net_1552 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1554 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1556 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1560 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1562 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1564 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1574 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1578 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.net
d_net_1582 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1582 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1584 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1584 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.epochStructure
d_epochStructure_1598 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_1598 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1602 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1604 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1606 ::
  T_TransactionStructure_22 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1606 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1608 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1610 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1612 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Epoch
d_Epoch_1614 :: T_TransactionStructure_22 -> ()
d_Epoch_1614 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1616 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1618 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Slot
d_Slot_1620 :: T_TransactionStructure_22 -> ()
d_Slot_1620 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1622 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1624 :: T_TransactionStructure_22 -> AgdaAny
d_StabilityWindow_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1626 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addSlot
d_addSlot_1628 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.epoch
d_epoch_1630 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_epoch_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1632 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_firstSlot_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1634 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1636 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_suc'7497'_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1638 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_ℕtoEpoch_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1642 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Script.T_Timelock_266 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'evalTimelock_324
      (coe d_crypto_1294 (coe v0)) (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1644 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Timelock_280
      (coe d_crypto_1294 (coe v0)) (coe d_epochStructure_1598 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1646 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1648 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1662 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Timelock
d_Timelock_1664 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1678 a0 a1 a2 a3 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1682 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1684 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1686 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1688 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 -> ()
d_P1Script_1688 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1690 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1690 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1694 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1694 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1696 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_CostModel_1696 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1698 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_T_1698 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1700 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_THash_1700 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1702 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1702 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1704 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Datum_1704 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1706 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1708 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1710 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1712 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1714 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1716 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1718 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1718 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1720 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1720 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1722 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1724 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_ExUnits_1724 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1726 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1728 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_LangDepView_1728 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1730 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Language_1730 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1732 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_PlutusScript_1732 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1734 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV1_1734 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1736 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV2_1736 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1738 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV3_1738 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1740 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Prices_1740 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1742 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Redeemer_1742 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1744 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1746 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1748 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1750 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1750 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1752 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1752 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1754 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1756 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny
d_language_1756 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_language_260 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1758 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  () -> AgdaAny -> AgdaAny
d_toData_1758 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_toData_264 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1760 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1760 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1764 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1764 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1766 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_CostModel_1766 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1768 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_T_1768 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1770 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_THash_1770 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1772 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1774 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Datum_1774 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1776 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1778 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1780 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1782 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1784 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1786 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1788 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1790 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1792 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1792 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1794 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1794 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1796 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1798 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_ExUnits_1798 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1800 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1802 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1804 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1804 ~v0 = du_Hashable'45'Script_1804
du_Hashable'45'Script_1804 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1804
  = coe MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1806 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_LangDepView_1806 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1808 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Language_1808 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1810 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_P1Script_1810 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1812 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_1812 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1814 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1816 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1818 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1820 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Prices_1820 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1822 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Redeemer_1822 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1824 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Script_1824 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1826 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1828 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1830 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1832 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1832 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1834 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1834 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1836 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1838 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1840 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1842 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1842 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1844 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1844 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1846 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1848 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1848 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1850 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1850 = erased
-- Ledger.Conway.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1880 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_scriptStructure_1880 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1884 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1884 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.CostModel
d_CostModel_1886 :: T_TransactionStructure_22 -> ()
d_CostModel_1886 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T
d_T_1888 :: T_TransactionStructure_22 -> ()
d_T_1888 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1890 :: T_TransactionStructure_22 -> ()
d_THash_1890 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1892 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Datum
d_Datum_1894 :: T_TransactionStructure_22 -> ()
d_Datum_1894 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1896 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1898 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1900 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1902 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1904 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1906 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1908 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1910 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1912 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1912 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1880 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1914 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1914 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1880 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1916 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1918 :: T_TransactionStructure_22 -> ()
d_ExUnits_1918 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1920 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1922 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1924 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1926 :: T_TransactionStructure_22 -> ()
d_LangDepView_1926 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Language
d_Language_1928 :: T_TransactionStructure_22 -> ()
d_Language_1928 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1Script
d_P1Script_1930 :: T_TransactionStructure_22 -> ()
d_P1Script_1930 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1932 :: T_TransactionStructure_22 -> ()
d_PlutusScript_1932 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1934 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV1_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1936 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV2_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1938 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV3_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Prices
d_Prices_1940 :: T_TransactionStructure_22 -> ()
d_Prices_1940 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1942 :: T_TransactionStructure_22 -> ()
d_Redeemer_1942 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Script
d_Script_1944 :: T_TransactionStructure_22 -> ()
d_Script_1944 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1946 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1948 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1950 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1952 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1952 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1880 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1954 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1954 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1880 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1956 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe d_scriptStructure_1880 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1958 ::
  T_TransactionStructure_22 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.language
d_language_1960 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_language_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.p1s
d_p1s_1962 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ps
d_ps_1964 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.toData
d_toData_1966 ::
  T_TransactionStructure_22 -> () -> AgdaAny -> AgdaAny
d_toData_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1880 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1968 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1968 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1970 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1970 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt
d_Acnt_1974 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1976 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1976 ~v0
  = du_DecEq'45'DrepThresholds_1976
du_DecEq'45'DrepThresholds_1976 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1976
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_578
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1978 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1978 ~v0 = du_DecEq'45'PParamGroup_1978
du_DecEq'45'PParamGroup_1978 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1978
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_584
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1980 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_582
      (coe d_epochStructure_1598 (coe v0))
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1982 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1982 ~v0
  = du_DecEq'45'PoolThresholds_1982
du_DecEq'45'PoolThresholds_1982 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1982
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_580
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1984 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams
d_GovParams_1988 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1992 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1992 ~v0 = du_HasCast'45'Acnt_1992
du_HasCast'45'Acnt_1992 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1992
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_186
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams
d_HasPParams_1994 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_1996 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_1998 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_2000 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
d_HasgovActionDeposit'45'PParams_2000 ~v0
  = du_HasgovActionDeposit'45'PParams_2000
du_HasgovActionDeposit'45'PParams_2000 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
du_HasgovActionDeposit'45'PParams_2000
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_460
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_2002 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2006 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParams
d_PParams_2008 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2010 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2012 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_2012 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2014 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2016 :: T_TransactionStructure_22 -> ()
d_ProtVer_2016 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2020 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2020 ~v0 = du_Show'45'DrepThresholds_2020
du_Show'45'DrepThresholds_2020 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2020
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_586
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2022 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_590
      (coe d_epochStructure_1598 (coe v0))
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2024 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2024 ~v0 = du_Show'45'PoolThresholds_2024
du_Show'45'PoolThresholds_2024 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2024
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_588
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2026 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2026 ~v0 = du_Show'45'ProtVer_2026
du_Show'45'ProtVer_2026 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2026
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2034 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_2036 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2038 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2038 ~v0 = du_paramsWF'45'elim_2038
du_paramsWF'45'elim_2038 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2038 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_550 v2
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2040 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> ()
d_paramsWellFormed_2040 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2042 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
d_positivePParams_2042 ~v0 = du_positivePParams_2042
du_positivePParams_2042 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
du_positivePParams_2042
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_462
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2044 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2046 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2046 ~v0 = du_pvCanFollow'63'_2046
du_pvCanFollow'63'_2046 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2046
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1426
-- Ledger.Conway.Transaction.TransactionStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_2048 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_2048 ~v0
  = du_refScriptCostStride'62'0_2048
du_refScriptCostStride'62'0_2048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_2048 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_refScriptCostStride'62'0_572
      v0
-- Ledger.Conway.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_2050 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_2050 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_2056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_2058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2062 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_222 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_224 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_226 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_228 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_230 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_232 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_234 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2076 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_236 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2078 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_238 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2080 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_240 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 -> ()
d_UpdateT_2086 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_2090 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2094 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> ()
d_ppdWellFormed_2094 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_2100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_2112 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2128 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_2128 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a
d_a_2130 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_2130 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a0
d_a0_2132 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2132 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.b
d_b_2134 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_2134 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2136 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2138 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_2138 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2140 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2142 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2144 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_2144 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2146 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2148 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_2148 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2150 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2152 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2154 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2156 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_2156 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2158 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2160 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2162 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2164 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2166 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2168 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2170 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2172 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_2172 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2174 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_2174 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2176 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2178 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2180 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2182 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_2182 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2184 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_2184 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2186 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.prices
d_prices_2188 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_2188 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.pv
d_pv_2190 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2190 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2192 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2194 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2196 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2196 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2200 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 -> ()
d_UpdateT_2200 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2202 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2204 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2204 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2206 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_2206 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2208 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2212 ::
  T_TransactionStructure_22 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2212 ~v0 = du__'63''8599'__2212
du__'63''8599'__2212 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2212 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1218 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2214 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1420
      (coe d_epochStructure_1598 (coe v0))
      (coe d_scriptStructure_1880 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2216 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2218 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyPParamsUpdate_2218 ~v0 = du_applyPParamsUpdate_2218
du_applyPParamsUpdate_2218 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
du_applyPParamsUpdate_2218
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1266
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2220 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_modifiedUpdateGroups_2220 ~v0 = du_modifiedUpdateGroups_2220
du_modifiedUpdateGroups_2220 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
du_modifiedUpdateGroups_2220
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1202
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2222 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesEconomicGroup_2222 ~v0 = du_modifiesEconomicGroup_2222
du_modifiesEconomicGroup_2222 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesEconomicGroup_2222
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_898
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2224 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesGovernanceGroup_2224 ~v0
  = du_modifiesGovernanceGroup_2224
du_modifiesGovernanceGroup_2224 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesGovernanceGroup_2224
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1050
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2226 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesNetworkGroup_2226 ~v0 = du_modifiesNetworkGroup_2226
du_modifiesNetworkGroup_2226 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesNetworkGroup_2226
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_822
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2228 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesSecurityGroup_2228 ~v0 = du_modifiesSecurityGroup_2228
du_modifiesSecurityGroup_2228 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesSecurityGroup_2228
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1126
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2230 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesTechnicalGroup_2230 ~v0 = du_modifiesTechnicalGroup_2230
du_modifiesTechnicalGroup_2230 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesTechnicalGroup_2230
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_974
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2232 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> ()
d_paramsUpdateWellFormed_2232 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2234 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2234 ~v0
  = du_paramsUpdateWellFormed'63'_2234
du_paramsUpdateWellFormed'63'_2234 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2234
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_818
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2236 ::
  T_TransactionStructure_22 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_2236 ~v0 = du_'8801''45'update_2236
du_'8801''45'update_2236 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_2236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1232 v1
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2240 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_Emax_2240 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_712 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2242 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_a_2242 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_682 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2244 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2244 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_710 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2246 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_b_2246 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_684 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2248 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMaxTermLength_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_734 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2250 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMinSize_2250 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_732 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2252 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_coinsPerUTxOByte_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_694 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2254 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_collateralPercentage_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_716
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2256 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_costmdls_2256 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_718 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2258 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_drepActivity_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_730 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2260 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepDeposit_2260 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_728 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2262 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_720 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2264 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionDeposit_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_726 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2266 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionLifetime_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_724 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2268 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_keyDeposit_2268 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_686 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2270 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxBlockExUnits_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_678 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2272 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxBlockSize_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_666 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2274 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxCollateralInputs_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_674
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2276 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxHeaderSize_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_670 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2278 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_702
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2280 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_700
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2282 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxTxExUnits_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_676 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2284 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxTxSize_2284 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_668 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2286 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxValSize_2286 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_672 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2288 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_698
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2290 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_minUTxOValue_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_708 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2292 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_690 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2294 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_nopt_2294 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_714 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2296 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_poolDeposit_2296 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_688 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2298 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_722 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2300 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_prices_2300 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_696 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2302 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2302 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_680 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2304 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_706
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2306 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_refScriptCostStride_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_704
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2308 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2308 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_692 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2312 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2312 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_254 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2314 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2314 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_256 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2316 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2316 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_258 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2318 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2318 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_260 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2320 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2320 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_262 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.govParams
d_govParams_2328 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
d_govParams_2328 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2332 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538
      (coe d_govParams_2328 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2334 :: T_TransactionStructure_22 -> ()
d_UpdateT_2334 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2336 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_2328 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2338 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
      (coe d_govParams_2328 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2340 ::
  T_TransactionStructure_22 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_2328 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2342 :: T_TransactionStructure_22 -> AgdaAny -> ()
d_ppdWellFormed_2342 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2344 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_2328 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2346 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
d_tokenAlgebra_2346 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._∙_
d__'8729'__2350 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2350 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2346 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._._≈_
d__'8776'__2352 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2352 = erased
-- Ledger.Conway.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2354 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2354 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2356 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2358 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2360 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2362 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2364 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Value
d_Value_2366 :: T_TransactionStructure_22 -> ()
d_Value_2366 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2368 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addValue
d_addValue_2370 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin
d_coin_2372 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_coin_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2374 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2374 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2376 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2378 ::
  T_TransactionStructure_22 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2378 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.inject
d_inject_2380 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_inject_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.monoid
d_monoid_2382 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2382 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2346 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.policies
d_policies_2384 ::
  T_TransactionStructure_22 -> AgdaAny -> [AgdaAny]
d_policies_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2386 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2386 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                 (coe d_tokenAlgebra_2346 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.size
d_size_2388 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_size_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2390 ::
  T_TransactionStructure_22 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
      (coe d_tokenAlgebra_2346 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ε
d_ε_2392 :: T_TransactionStructure_22 -> AgdaAny
d_ε_2392 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2346 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2396 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2398 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2400 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2402 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2404 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2408 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2414 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2414 ~v0 = du_isMagmaIsomorphism_2414
du_isMagmaIsomorphism_2414 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2414 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2416 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2416 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2416 v2
du_isMagmaMonomorphism_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2422 v0
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
d_isRelIsomorphism_2424 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2424 ~v0 ~v1 v2 = du_isRelIsomorphism_2424 v2
du_isRelIsomorphism_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2426 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2426 ~v0 ~v1 v2 = du_isRelMonomorphism_2426 v2
du_isRelMonomorphism_2426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2426 v0
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
d_surjective_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2430 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2432 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2436 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2442 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2442 ~v0 = du_isMagmaMonomorphism_2442
du_isMagmaMonomorphism_2442 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2442 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2448 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2448 ~v0 ~v1 v2 = du_isRelMonomorphism_2448 v2
du_isRelMonomorphism_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2450 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2452 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txidBytes
d_txidBytes_2454 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_txidBytes_2454 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14613 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.govStructure
d_govStructure_2456 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8
d_govStructure_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.GovStructure.C_GovStructure'46'constructor_3123
      (d_DecEq'45'TxId_1248 (coe v0)) (d_crypto_1294 (coe v0))
      (d_epochStructure_1598 (coe v0)) (d_scriptStructure_1880 (coe v0))
      (d_govParams_2328 (coe v0)) (d_globalConstants_1264 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2460 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2468 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2468 ~v0 = du_DecEq'45'GovActionType_2468
du_DecEq'45'GovActionType_2468 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2468
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_882
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2470 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2470 ~v0 = du_DecEq'45'GovRole_2470
du_DecEq'45'GovRole_2470 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2470
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_884
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2472 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_888
      (coe d_govStructure_2456 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2474 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2474 ~v0 = du_DecEq'45'Vote_2474
du_DecEq'45'Vote_2474 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2474
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_886
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2476 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2478 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  ()
d_GovActionData_2478 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2480 :: T_TransactionStructure_22 -> ()
d_GovActionID_2480 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2482 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2484 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2486 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2488 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2490 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2492 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2492 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2492
du_HasCast'45'GovAction'45'Sigma_2492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2492
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_792
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2494 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2494 ~v0 = du_HasCast'45'GovVote_2494
du_HasCast'45'GovVote_2494 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2494
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_890
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2496 ::
  T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2496 ~v0
  = du_HasCast'45'HashProtected_2496
du_HasCast'45'HashProtected_2496 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_804
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2498 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2498 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2498
du_HasCast'45'HashProtected'45'MaybeScriptHash_2498 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2498
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_806
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2500 :: T_TransactionStructure_22 -> () -> ()
d_HashProtected_2500 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2504 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  ()
d_NeedsHash_2504 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2518 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2520 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2522 :: T_TransactionStructure_22 -> ()
d_Voter_2522 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_2530 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny
d_gaData_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_788 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_2532 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762
d_gaType_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2534 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_2534 ~v0 = du_getDRepVote_2534
du_getDRepVote_2534 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getDRepVote_2534
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_892
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2540 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_2540 ~v0 = du_proposedCC_2540
du_proposedCC_2540 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_proposedCC_2540
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_896
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2548 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752 ->
  AgdaAny
d_hash_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_760 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2550 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_758 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_2554 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny
d_gaData_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_788 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_2556 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762
d_gaType_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2560 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2562 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  AgdaAny
d_expiresIn_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_876
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2564 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  AgdaAny
d_prevAction_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_880
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2566 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_874
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2568 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_872 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2588 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_848 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2590 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_858 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2592 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Integer
d_deposit_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_854 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2594 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Maybe AgdaAny
d_policy_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_852 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2596 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  AgdaAny
d_prevAction_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_850
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2598 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_856
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2610 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_832 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2612 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_826 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2614 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_808
d_vote_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_830 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2616 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_828 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DCert
d_DCert_2664 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2752 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2796 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1064 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2796 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1072 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_2942 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1064 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2942 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1072 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxIn
d_TxIn_2962 :: T_TransactionStructure_22 -> ()
d_TxIn_2962 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxOut
d_TxOut_2964 :: T_TransactionStructure_22 -> ()
d_TxOut_2964 = erased
-- Ledger.Conway.Transaction.TransactionStructure.UTxO
d_UTxO_2966 :: T_TransactionStructure_22 -> ()
d_UTxO_2966 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Wdrl
d_Wdrl_2968 :: T_TransactionStructure_22 -> ()
d_Wdrl_2968 = erased
-- Ledger.Conway.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2970 :: T_TransactionStructure_22 -> ()
d_RdmrPtr_2970 = erased
-- Ledger.Conway.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2972 :: T_TransactionStructure_22 -> ()
d_ProposedPPUpdates_2972 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Update
d_Update_2974 :: T_TransactionStructure_22 -> ()
d_Update_2974 = erased
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_2980 a0 a1 a2 = ()
newtype T_HasUTxO_2980
  = C_HasUTxO'46'constructor_18507 (AgdaAny ->
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_2988 ::
  T_HasUTxO_2980 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2988 v0
  = case coe v0 of
      C_HasUTxO'46'constructor_18507 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_2992 ::
  T_HasUTxO_2980 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2992 v0 = coe d_UTxOOf_2988 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody
d_TxBody_2994 a0 = ()
data T_TxBody_2994
  = C_TxBody'46'constructor_19733 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
                                  Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                  (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txins
d_txins_3036 ::
  T_TxBody_2994 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3036 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3038 ::
  T_TxBody_2994 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3038 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txouts
d_txouts_3040 ::
  T_TxBody_2994 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3040 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txfee
d_txfee_3042 :: T_TxBody_2994 -> Integer
d_txfee_3042 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.mint
d_mint_3044 :: T_TxBody_2994 -> AgdaAny
d_mint_3044 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3046 ::
  T_TxBody_2994 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3046 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3048 ::
  T_TxBody_2994 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
d_txcerts_3048 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3050 ::
  T_TxBody_2994 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3050 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3052 ::
  T_TxBody_2994 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
d_txvote_3052 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3054 ::
  T_TxBody_2994 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
d_txprop_3054 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3056 :: T_TxBody_2994 -> Integer
d_txdonation_3056 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txup
d_txup_3058 ::
  T_TxBody_2994 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3058 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3060 :: T_TxBody_2994 -> Maybe AgdaAny
d_txADhash_3060 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3062 :: T_TxBody_2994 -> Maybe AgdaAny
d_txNetworkId_3062 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3064 :: T_TxBody_2994 -> Maybe Integer
d_curTreasury_3064 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txsize
d_txsize_3066 :: T_TxBody_2994 -> Integer
d_txsize_3066 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txid
d_txid_3068 :: T_TxBody_2994 -> AgdaAny
d_txid_3068 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3070 ::
  T_TxBody_2994 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3070 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3072 :: T_TxBody_2994 -> [AgdaAny]
d_reqSigHash_3072 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3074 :: T_TxBody_2994 -> Maybe AgdaAny
d_scriptIntHash_3074 v0
  = case coe v0 of
      C_TxBody'46'constructor_19733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3080 a0 a1 a2 = ()
newtype T_HasTxBody_3080
  = C_HasTxBody'46'constructor_20219 (AgdaAny -> T_TxBody_2994)
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3088 :: T_HasTxBody_3080 -> AgdaAny -> T_TxBody_2994
d_TxBodyOf_3088 v0
  = case coe v0 of
      C_HasTxBody'46'constructor_20219 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3092 :: T_HasTxBody_3080 -> AgdaAny -> T_TxBody_2994
d_TxBodyOf_3092 v0 = coe d_TxBodyOf_3088 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3098 a0 a1 a2 = ()
newtype T_Hastxfee_3098
  = C_Hastxfee'46'constructor_20265 (AgdaAny -> Integer)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3106 :: T_Hastxfee_3098 -> AgdaAny -> Integer
d_txfeeOf_3106 v0
  = case coe v0 of
      C_Hastxfee'46'constructor_20265 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3110 :: T_Hastxfee_3098 -> AgdaAny -> Integer
d_txfeeOf_3110 v0 = coe d_txfeeOf_3106 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3116 a0 a1 a2 = ()
newtype T_Hastxcerts_3116
  = C_Hastxcerts'46'constructor_20331 (AgdaAny ->
                                       [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3124 ::
  T_Hastxcerts_3116 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
d_txcertsOf_3124 v0
  = case coe v0 of
      C_Hastxcerts'46'constructor_20331 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3128 ::
  T_Hastxcerts_3116 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
d_txcertsOf_3128 v0 = coe d_txcertsOf_3124 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3134 a0 a1 a2 = ()
newtype T_Hastxprop_3134
  = C_Hastxprop'46'constructor_20397 (AgdaAny ->
                                      [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3142 ::
  T_Hastxprop_3134 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
d_txpropOf_3142 v0
  = case coe v0 of
      C_Hastxprop'46'constructor_20397 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3146 ::
  T_Hastxprop_3134 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
d_txpropOf_3146 v0 = coe d_txpropOf_3142 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid
d_Hastxid_3152 a0 a1 a2 = ()
newtype T_Hastxid_3152
  = C_Hastxid'46'constructor_20443 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3160 :: T_Hastxid_3152 -> AgdaAny -> AgdaAny
d_txidOf_3160 v0
  = case coe v0 of
      C_Hastxid'46'constructor_20443 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txidOf
d_txidOf_3164 :: T_Hastxid_3152 -> AgdaAny -> AgdaAny
d_txidOf_3164 v0 = coe d_txidOf_3160 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3166 a0 = ()
data T_TxWitnesses_3166
  = C_TxWitnesses'46'constructor_20555 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3176 ::
  T_TxWitnesses_3166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3176 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20555 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3178 ::
  T_TxWitnesses_3166 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3178 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20555 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3180 ::
  T_TxWitnesses_3166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_3180 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20555 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3182 ::
  T_TxWitnesses_3166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3182 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20555 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3184 ::
  T_TransactionStructure_22 -> T_TxWitnesses_3166 -> [AgdaAny]
d_scriptsP1_3184 ~v0 v1 = du_scriptsP1_3184 v1
du_scriptsP1_3184 :: T_TxWitnesses_3166 -> [AgdaAny]
du_scriptsP1_3184 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3178 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.Tx
d_Tx_3186 a0 = ()
data T_Tx_3186
  = C_Tx'46'constructor_20747 T_TxBody_2994 T_TxWitnesses_3166 Bool
                              (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Tx.body
d_body_3196 :: T_Tx_3186 -> T_TxBody_2994
d_body_3196 v0
  = case coe v0 of
      C_Tx'46'constructor_20747 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.wits
d_wits_3198 :: T_Tx_3186 -> T_TxWitnesses_3166
d_wits_3198 v0
  = case coe v0 of
      C_Tx'46'constructor_20747 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.isValid
d_isValid_3200 :: T_Tx_3186 -> Bool
d_isValid_3200 v0
  = case coe v0 of
      C_Tx'46'constructor_20747 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.txAD
d_txAD_3202 :: T_Tx_3186 -> Maybe AgdaAny
d_txAD_3202 v0
  = case coe v0 of
      C_Tx'46'constructor_20747 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3204 ::
  T_TransactionStructure_22 -> T_HasTxBody_3080
d_HasTxBody'45'Tx_3204 ~v0 = du_HasTxBody'45'Tx_3204
du_HasTxBody'45'Tx_3204 :: T_HasTxBody_3080
du_HasTxBody'45'Tx_3204
  = coe
      C_HasTxBody'46'constructor_20219
      (coe (\ v0 -> d_body_3196 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3206 ::
  T_TransactionStructure_22 -> T_Hastxfee_3098
d_Hastxfee'45'Tx_3206 ~v0 = du_Hastxfee'45'Tx_3206
du_Hastxfee'45'Tx_3206 :: T_Hastxfee_3098
du_Hastxfee'45'Tx_3206
  = coe
      C_Hastxfee'46'constructor_20265
      (coe (\ v0 -> d_txfee_3042 (coe d_body_3196 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3208 ::
  T_TransactionStructure_22 -> T_Hastxcerts_3116
d_Hastxcerts'45'Tx_3208 ~v0 = du_Hastxcerts'45'Tx_3208
du_Hastxcerts'45'Tx_3208 :: T_Hastxcerts_3116
du_Hastxcerts'45'Tx_3208
  = coe
      C_Hastxcerts'46'constructor_20331
      (coe (\ v0 -> d_txcerts_3048 (coe d_body_3196 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3210 ::
  T_TransactionStructure_22 -> T_Hastxprop_3134
d_Hastxprop'45'Tx_3210 ~v0 = du_Hastxprop'45'Tx_3210
du_Hastxprop'45'Tx_3210 :: T_Hastxprop_3134
du_Hastxprop'45'Tx_3210
  = coe
      C_Hastxprop'46'constructor_20397
      (coe (\ v0 -> d_txprop_3054 (coe d_body_3196 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3212 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1064
d_HasWdrls'45'TxBody_3212 ~v0 = du_HasWdrls'45'TxBody_3212
du_HasWdrls'45'TxBody_3212 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1064
du_HasWdrls'45'TxBody_3212
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18081
      (coe (\ v0 -> d_txwdrls_3050 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3214 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1064
d_HasWdrls'45'Tx_3214 ~v0 = du_HasWdrls'45'Tx_3214
du_HasWdrls'45'Tx_3214 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1064
du_HasWdrls'45'Tx_3214
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18081
      (coe (\ v0 -> d_txwdrls_3050 (coe d_body_3196 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3216 :: T_TransactionStructure_22 -> T_Hastxid_3152
d_Hastxid'45'Tx_3216 ~v0 = du_Hastxid'45'Tx_3216
du_Hastxid'45'Tx_3216 :: T_Hastxid_3152
du_Hastxid'45'Tx_3216
  = coe
      C_Hastxid'46'constructor_20443
      (coe (\ v0 -> d_txid_3068 (coe d_body_3196 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.getValue
d_getValue_3218 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3218 ~v0 v1 = du_getValue_3218 v1
du_getValue_3218 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3218 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3222 :: T_TransactionStructure_22 -> ()
d_TxOut'688'_3222 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txOutHash
d_txOutHash_3224 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3224 v0 v1
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
                                          (d_scriptStructure_1880 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                                                (coe d_scriptStructure_1880 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe d_scriptStructure_1880 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3234 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3234 ~v0 v1 = du_getValue'688'_3234 v1
du_getValue'688'_3234 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3234 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3238 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3238 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1248 (coe v0))
               (coe d_DecEq'45'Ix_1246 (coe v0))))
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
d_scriptOuts_3244 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3244 ~v0 v1 = du_scriptOuts_3244 v1
du_scriptOuts_3244 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3244 v0
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
d_txinsScript_3252 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3252 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1248 (coe v0))
               (coe d_DecEq'45'Ix_1246 (coe v0))))
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
               (coe du_scriptOuts_3244 (coe v2)))))
-- Ledger.Conway.Transaction.TransactionStructure.refScripts
d_refScripts_3258 ::
  T_TransactionStructure_22 ->
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3258 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_mapMaybe_258
      (coe
         (\ v3 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
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
                  (coe d_DecEq'45'TxId_1248 (coe v0))
                  (coe d_DecEq'45'Ix_1246 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_3036 (coe d_body_3196 (coe v1)))
               (coe d_refInputs_3038 (coe d_body_3196 (coe v1))))))
-- Ledger.Conway.Transaction.TransactionStructure._._.collateral
d_collateral_3270 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3270 v0 ~v1 = du_collateral_3270 v0
du_collateral_3270 ::
  T_Tx_3186 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3270 v0
  = coe d_collateral_3070 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3272 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3272 v0 ~v1 = du_curTreasury_3272 v0
du_curTreasury_3272 :: T_Tx_3186 -> Maybe Integer
du_curTreasury_3272 v0
  = coe d_curTreasury_3064 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.mint
d_mint_3274 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3274 v0 ~v1 = du_mint_3274 v0
du_mint_3274 :: T_Tx_3186 -> AgdaAny
du_mint_3274 v0 = coe d_mint_3044 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.refInputs
d_refInputs_3276 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3276 v0 ~v1 = du_refInputs_3276 v0
du_refInputs_3276 ::
  T_Tx_3186 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3276 v0
  = coe d_refInputs_3038 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3278 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3278 v0 ~v1 = du_reqSigHash_3278 v0
du_reqSigHash_3278 :: T_Tx_3186 -> [AgdaAny]
du_reqSigHash_3278 v0
  = coe d_reqSigHash_3072 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3280 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3280 v0 ~v1 = du_scriptIntHash_3280 v0
du_scriptIntHash_3280 :: T_Tx_3186 -> Maybe AgdaAny
du_scriptIntHash_3280 v0
  = coe d_scriptIntHash_3074 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txADhash
d_txADhash_3282 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3282 v0 ~v1 = du_txADhash_3282 v0
du_txADhash_3282 :: T_Tx_3186 -> Maybe AgdaAny
du_txADhash_3282 v0
  = coe d_txADhash_3060 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3284 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3284 v0 ~v1 = du_txNetworkId_3284 v0
du_txNetworkId_3284 :: T_Tx_3186 -> Maybe AgdaAny
du_txNetworkId_3284 v0
  = coe d_txNetworkId_3062 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txcerts
d_txcerts_3286 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
d_txcerts_3286 v0 ~v1 = du_txcerts_3286 v0
du_txcerts_3286 ::
  T_Tx_3186 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1002]
du_txcerts_3286 v0 = coe d_txcerts_3048 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txdonation
d_txdonation_3288 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3288 v0 ~v1 = du_txdonation_3288 v0
du_txdonation_3288 :: T_Tx_3186 -> Integer
du_txdonation_3288 v0
  = coe d_txdonation_3056 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txfee
d_txfee_3290 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3290 v0 ~v1 = du_txfee_3290 v0
du_txfee_3290 :: T_Tx_3186 -> Integer
du_txfee_3290 v0 = coe d_txfee_3042 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txid
d_txid_3292 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3292 v0 ~v1 = du_txid_3292 v0
du_txid_3292 :: T_Tx_3186 -> AgdaAny
du_txid_3292 v0 = coe d_txid_3068 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txins
d_txins_3294 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3294 v0 ~v1 = du_txins_3294 v0
du_txins_3294 ::
  T_Tx_3186 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3294 v0 = coe d_txins_3036 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txouts
d_txouts_3296 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3296 v0 ~v1 = du_txouts_3296 v0
du_txouts_3296 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3296 v0 = coe d_txouts_3040 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txprop
d_txprop_3298 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
d_txprop_3298 v0 ~v1 = du_txprop_3298 v0
du_txprop_3298 ::
  T_Tx_3186 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834]
du_txprop_3298 v0 = coe d_txprop_3054 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txsize
d_txsize_3300 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_3300 v0 ~v1 = du_txsize_3300 v0
du_txsize_3300 :: T_Tx_3186 -> Integer
du_txsize_3300 v0 = coe d_txsize_3066 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txup
d_txup_3302 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3302 v0 ~v1 = du_txup_3302 v0
du_txup_3302 ::
  T_Tx_3186 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3302 v0 = coe d_txup_3058 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvldt
d_txvldt_3304 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3304 v0 ~v1 = du_txvldt_3304 v0
du_txvldt_3304 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3304 v0 = coe d_txvldt_3046 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvote
d_txvote_3306 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
d_txvote_3306 v0 ~v1 = du_txvote_3306 v0
du_txvote_3306 ::
  T_Tx_3186 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816]
du_txvote_3306 v0 = coe d_txvote_3052 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3308 ::
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3308 v0 ~v1 = du_txwdrls_3308 v0
du_txwdrls_3308 ::
  T_Tx_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3308 v0 = coe d_txwdrls_3050 (coe d_body_3196 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.txscripts
d_txscripts_3310 ::
  T_TransactionStructure_22 ->
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3310 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3178 (coe d_wits_3198 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe d_refScripts_3258 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3320 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3320 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe d_crypto_1294 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_3332 (coe v0) (coe v2) (coe v3)))))
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
                 (coe du_m_3332 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Transaction.TransactionStructure._.m
d_m_3332 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3332 v0 ~v1 v2 v3 = du_m_3332 v0 v2 v3
du_m_3332 ::
  T_TransactionStructure_22 ->
  T_Tx_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3332 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_70
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1294 (coe v0)))
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
                  (d_scriptStructure_1880 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                        (coe d_scriptStructure_1880 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                        (coe d_scriptStructure_1880 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3310 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Transaction.TransactionStructure.isP2Script
d_isP2Script_3334 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3334 = erased
-- Ledger.Conway.Transaction.TransactionStructure.isP2Script?
d_isP2Script'63'_3338 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3338 ~v0 v1 = du_isP2Script'63'_3338 v1
du_isP2Script'63'_3338 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3338 v0
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
d_HasCoin'45'TxOut_3344 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3344 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
              (d_tokenAlgebra_2346 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
