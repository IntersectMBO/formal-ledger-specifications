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
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
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
  = C_TransactionStructure'46'constructor_14451 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
                                                MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
                                                MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268
                                                MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530
                                                MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12
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
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__136 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_138 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_140 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.Value
d_Value_148 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  ()
d_Value_148 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_150 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coin
d_coin_154 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_158 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_212
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_160 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_160 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.inject
d_inject_162 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.policies
d_policies_166 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> [AgdaAny]
d_policies_166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.size
d_size_170 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_size_206 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Ix
d_Ix_1214 :: T_TransactionStructure_22 -> ()
d_Ix_1214 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxId
d_TxId_1216 :: T_TransactionStructure_22 -> ()
d_TxId_1216 = erased
-- Ledger.Conway.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1218 :: T_TransactionStructure_22 -> ()
d_AuxiliaryData_1218 = erased
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1220 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1220 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1222 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1222 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1224 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_adHashingScheme_1224 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1228 :: T_TransactionStructure_22 -> ()
d_THash_1228 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1230 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
      (coe d_adHashingScheme_1224 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1232 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
      (coe d_adHashingScheme_1224 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1234 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
      (coe d_adHashingScheme_1224 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1236 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
      (coe d_adHashingScheme_1224 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.globalConstants
d_globalConstants_1238 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1238 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1242 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1244 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Network
d_Network_1246 :: T_TransactionStructure_22 -> ()
d_Network_1246 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1248 :: T_TransactionStructure_22 -> AgdaAny
d_NetworkId_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1250 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_300
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1252 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1254 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Positive'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Quorum
d_Quorum_1256 :: T_TransactionStructure_22 -> Integer
d_Quorum_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1258 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1260 :: T_TransactionStructure_22 -> Integer
d_SlotsPerEpoch'7580'_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1262 ::
  T_TransactionStructure_22 -> Integer
d_StabilityWindow'7580'_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1264 ::
  T_TransactionStructure_22 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1264 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1266 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_314
      (coe d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.crypto
d_crypto_1268 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_1268 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1272 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1272 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1274 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_1268 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1276 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1276 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1278 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1278 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1280 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1280 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1282 :: T_TransactionStructure_22 -> ()
d_THash_1282 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1284 :: T_TransactionStructure_22 -> ()
d_KeyPair_1284 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.SKey
d_SKey_1286 :: T_TransactionStructure_22 -> ()
d_SKey_1286 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1288 :: T_TransactionStructure_22 -> ()
d_ScriptHash_1288 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Ser
d_Ser_1290 :: T_TransactionStructure_22 -> ()
d_Ser_1290 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1292 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_1268 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1294 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1294 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.Sig
d_Sig_1296 :: T_TransactionStructure_22 -> ()
d_Sig_1296 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1298 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1298 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.VKey
d_VKey_1300 :: T_TransactionStructure_22 -> ()
d_VKey_1300 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1302 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1302 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned
d_isSigned_1304 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1304 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1306 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1306 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.khs
d_khs_1308 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_1268 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.pkk
d_pkk_1310 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_1268 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sign
d_sign_1312 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1312 v0
  = let v1 = d_crypto_1268 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1316 :: T_TransactionStructure_22 -> ()
d_MemoryEstimate_1316 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1318 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1322 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1322 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1324 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1324 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1326 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1326 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1328 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1330 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1332 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1334 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1336 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1338 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  ()
d_Value_1338 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1340 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1342 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1342 ~v0 = du_addValue_1342
du_addValue_1342 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1342
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_addValue_218
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1344 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1346 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1346 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1348 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1350 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1350 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1352 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1354 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1354 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1356 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> [AgdaAny]
d_policies_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1358 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1358 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1360 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_size_206 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1362 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1362 ~v0 = du_sum'7515'_1362
du_sum'7515'_1362 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1362
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_sum'7515'_236
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1364 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny
d_ε_1364 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1368 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1370 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1372 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1374 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1376 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1380 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1386 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1386 ~v0 = du_isMagmaIsomorphism_1386
du_isMagmaIsomorphism_1386 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1386 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1388 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1388 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1388 v2
du_isMagmaMonomorphism_1388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1388 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1390 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1394 v0
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
d_isRelIsomorphism_1396 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1396 ~v0 ~v1 v2 = du_isRelIsomorphism_1396 v2
du_isRelIsomorphism_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1398 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1398 ~v0 ~v1 v2 = du_isRelMonomorphism_1398 v2
du_isRelMonomorphism_1398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1398 v0
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
d_surjective_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1400 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1402 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1404 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1408 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1414 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1414 ~v0 = du_isMagmaMonomorphism_1414
du_isMagmaMonomorphism_1414 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1414 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1420 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1420 ~v0 ~v1 v2 = du_isRelMonomorphism_1420 v2
du_isRelMonomorphism_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1422 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1424 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Addr
d_Addr_1428 :: T_TransactionStructure_22 -> ()
d_Addr_1428 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1430 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1432 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Credential
d_Credential_1434 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1436 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1436 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1438 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1438 ~v0 = du_Dec'45'isScript_1438
du_Dec'45'isScript_1438 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1438
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1440 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1440 ~v0 = du_Dec'45'isVKey_1440
du_Dec'45'isVKey_1440 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1440
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1442 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1238 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1268 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1444 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1238 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1268 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1446 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1268 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1448 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1238 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1268 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1450 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1452 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1452 ~v0
  = du_HasCredential'45'RwdAddr_1452
du_HasCredential'45'RwdAddr_1452 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1452
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1454 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1456 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1456 ~v0
  = du_HasNetworkId'45'BaseAddr_1456
du_HasNetworkId'45'BaseAddr_1456 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1456
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1458 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1458 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1458
du_HasNetworkId'45'BootstrapAddr_1458 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1458
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1460 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1460 ~v0
  = du_HasNetworkId'45'RwdAddr_1460
du_HasNetworkId'45'RwdAddr_1460 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1460
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1466 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1466 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1468 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1472 :: T_TransactionStructure_22 -> ()
d_ScriptAddr_1472 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1474 :: T_TransactionStructure_22 -> ()
d_ScriptBaseAddr_1474 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1476 :: T_TransactionStructure_22 -> ()
d_ScriptBootstrapAddr_1476 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1480 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1480 ~v0 = du_Show'45'Credential_1480
du_Show'45'Credential_1480 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1480 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1482 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1482 ~v0
  = du_Show'45'Credential'215'Coin_1482
du_Show'45'Credential'215'Coin_1482 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1482 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1484 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1484 ~v0 = du_Show'45'RwdAddr_1484
du_Show'45'RwdAddr_1484 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1484
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1486 :: T_TransactionStructure_22 -> ()
d_VKeyAddr_1486 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1488 :: T_TransactionStructure_22 -> ()
d_VKeyBaseAddr_1488 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1490 :: T_TransactionStructure_22 -> ()
d_VKeyBootstrapAddr_1490 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1494 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1494 ~v0 = du_getScriptHash_1494
du_getScriptHash_1494 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1494
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1496 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1498 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1498 ~v0 = du_isBootstrapAddr'63'_1498
du_isBootstrapAddr'63'_1498 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1498
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1500 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1500 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1502 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1502 ~v0 = du_isKeyHashObj_1502
du_isKeyHashObj_1502 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1502
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1504 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1504 ~v0 = du_isKeyHashObj'7495'_1504
du_isKeyHashObj'7495'_1504 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1504
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Transaction.TransactionStructure._.isScript
d_isScript_1506 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1508 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1508 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1510 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1510 ~v0 = du_isScriptObj_1510
du_isScriptObj_1510 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1510
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1512 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1512 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isVKey
d_isVKey_1514 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1516 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1516 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.netId
d_netId_1518 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1518 ~v0 = du_netId_1518
du_netId_1518 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1518 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Transaction.TransactionStructure._.payCred
d_payCred_1520 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1520 ~v0 = du_payCred_1520
du_payCred_1520 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1520
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1522 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1522 ~v0 = du_stakeCred_1522
du_stakeCred_1522 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1522
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.net
d_net_1526 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1526 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1528 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1530 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1534 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1534 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1536 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1536 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1538 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1538 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1548 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1552 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.net
d_net_1556 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1558 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.epochStructure
d_epochStructure_1572 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_1572 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1576 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1578 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1580 ::
  T_TransactionStructure_22 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1580 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1582 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1584 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1586 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Epoch
d_Epoch_1588 :: T_TransactionStructure_22 -> ()
d_Epoch_1588 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1590 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1592 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Slot
d_Slot_1594 :: T_TransactionStructure_22 -> ()
d_Slot_1594 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1596 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1598 :: T_TransactionStructure_22 -> AgdaAny
d_StabilityWindow_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1600 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addSlot
d_addSlot_1602 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.epoch
d_epoch_1604 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_epoch_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1606 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_firstSlot_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1608 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1610 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_suc'7497'_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1612 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_ℕtoEpoch_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_1572 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1616 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1618 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1620 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1624 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1626 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1628 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1630 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 -> ()
d_P1Script_1630 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1632 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1632 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1636 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1636 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1638 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_CostModel_1638 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1640 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_T_1640 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1642 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_THash_1642 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1644 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1646 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Datum_1646 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1648 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1650 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1652 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1654 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1656 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1658 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1660 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1660 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1662 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1662 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1664 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1666 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_ExUnits_1666 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1668 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1670 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_LangDepView_1670 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1672 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Language_1672 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1674 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_PlutusScript_1674 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1676 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1678 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1680 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1682 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Prices_1682 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1684 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Redeemer_1684 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1686 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1688 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1690 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1692 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1692 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1694 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1694 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1696 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1698 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_1698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1700 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_1700 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1702 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1702 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1706 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1706 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1708 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_CostModel_1708 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1710 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_T_1710 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1712 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_THash_1712 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1714 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1716 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Datum_1716 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1718 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1720 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1722 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1724 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1726 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1728 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1730 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1732 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1734 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1734 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1736 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1736 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1738 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1740 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_ExUnits_1740 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1742 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1744 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1746 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1746 ~v0 = du_Hashable'45'Script_1746
du_Hashable'45'Script_1746 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1746
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1748 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_LangDepView_1748 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1750 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Language_1750 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1752 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_P1Script_1752 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1754 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_PlutusScript_1754 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1756 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny
d_PlutusV1_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1758 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny
d_PlutusV2_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1760 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny
d_PlutusV3_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1762 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Prices_1762 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1764 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Redeemer_1764 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1766 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Script_1766 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1768 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1770 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1772 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1774 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1774 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1776 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1776 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1778 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
         (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1780 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_1782 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1782 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_1784 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1784 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_1786 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1786 ~v0 = du_isP1Script'63'_1786
du_isP1Script'63'_1786 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1786 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_isP1Script'63'_396 v1
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_1788 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1788 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_1790 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1790 ~v0 = du_isP2Script'63'_1790
du_isP2Script'63'_1790 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1790 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_isP2Script'63'_410 v1
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1792 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny -> AgdaAny
d_language_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1794 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96
d_p1s_1794 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1796 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118
d_ps_1796 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1798 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  () -> AgdaAny -> AgdaAny
d_toData_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_1800 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1800 ~v0 = du_toP1Script_1800
du_toP1Script_1800 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1800 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_1802 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1802 ~v0 = du_toP2Script_1802
du_toP2Script_1802 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1802 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP2Script_416
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1804 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1804 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1806 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1806 = erased
-- Ledger.Conway.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1808 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268
d_scriptStructure_1808 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1812 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1812 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.CostModel
d_CostModel_1814 :: T_TransactionStructure_22 -> ()
d_CostModel_1814 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T
d_T_1816 :: T_TransactionStructure_22 -> ()
d_T_1816 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1818 :: T_TransactionStructure_22 -> ()
d_THash_1818 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1820 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Datum
d_Datum_1822 :: T_TransactionStructure_22 -> ()
d_Datum_1822 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1824 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1826 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1828 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1830 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1832 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1834 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1836 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1838 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1840 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1840 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_1808 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1842 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1842 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_1808 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1844 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1846 :: T_TransactionStructure_22 -> ()
d_ExUnits_1846 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1848 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1850 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1852 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1854 :: T_TransactionStructure_22 -> ()
d_LangDepView_1854 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Language
d_Language_1856 :: T_TransactionStructure_22 -> ()
d_Language_1856 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1Script
d_P1Script_1858 :: T_TransactionStructure_22 -> ()
d_P1Script_1858 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1860 :: T_TransactionStructure_22 -> ()
d_PlutusScript_1860 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1862 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV1_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1864 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV2_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1866 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV3_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Prices
d_Prices_1868 :: T_TransactionStructure_22 -> ()
d_Prices_1868 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1870 :: T_TransactionStructure_22 -> ()
d_Redeemer_1870 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Script
d_Script_1872 :: T_TransactionStructure_22 -> ()
d_Script_1872 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1874 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1876 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1878 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1880 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1880 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_1808 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1882 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1882 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                 (coe d_scriptStructure_1808 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1884 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
            (coe d_scriptStructure_1808 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1886 ::
  T_TransactionStructure_22 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_1888 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1888 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isP1Script
d_isP1Script_1890 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1890 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_1892 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1892 ~v0 = du_isP1Script'63'_1892
du_isP1Script'63'_1892 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1892
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_isP1Script'63'_396
-- Ledger.Conway.Transaction.TransactionStructure._.isP2Script
d_isP2Script_1894 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1894 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_1896 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1896 ~v0 = du_isP2Script'63'_1896
du_isP2Script'63'_1896 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1896
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_isP2Script'63'_410
-- Ledger.Conway.Transaction.TransactionStructure._.language
d_language_1898 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_language_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.p1s
d_p1s_1900 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96
d_p1s_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ps
d_ps_1902 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118
d_ps_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.toData
d_toData_1904 ::
  T_TransactionStructure_22 -> () -> AgdaAny -> AgdaAny
d_toData_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
         (coe d_scriptStructure_1808 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.toP1Script
d_toP1Script_1906 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1906 ~v0 = du_toP1Script_1906
du_toP1Script_1906 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1906
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- Ledger.Conway.Transaction.TransactionStructure._.toP2Script
d_toP2Script_1908 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1908 ~v0 = du_toP2Script_1908
du_toP2Script_1908 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1908
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP2Script_416
-- Ledger.Conway.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1910 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1910 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1912 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1912 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt
d_Acnt_1916 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1918 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1918 ~v0
  = du_DecEq'45'DrepThresholds_1918
du_DecEq'45'DrepThresholds_1918 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1918
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_602
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1920 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1920 ~v0 = du_DecEq'45'PParamGroup_1920
du_DecEq'45'PParamGroup_1920 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1920
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_608
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1922 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_606
      (coe d_epochStructure_1572 (coe v0))
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1924 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1924 ~v0
  = du_DecEq'45'PoolThresholds_1924
du_DecEq'45'PoolThresholds_1924 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1924
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_604
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1926 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams
d_GovParams_1930 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1934 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1934 ~v0 = du_HasCast'45'Acnt_1934
du_HasCast'45'Acnt_1934 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1934
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_218
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams
d_HasPParams_1936 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_1938 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_1940 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_1942 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
d_HasgovActionDeposit'45'PParams_1942 ~v0
  = du_HasgovActionDeposit'45'PParams_1942
du_HasgovActionDeposit'45'PParams_1942 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
du_HasgovActionDeposit'45'PParams_1942
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_492
-- Ledger.Conway.Transaction.TransactionStructure._.Hasreserves
d_Hasreserves_1944 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_1946 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1950 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParams
d_PParams_1952 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1954 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_1956 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_1956 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1958 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1960 :: T_TransactionStructure_22 -> ()
d_ProtVer_1960 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1964 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1964 ~v0 = du_Show'45'DrepThresholds_1964
du_Show'45'DrepThresholds_1964 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1964
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_610
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_1966 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_614
      (coe d_epochStructure_1572 (coe v0))
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1968 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1968 ~v0 = du_Show'45'PoolThresholds_1968
du_Show'45'PoolThresholds_1968 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1968
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_612
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_1970 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1970 ~v0 = du_Show'45'ProtVer_1970
du_Show'45'ProtVer_1970 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1970
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_1978 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_1980 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_1982 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1982 ~v0 = du_paramsWF'45'elim_1982
du_paramsWF'45'elim_1982 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1982 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_582 v2
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1984 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> ()
d_paramsWellFormed_1984 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.positivePParams
d_positivePParams_1986 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> [Integer]
d_positivePParams_1986 ~v0 = du_positivePParams_1986
du_positivePParams_1986 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> [Integer]
du_positivePParams_1986
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_494
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1988 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1990 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1990 ~v0 = du_pvCanFollow'63'_1990
du_pvCanFollow'63'_1990 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1990
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1450
-- Ledger.Conway.Transaction.TransactionStructure._.reservesOf
d_reservesOf_1992 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_194 ->
  AgdaAny -> Integer
d_reservesOf_1992 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_202 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_1994 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_176 ->
  AgdaAny -> Integer
d_treasuryOf_1994 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_184 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2000 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160 -> Integer
d_reserves_2000 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_168 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2002 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160 -> Integer
d_treasury_2002 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_166 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2006 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2006 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_254 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2008 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2008 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2010 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2010 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2012 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2012 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_260 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2014 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2014 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_262 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2016 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2016 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2018 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2018 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2020 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2020 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2022 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2022 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2024 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2024 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_272 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2028 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2030 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 -> ()
d_UpdateT_2030 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2032 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2034 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_2034 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2036 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2038 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> ()
d_ppdWellFormed_2038 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2040 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_2044 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2048 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Hasreserves.reservesOf
d_reservesOf_2056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_194 ->
  AgdaAny -> Integer
d_reservesOf_2056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_202 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_176 ->
  AgdaAny -> Integer
d_treasuryOf_2060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_184 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_Emax_2076 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a
d_a_2078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_2078 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a0
d_a0_2080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2080 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.b
d_b_2082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_2082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_2086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_costmdls_2092 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_drepActivity_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_2096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_2104 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxBlockExUnits_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_maxTxExUnits_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_2120 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_2122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2126 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2128 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2130 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_2130 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2132 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_2132 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2134 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.prices
d_prices_2136 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> AgdaAny
d_prices_2136 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.pv
d_pv_2138 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2138 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2140 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2142 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2144 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2144 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2148 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 -> ()
d_UpdateT_2148 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2150 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2152 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2152 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2154 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> ()
d_ppdWellFormed_2154 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2156 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2160 ::
  T_TransactionStructure_22 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2160 ~v0 = du__'63''8599'__2160
du__'63''8599'__2160 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2160 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1242 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2162 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1444
      (coe d_epochStructure_1572 (coe v0))
      (coe d_scriptStructure_1808 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2164 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2166 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyPParamsUpdate_2166 ~v0 = du_applyPParamsUpdate_2166
du_applyPParamsUpdate_2166 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_applyPParamsUpdate_2166
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1290
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2168 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_modifiedUpdateGroups_2168 ~v0 = du_modifiedUpdateGroups_2168
du_modifiedUpdateGroups_2168 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
du_modifiedUpdateGroups_2168
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1226
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2170 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesEconomicGroup_2170 ~v0 = du_modifiesEconomicGroup_2170
du_modifiesEconomicGroup_2170 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesEconomicGroup_2170
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_922
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2172 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesGovernanceGroup_2172 ~v0
  = du_modifiesGovernanceGroup_2172
du_modifiesGovernanceGroup_2172 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesGovernanceGroup_2172
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1074
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2174 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesNetworkGroup_2174 ~v0 = du_modifiesNetworkGroup_2174
du_modifiesNetworkGroup_2174 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesNetworkGroup_2174
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_846
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2176 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesSecurityGroup_2176 ~v0 = du_modifiesSecurityGroup_2176
du_modifiesSecurityGroup_2176 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesSecurityGroup_2176
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1150
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2178 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesTechnicalGroup_2178 ~v0 = du_modifiesTechnicalGroup_2178
du_modifiesTechnicalGroup_2178 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
du_modifiesTechnicalGroup_2178
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_998
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2180 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> ()
d_paramsUpdateWellFormed_2180 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2182 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2182 ~v0
  = du_paramsUpdateWellFormed'63'_2182
du_paramsUpdateWellFormed'63'_2182 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2182
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_842
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2184 ::
  T_TransactionStructure_22 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_2184 ~v0 = du_'8801''45'update_2184
du_'8801''45'update_2184 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_2184 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1256 v1
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2188 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_Emax_2188 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_736 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2190 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_a_2190 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_706 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2192 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2192 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_734 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2194 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_b_2194 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_708 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2196 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_ccMaxTermLength_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2198 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_ccMinSize_2198 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_756 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2200 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_coinsPerUTxOByte_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2202 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_collateralPercentage_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_740
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2204 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_costmdls_2204 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_742 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2206 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_drepActivity_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_754 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2208 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_drepDeposit_2208 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_752 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2210 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_744 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2212 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_govActionDeposit_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2214 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_govActionLifetime_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2216 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_keyDeposit_2216 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_710 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2218 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_maxBlockExUnits_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2220 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxBlockSize_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2222 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxCollateralInputs_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_698
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2224 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxHeaderSize_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2226 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_726
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2228 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_724
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2230 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_maxTxExUnits_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2232 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxTxSize_2232 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_692 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2234 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxValSize_2234 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_696 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2236 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_722
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2238 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_minUTxOValue_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2240 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2242 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_nopt_2242 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_738 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2244 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_poolDeposit_2244 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_712 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2246 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_746 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2248 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe AgdaAny
d_prices_2248 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_720 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2250 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2250 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_704 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2252 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_730
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2254 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_728
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2256 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2256 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_716 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2260 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2260 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2262 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2262 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2264 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2264 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2266 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2266 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2268 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2268 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.govParams
d_govParams_2276 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530
d_govParams_2276 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2280 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562
      (coe d_govParams_2276 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2282 :: T_TransactionStructure_22 -> ()
d_UpdateT_2282 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2284 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
         (coe d_govParams_2276 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2286 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
      (coe d_govParams_2276 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2288 ::
  T_TransactionStructure_22 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
         (coe d_govParams_2276 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2290 :: T_TransactionStructure_22 -> AgdaAny -> ()
d_ppdWellFormed_2290 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2292 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
         (coe d_govParams_2276 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2294 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12
d_tokenAlgebra_2294 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._∙_
d__'8729'__2298 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2298 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2294 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._._≈_
d__'8776'__2300 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2300 = erased
-- Ledger.Conway.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2302 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2302 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2304 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2306 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2308 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2310 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2312 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Value
d_Value_2314 :: T_TransactionStructure_22 -> ()
d_Value_2314 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2316 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addValue
d_addValue_2318 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_addValue_218
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin
d_coin_2320 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_coin_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2322 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2322 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2324 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_212
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2326 ::
  T_TransactionStructure_22 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2326 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.inject
d_inject_2328 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_inject_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.monoid
d_monoid_2330 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2330 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2294 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.policies
d_policies_2332 ::
  T_TransactionStructure_22 -> AgdaAny -> [AgdaAny]
d_policies_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2334 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2334 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                 (coe d_tokenAlgebra_2294 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.size
d_size_2336 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_size_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_size_206
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2338 ::
  T_TransactionStructure_22 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_sum'7515'_236
      (coe d_tokenAlgebra_2294 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ε
d_ε_2340 :: T_TransactionStructure_22 -> AgdaAny
d_ε_2340 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2294 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2344 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2346 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2346 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2348 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2348 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2350 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2350 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2352 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2356 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2358 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2360 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2362 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2362 ~v0 = du_isMagmaIsomorphism_2362
du_isMagmaIsomorphism_2362 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2362 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2364 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2364 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2364 v2
du_isMagmaMonomorphism_2364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2364 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2366 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2370 v0
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
d_isRelIsomorphism_2372 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2372 ~v0 ~v1 v2 = du_isRelIsomorphism_2372 v2
du_isRelIsomorphism_2372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2372 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2374 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2374 ~v0 ~v1 v2 = du_isRelMonomorphism_2374 v2
du_isRelMonomorphism_2374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2374 v0
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
d_surjective_2376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2378 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2380 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2384 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2386 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2388 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2390 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2390 ~v0 = du_isMagmaMonomorphism_2390
du_isMagmaMonomorphism_2390 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2390 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2396 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2396 ~v0 ~v1 v2 = du_isRelMonomorphism_2396 v2
du_isRelMonomorphism_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2398 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2400 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txidBytes
d_txidBytes_2402 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_txidBytes_2402 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14451 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.govStructure
d_govStructure_2404 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8
d_govStructure_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.GovStructure.C_GovStructure'46'constructor_3269
      (d_DecEq'45'TxId_1222 (coe v0)) (d_crypto_1268 (coe v0))
      (d_epochStructure_1572 (coe v0)) (d_scriptStructure_1808 (coe v0))
      (d_govParams_2276 (coe v0)) (d_globalConstants_1238 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2408 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2416 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2416 ~v0 = du_DecEq'45'GovActionType_2416
du_DecEq'45'GovActionType_2416 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2416
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_902
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2418 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2418 ~v0 = du_DecEq'45'GovRole_2418
du_DecEq'45'GovRole_2418 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2418
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_904
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2420 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_908
      (coe d_govStructure_2404 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2422 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2422 ~v0 = du_DecEq'45'Vote_2422
du_DecEq'45'Vote_2422 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2422
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_906
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2424 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2426 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782 ->
  ()
d_GovActionData_2426 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2428 :: T_TransactionStructure_22 -> ()
d_GovActionID_2428 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2430 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2432 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2434 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2436 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2438 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2440 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2440 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2440
du_HasCast'45'GovAction'45'Sigma_2440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2440
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_812
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2442 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2442 ~v0 = du_HasCast'45'GovVote_2442
du_HasCast'45'GovVote_2442 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2442
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_910
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2444 ::
  T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2444 ~v0
  = du_HasCast'45'HashProtected_2444
du_HasCast'45'HashProtected_2444 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_824
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2446 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2446 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2446
du_HasCast'45'HashProtected'45'MaybeScriptHash_2446 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2446
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_826
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2448 :: T_TransactionStructure_22 -> () -> ()
d_HashProtected_2448 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2452 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782 ->
  ()
d_NeedsHash_2452 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2466 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2468 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2470 :: T_TransactionStructure_22 -> ()
d_Voter_2470 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_2478 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  AgdaAny
d_gaData_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_808 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_2480 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782
d_gaType_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2482 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_2482 ~v0 = du_getDRepVote_2482
du_getDRepVote_2482 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getDRepVote_2482
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_912
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2488 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_2488 ~v0 = du_proposedCC_2488
du_proposedCC_2488 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_proposedCC_2488
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_916
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2496 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772 ->
  AgdaAny
d_hash_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_780 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2498 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_778 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_2502 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  AgdaAny
d_gaData_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_808 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_2504 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782
d_gaType_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2508 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800
d_action_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_898 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2510 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  AgdaAny
d_expiresIn_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_896
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2512 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  AgdaAny
d_prevAction_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_900
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2514 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_894
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2516 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_892 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2536 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800
d_action_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_868 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2538 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772
d_anchor_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_878 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2540 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Integer
d_deposit_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_874 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2542 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Maybe AgdaAny
d_policy_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_872 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2544 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  AgdaAny
d_prevAction_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_870
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2546 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_876
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2558 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772
d_anchor_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_852 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2560 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_846 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2562 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_828
d_vote_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_850 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2564 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_848 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DCert
d_DCert_2612 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2700 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2744 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2744 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1092 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_2890 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2890 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1092 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxIn
d_TxIn_2910 :: T_TransactionStructure_22 -> ()
d_TxIn_2910 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxOut
d_TxOut_2912 :: T_TransactionStructure_22 -> ()
d_TxOut_2912 = erased
-- Ledger.Conway.Transaction.TransactionStructure.UTxO
d_UTxO_2914 :: T_TransactionStructure_22 -> ()
d_UTxO_2914 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Wdrl
d_Wdrl_2916 :: T_TransactionStructure_22 -> ()
d_Wdrl_2916 = erased
-- Ledger.Conway.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2918 :: T_TransactionStructure_22 -> ()
d_RdmrPtr_2918 = erased
-- Ledger.Conway.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2920 :: T_TransactionStructure_22 -> ()
d_ProposedPPUpdates_2920 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Update
d_Update_2922 :: T_TransactionStructure_22 -> ()
d_Update_2922 = erased
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_2928 a0 a1 a2 = ()
newtype T_HasUTxO_2928
  = C_HasUTxO'46'constructor_18291 (AgdaAny ->
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_2936 ::
  T_HasUTxO_2928 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2936 v0
  = case coe v0 of
      C_HasUTxO'46'constructor_18291 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_2940 ::
  T_HasUTxO_2928 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2940 v0 = coe d_UTxOOf_2936 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody
d_TxBody_2942 a0 = ()
data T_TxBody_2942
  = C_TxBody'46'constructor_19471 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
                                  Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                  (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txins
d_txins_2982 ::
  T_TxBody_2942 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2982 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2984 ::
  T_TxBody_2942 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2984 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2986 ::
  T_TxBody_2942 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2986 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2988 :: T_TxBody_2942 -> Integer
d_txfee_2988 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.mint
d_mint_2990 :: T_TxBody_2942 -> AgdaAny
d_mint_2990 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2992 ::
  T_TxBody_2942 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2992 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2994 ::
  T_TxBody_2942 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_2994 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2996 ::
  T_TxBody_2942 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2996 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2998 ::
  T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_2998 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3000 ::
  T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_3000 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3002 :: T_TxBody_2942 -> Integer
d_txdonation_3002 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txup
d_txup_3004 ::
  T_TxBody_2942 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3004 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3006 :: T_TxBody_2942 -> Maybe AgdaAny
d_txADhash_3006 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3008 :: T_TxBody_2942 -> Maybe AgdaAny
d_txNetworkId_3008 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3010 :: T_TxBody_2942 -> Maybe Integer
d_curTreasury_3010 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txid
d_txid_3012 :: T_TxBody_2942 -> AgdaAny
d_txid_3012 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3014 ::
  T_TxBody_2942 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3014 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3016 :: T_TxBody_2942 -> [AgdaAny]
d_reqSigHash_3016 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3018 :: T_TxBody_2942 -> Maybe AgdaAny
d_scriptIntHash_3018 v0
  = case coe v0 of
      C_TxBody'46'constructor_19471 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3024 a0 a1 a2 = ()
newtype T_HasTxBody_3024
  = C_HasTxBody'46'constructor_19915 (AgdaAny -> T_TxBody_2942)
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3032 :: T_HasTxBody_3024 -> AgdaAny -> T_TxBody_2942
d_TxBodyOf_3032 v0
  = case coe v0 of
      C_HasTxBody'46'constructor_19915 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3036 :: T_HasTxBody_3024 -> AgdaAny -> T_TxBody_2942
d_TxBodyOf_3036 v0 = coe d_TxBodyOf_3032 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3042 a0 a1 a2 = ()
newtype T_Hastxfee_3042
  = C_Hastxfee'46'constructor_19961 (AgdaAny -> Integer)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3050 :: T_Hastxfee_3042 -> AgdaAny -> Integer
d_txfeeOf_3050 v0
  = case coe v0 of
      C_Hastxfee'46'constructor_19961 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3054 :: T_Hastxfee_3042 -> AgdaAny -> Integer
d_txfeeOf_3054 v0 = coe d_txfeeOf_3050 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3060 a0 a1 a2 = ()
newtype T_Hastxcerts_3060
  = C_Hastxcerts'46'constructor_20027 (AgdaAny ->
                                       [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3068 ::
  T_Hastxcerts_3060 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcertsOf_3068 v0
  = case coe v0 of
      C_Hastxcerts'46'constructor_20027 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3072 ::
  T_Hastxcerts_3060 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcertsOf_3072 v0 = coe d_txcertsOf_3068 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3078 a0 a1 a2 = ()
newtype T_Hastxprop_3078
  = C_Hastxprop'46'constructor_20093 (AgdaAny ->
                                      [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3086 ::
  T_Hastxprop_3078 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txpropOf_3086 v0
  = case coe v0 of
      C_Hastxprop'46'constructor_20093 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3090 ::
  T_Hastxprop_3078 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txpropOf_3090 v0 = coe d_txpropOf_3086 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid
d_Hastxid_3096 a0 a1 a2 = ()
newtype T_Hastxid_3096
  = C_Hastxid'46'constructor_20139 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3104 :: T_Hastxid_3096 -> AgdaAny -> AgdaAny
d_txidOf_3104 v0
  = case coe v0 of
      C_Hastxid'46'constructor_20139 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txidOf
d_txidOf_3108 :: T_Hastxid_3096 -> AgdaAny -> AgdaAny
d_txidOf_3108 v0 = coe d_txidOf_3104 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3110 a0 = ()
data T_TxWitnesses_3110
  = C_TxWitnesses'46'constructor_20251 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3120 ::
  T_TxWitnesses_3110 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3120 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20251 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3122 ::
  T_TxWitnesses_3110 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3122 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20251 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3124 ::
  T_TxWitnesses_3110 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_3124 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20251 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3126 ::
  T_TxWitnesses_3110 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3126 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20251 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3128 ::
  T_TransactionStructure_22 -> T_TxWitnesses_3110 -> [AgdaAny]
d_scriptsP1_3128 ~v0 v1 = du_scriptsP1_3128 v1
du_scriptsP1_3128 :: T_TxWitnesses_3110 -> [AgdaAny]
du_scriptsP1_3128 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404)
      (d_scripts_3122 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.Tx
d_Tx_3130 a0 = ()
data T_Tx_3130
  = C_Tx'46'constructor_20411 T_TxBody_2942 T_TxWitnesses_3110
                              Integer Bool (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Tx.body
d_body_3142 :: T_Tx_3130 -> T_TxBody_2942
d_body_3142 v0
  = case coe v0 of
      C_Tx'46'constructor_20411 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.wits
d_wits_3144 :: T_Tx_3130 -> T_TxWitnesses_3110
d_wits_3144 v0
  = case coe v0 of
      C_Tx'46'constructor_20411 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.txsize
d_txsize_3146 :: T_Tx_3130 -> Integer
d_txsize_3146 v0
  = case coe v0 of
      C_Tx'46'constructor_20411 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.isValid
d_isValid_3148 :: T_Tx_3130 -> Bool
d_isValid_3148 v0
  = case coe v0 of
      C_Tx'46'constructor_20411 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.txAD
d_txAD_3150 :: T_Tx_3130 -> Maybe AgdaAny
d_txAD_3150 v0
  = case coe v0 of
      C_Tx'46'constructor_20411 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3152 ::
  T_TransactionStructure_22 -> T_HasTxBody_3024
d_HasTxBody'45'Tx_3152 ~v0 = du_HasTxBody'45'Tx_3152
du_HasTxBody'45'Tx_3152 :: T_HasTxBody_3024
du_HasTxBody'45'Tx_3152
  = coe
      C_HasTxBody'46'constructor_19915
      (coe (\ v0 -> d_body_3142 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3154 ::
  T_TransactionStructure_22 -> T_Hastxfee_3042
d_Hastxfee'45'Tx_3154 ~v0 = du_Hastxfee'45'Tx_3154
du_Hastxfee'45'Tx_3154 :: T_Hastxfee_3042
du_Hastxfee'45'Tx_3154
  = coe
      C_Hastxfee'46'constructor_19961
      (coe (\ v0 -> d_txfee_2988 (coe d_body_3142 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3156 ::
  T_TransactionStructure_22 -> T_Hastxcerts_3060
d_Hastxcerts'45'Tx_3156 ~v0 = du_Hastxcerts'45'Tx_3156
du_Hastxcerts'45'Tx_3156 :: T_Hastxcerts_3060
du_Hastxcerts'45'Tx_3156
  = coe
      C_Hastxcerts'46'constructor_20027
      (coe (\ v0 -> d_txcerts_2994 (coe d_body_3142 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3158 ::
  T_TransactionStructure_22 -> T_Hastxprop_3078
d_Hastxprop'45'Tx_3158 ~v0 = du_Hastxprop'45'Tx_3158
du_Hastxprop'45'Tx_3158 :: T_Hastxprop_3078
du_Hastxprop'45'Tx_3158
  = coe
      C_Hastxprop'46'constructor_20093
      (coe (\ v0 -> d_txprop_3000 (coe d_body_3142 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3160 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
d_HasWdrls'45'TxBody_3160 ~v0 = du_HasWdrls'45'TxBody_3160
du_HasWdrls'45'TxBody_3160 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
du_HasWdrls'45'TxBody_3160
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18129
      (coe (\ v0 -> d_txwdrls_2996 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3162 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
d_HasWdrls'45'Tx_3162 ~v0 = du_HasWdrls'45'Tx_3162
du_HasWdrls'45'Tx_3162 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
du_HasWdrls'45'Tx_3162
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18129
      (coe (\ v0 -> d_txwdrls_2996 (coe d_body_3142 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3164 :: T_TransactionStructure_22 -> T_Hastxid_3096
d_Hastxid'45'Tx_3164 ~v0 = du_Hastxid'45'Tx_3164
du_Hastxid'45'Tx_3164 :: T_Hastxid_3096
du_Hastxid'45'Tx_3164
  = coe
      C_Hastxid'46'constructor_20139
      (coe (\ v0 -> d_txid_3012 (coe d_body_3142 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.getValue
d_getValue_3166 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3166 ~v0 v1 = du_getValue_3166 v1
du_getValue_3166 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3166 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3170 :: T_TransactionStructure_22 -> ()
d_TxOut'688'_3170 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txOutHash
d_txOutHash_3172 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3172 v0 v1
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
                                          MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
                                          (d_scriptStructure_1808 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                                                (coe d_scriptStructure_1808 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                                                (coe d_scriptStructure_1808 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3182 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3182 ~v0 v1 = du_getValue'688'_3182 v1
du_getValue'688'_3182 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3182 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3186 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3186 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1222 (coe v0))
               (coe d_DecEq'45'Ix_1220 (coe v0))))
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
d_scriptOuts_3192 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3192 ~v0 v1 = du_scriptOuts_3192 v1
du_scriptOuts_3192 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3192 v0
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
d_txinsScript_3200 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3200 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1222 (coe v0))
               (coe d_DecEq'45'Ix_1220 (coe v0))))
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
               (coe du_scriptOuts_3192 (coe v2)))))
-- Ledger.Conway.Transaction.TransactionStructure.refScripts
d_refScripts_3206 ::
  T_TransactionStructure_22 ->
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3206 v0 v1 v2
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
                  (coe d_DecEq'45'TxId_1222 (coe v0))
                  (coe d_DecEq'45'Ix_1220 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_2982 (coe d_body_3142 (coe v1)))
               (coe d_refInputs_2984 (coe d_body_3142 (coe v1))))))
-- Ledger.Conway.Transaction.TransactionStructure._._.collateral
d_collateral_3218 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3218 v0 ~v1 = du_collateral_3218 v0
du_collateral_3218 ::
  T_Tx_3130 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3218 v0
  = coe d_collateral_3014 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3220 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3220 v0 ~v1 = du_curTreasury_3220 v0
du_curTreasury_3220 :: T_Tx_3130 -> Maybe Integer
du_curTreasury_3220 v0
  = coe d_curTreasury_3010 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.mint
d_mint_3222 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3222 v0 ~v1 = du_mint_3222 v0
du_mint_3222 :: T_Tx_3130 -> AgdaAny
du_mint_3222 v0 = coe d_mint_2990 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.refInputs
d_refInputs_3224 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3224 v0 ~v1 = du_refInputs_3224 v0
du_refInputs_3224 ::
  T_Tx_3130 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3224 v0
  = coe d_refInputs_2984 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3226 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3226 v0 ~v1 = du_reqSigHash_3226 v0
du_reqSigHash_3226 :: T_Tx_3130 -> [AgdaAny]
du_reqSigHash_3226 v0
  = coe d_reqSigHash_3016 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3228 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3228 v0 ~v1 = du_scriptIntHash_3228 v0
du_scriptIntHash_3228 :: T_Tx_3130 -> Maybe AgdaAny
du_scriptIntHash_3228 v0
  = coe d_scriptIntHash_3018 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txADhash
d_txADhash_3230 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3230 v0 ~v1 = du_txADhash_3230 v0
du_txADhash_3230 :: T_Tx_3130 -> Maybe AgdaAny
du_txADhash_3230 v0
  = coe d_txADhash_3006 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3232 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3232 v0 ~v1 = du_txNetworkId_3232 v0
du_txNetworkId_3232 :: T_Tx_3130 -> Maybe AgdaAny
du_txNetworkId_3232 v0
  = coe d_txNetworkId_3008 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txcerts
d_txcerts_3234 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_3234 v0 ~v1 = du_txcerts_3234 v0
du_txcerts_3234 ::
  T_Tx_3130 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
du_txcerts_3234 v0 = coe d_txcerts_2994 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txdonation
d_txdonation_3236 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3236 v0 ~v1 = du_txdonation_3236 v0
du_txdonation_3236 :: T_Tx_3130 -> Integer
du_txdonation_3236 v0
  = coe d_txdonation_3002 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txfee
d_txfee_3238 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3238 v0 ~v1 = du_txfee_3238 v0
du_txfee_3238 :: T_Tx_3130 -> Integer
du_txfee_3238 v0 = coe d_txfee_2988 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txid
d_txid_3240 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3240 v0 ~v1 = du_txid_3240 v0
du_txid_3240 :: T_Tx_3130 -> AgdaAny
du_txid_3240 v0 = coe d_txid_3012 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txins
d_txins_3242 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3242 v0 ~v1 = du_txins_3242 v0
du_txins_3242 ::
  T_Tx_3130 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3242 v0 = coe d_txins_2982 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txouts
d_txouts_3244 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3244 v0 ~v1 = du_txouts_3244 v0
du_txouts_3244 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3244 v0 = coe d_txouts_2986 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txprop
d_txprop_3246 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_3246 v0 ~v1 = du_txprop_3246 v0
du_txprop_3246 ::
  T_Tx_3130 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
du_txprop_3246 v0 = coe d_txprop_3000 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txup
d_txup_3248 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3248 v0 ~v1 = du_txup_3248 v0
du_txup_3248 ::
  T_Tx_3130 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3248 v0 = coe d_txup_3004 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvldt
d_txvldt_3250 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3250 v0 ~v1 = du_txvldt_3250 v0
du_txvldt_3250 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3250 v0 = coe d_txvldt_2992 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvote
d_txvote_3252 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_3252 v0 ~v1 = du_txvote_3252 v0
du_txvote_3252 ::
  T_Tx_3130 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
du_txvote_3252 v0 = coe d_txvote_2998 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3254 ::
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3254 v0 ~v1 = du_txwdrls_3254 v0
du_txwdrls_3254 ::
  T_Tx_3130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3254 v0 = coe d_txwdrls_2996 (coe d_body_3142 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.txscripts
d_txscripts_3256 ::
  T_TransactionStructure_22 ->
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3256 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3122 (coe d_wits_3144 (coe v1)))
      (coe d_refScripts_3206 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3266 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe d_crypto_1268 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_3278 (coe v0) (coe v2) (coe v3)))))
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
                 (coe du_m_3278 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Transaction.TransactionStructure._.m
d_m_3278 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3278 v0 ~v1 v2 v3 = du_m_3278 v0 v2 v3
du_m_3278 ::
  T_TransactionStructure_22 ->
  T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3278 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1268 (coe v0)))
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
                  MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
                  (d_scriptStructure_1808 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
                        (coe d_scriptStructure_1808 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                        (coe d_scriptStructure_1808 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3256 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3280 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3280 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
              (d_tokenAlgebra_2294 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
