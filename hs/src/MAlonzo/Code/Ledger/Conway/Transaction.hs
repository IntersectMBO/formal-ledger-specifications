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
  = C_TransactionStructure'46'constructor_14611 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
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
d_THash_90 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 -> ()
d_THash_90 = erased
-- Ledger.Conway.Transaction._.Ser
d_Ser_98 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136 -> ()
d_Ser_98 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra
d_TokenAlgebra_126 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__134 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__134 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_136 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_138 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.Value
d_Value_146 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_146 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_148 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coin
d_coin_152 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_152 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_156 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_158 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_158 = erased
-- Ledger.Conway.Transaction._.TokenAlgebra.inject
d_inject_160 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_160 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.policies
d_policies_164 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [AgdaAny]
d_policies_164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.Transaction._.TokenAlgebra.size
d_size_168 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_168 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Ix
d_Ix_1238 :: T_TransactionStructure_22 -> ()
d_Ix_1238 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxId
d_TxId_1240 :: T_TransactionStructure_22 -> ()
d_TxId_1240 = erased
-- Ledger.Conway.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1242 :: T_TransactionStructure_22 -> ()
d_AuxiliaryData_1242 = erased
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1244 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1244 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1246 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1246 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1248 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_adHashingScheme_1248 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1252 :: T_TransactionStructure_22 -> ()
d_THash_1252 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1254 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
      (coe d_adHashingScheme_1248 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1256 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
      (coe d_adHashingScheme_1248 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1258 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
      (coe d_adHashingScheme_1248 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1260 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
      (coe d_adHashingScheme_1248 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.globalConstants
d_globalConstants_1262 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_1262 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1266 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1268 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Network
d_Network_1270 :: T_TransactionStructure_22 -> ()
d_Network_1270 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1272 :: T_TransactionStructure_22 -> AgdaAny
d_NetworkId_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1274 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1276 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Quorum
d_Quorum_1278 :: T_TransactionStructure_22 -> Integer
d_Quorum_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1280 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1282 :: T_TransactionStructure_22 -> Integer
d_SlotsPerEpoch'7580'_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1284 ::
  T_TransactionStructure_22 -> Integer
d_StabilityWindow'7580'_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1286 ::
  T_TransactionStructure_22 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1286 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1288 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_312
      (coe d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.crypto
d_crypto_1290 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_1290 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1294 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1294 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1296 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
      (coe d_crypto_1290 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1298 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1298 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1300 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1300 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1302 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1302 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1304 :: T_TransactionStructure_22 -> ()
d_THash_1304 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1306 :: T_TransactionStructure_22 -> ()
d_KeyPair_1306 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.SKey
d_SKey_1308 :: T_TransactionStructure_22 -> ()
d_SKey_1308 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1310 :: T_TransactionStructure_22 -> ()
d_ScriptHash_1310 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Ser
d_Ser_1312 :: T_TransactionStructure_22 -> ()
d_Ser_1312 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1314 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
      (coe d_crypto_1290 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1316 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1316 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.Sig
d_Sig_1318 :: T_TransactionStructure_22 -> ()
d_Sig_1318 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1320 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1320 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.VKey
d_VKey_1322 :: T_TransactionStructure_22 -> ()
d_VKey_1322 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1324 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1324 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned
d_isSigned_1326 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1326 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1328 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1328 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_isSigned'45'correct_130
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.khs
d_khs_1330 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
      (coe d_crypto_1290 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.pkk
d_pkk_1332 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
      (coe d_crypto_1290 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sign
d_sign_1334 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1334 v0
  = let v1 = d_crypto_1290 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
         (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1338 :: T_TransactionStructure_22 -> ()
d_MemoryEstimate_1338 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1340 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1344 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1344 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1346 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1346 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1348 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1348 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1350 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1352 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1354 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1356 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1358 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1360 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_1360 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1362 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1364 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1364 ~v0 = du_addValue_1364
du_addValue_1364 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1364
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1366 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_1366 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1368 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1368 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1370 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1372 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1372 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1374 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_1374 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1376 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1376 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1378 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [AgdaAny]
d_policies_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1380 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1380 v0
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
d_size_1382 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_1382 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1384 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1384 ~v0 = du_sum'7515'_1384
du_sum'7515'_1384 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1384
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1386 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny
d_ε_1386 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1390 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1396 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1398 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1402 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1408 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1408 ~v0 = du_isMagmaIsomorphism_1408
du_isMagmaIsomorphism_1408 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1408 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1410 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1410 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1410 v2
du_isMagmaMonomorphism_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1414 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1416 v0
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
d_isRelIsomorphism_1418 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1418 ~v0 ~v1 v2 = du_isRelIsomorphism_1418 v2
du_isRelIsomorphism_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1420 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1420 ~v0 ~v1 v2 = du_isRelMonomorphism_1420 v2
du_isRelMonomorphism_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1420 v0
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
d_surjective_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1424 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1426 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1430 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1436 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1436 ~v0 = du_isMagmaMonomorphism_1436
du_isMagmaMonomorphism_1436 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1436 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1442 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1442 ~v0 ~v1 v2 = du_isRelMonomorphism_1442 v2
du_isRelMonomorphism_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1444 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1446 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Addr
d_Addr_1450 :: T_TransactionStructure_22 -> ()
d_Addr_1450 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1452 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1454 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Credential
d_Credential_1456 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1458 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1458 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1460 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1460 ~v0 = du_Dec'45'isScript_1460
du_Dec'45'isScript_1460 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1460
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1462 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1462 ~v0 = du_Dec'45'isVKey_1462
du_Dec'45'isVKey_1462 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1462
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1464 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1262 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1290 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1466 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1262 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1290 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1468 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1290 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1470 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1262 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe d_crypto_1290 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1290 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1472 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1474 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_1474 ~v0
  = du_HasCredential'45'RwdAddr_1474
du_HasCredential'45'RwdAddr_1474 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_1474
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1476 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1478 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_1478 ~v0
  = du_HasNetworkId'45'BaseAddr_1478
du_HasNetworkId'45'BaseAddr_1478 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BaseAddr_1478
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1480 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_1480 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1480
du_HasNetworkId'45'BootstrapAddr_1480 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'BootstrapAddr_1480
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1482 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_1482 ~v0
  = du_HasNetworkId'45'RwdAddr_1482
du_HasNetworkId'45'RwdAddr_1482 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_1482
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1488 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1488 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1490 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1494 :: T_TransactionStructure_22 -> ()
d_ScriptAddr_1494 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1496 :: T_TransactionStructure_22 -> ()
d_ScriptBaseAddr_1496 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1498 :: T_TransactionStructure_22 -> ()
d_ScriptBootstrapAddr_1498 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1502 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1502 ~v0 = du_Show'45'Credential_1502
du_Show'45'Credential_1502 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1502 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1504 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1504 ~v0
  = du_Show'45'Credential'215'Coin_1504
du_Show'45'Credential'215'Coin_1504 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1504 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1506 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1506 ~v0 = du_Show'45'RwdAddr_1506
du_Show'45'RwdAddr_1506 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1506
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1508 :: T_TransactionStructure_22 -> ()
d_VKeyAddr_1508 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1510 :: T_TransactionStructure_22 -> ()
d_VKeyBaseAddr_1510 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1512 :: T_TransactionStructure_22 -> ()
d_VKeyBootstrapAddr_1512 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1516 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
d_getScriptHash_1516 ~v0 = du_getScriptHash_1516
du_getScriptHash_1516 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> AgdaAny
du_getScriptHash_1516
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1518 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1520 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1520 ~v0 = du_isBootstrapAddr'63'_1520
du_isBootstrapAddr'63'_1520 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1520
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1522 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_1522 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1524 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isKeyHashObj_1524 ~v0 = du_isKeyHashObj_1524
du_isKeyHashObj_1524 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isKeyHashObj_1524
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1526 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_1526 ~v0 = du_isKeyHashObj'7495'_1526
du_isKeyHashObj'7495'_1526 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
du_isKeyHashObj'7495'_1526
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Transaction.TransactionStructure._.isScript
d_isScript_1528 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1530 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1530 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1532 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
d_isScriptObj_1532 ~v0 = du_isScriptObj_1532
du_isScriptObj_1532 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe AgdaAny
du_isScriptObj_1532
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1534 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_1534 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.isVKey
d_isVKey_1536 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1538 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1538 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.netId
d_netId_1540 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1540 ~v0 = du_netId_1540
du_netId_1540 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1540 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Transaction.TransactionStructure._.payCred
d_payCred_1542 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_1542 ~v0 = du_payCred_1542
du_payCred_1542 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_payCred_1542
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1544 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_1544 ~v0 = du_stakeCred_1544
du_stakeCred_1544 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_stakeCred_1544
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.net
d_net_1548 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> AgdaAny
d_net_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1550 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1552 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1556 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1556 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1558 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> AgdaAny
d_net_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1560 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1570 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1570 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1574 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1574 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.net
d_net_1578 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1578 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1580 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.epochStructure
d_epochStructure_1594 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_1594 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1598 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1600 ::
  T_TransactionStructure_22 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1602 ::
  T_TransactionStructure_22 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1602 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1604 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1606 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1608 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Epoch
d_Epoch_1610 :: T_TransactionStructure_22 -> ()
d_Epoch_1610 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1612 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1614 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Slot
d_Slot_1616 :: T_TransactionStructure_22 -> ()
d_Slot_1616 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1618 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1620 :: T_TransactionStructure_22 -> AgdaAny
d_StabilityWindow_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1622 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addSlot
d_addSlot_1624 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.epoch
d_epoch_1626 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_epoch_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1628 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_firstSlot_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1630 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1632 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_suc'7497'_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1634 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_ℕtoEpoch_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1638 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Script.T_Timelock_266 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'evalTimelock_324
      (coe d_crypto_1290 (coe v0)) (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1640 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Timelock_280
      (coe d_crypto_1290 (coe v0)) (coe d_epochStructure_1594 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1642 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1644 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1658 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Timelock
d_Timelock_1660 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1674 a0 a1 a2 a3 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1678 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1680 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1682 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1684 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 -> ()
d_P1Script_1684 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1686 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1686 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1690 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1690 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1692 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_CostModel_1692 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1694 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_T_1694 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1696 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_THash_1696 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1698 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1698 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1700 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Datum_1700 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1702 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1704 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1706 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1708 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1710 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1712 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1714 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1714 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1716 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1716 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1718 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1720 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_ExUnits_1720 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1722 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1724 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_LangDepView_1724 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1726 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Language_1726 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1728 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_PlutusScript_1728 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1730 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV1_1730 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1732 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV2_1732 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1734 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV3_1734 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1736 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Prices_1736 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1738 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Redeemer_1738 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1740 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1742 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1744 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1746 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1746 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1748 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1748 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1750 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1752 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny
d_language_1752 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_language_260 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1754 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  () -> AgdaAny -> AgdaAny
d_toData_1754 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_toData_264 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1756 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1756 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1760 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1760 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1762 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_CostModel_1762 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1764 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_T_1764 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1766 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_THash_1766 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1768 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1770 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Datum_1770 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1772 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1774 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1776 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1778 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1780 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1782 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1784 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1786 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1788 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1788 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1790 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1790 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1792 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1794 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_ExUnits_1794 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1796 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1798 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1800 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1800 ~v0 = du_Hashable'45'Script_1800
du_Hashable'45'Script_1800 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1800
  = coe MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1802 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_LangDepView_1802 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1804 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Language_1804 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1806 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_P1Script_1806 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1808 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_1808 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1810 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1812 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1814 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1816 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Prices_1816 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1818 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Redeemer_1818 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1820 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Script_1820 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1822 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1824 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1826 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1828 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1828 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1830 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1830 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1832 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1834 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1836 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1838 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1838 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1840 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1840 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1842 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1844 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1844 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1846 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1846 = erased
-- Ledger.Conway.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1876 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_scriptStructure_1876 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1880 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1880 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.CostModel
d_CostModel_1882 :: T_TransactionStructure_22 -> ()
d_CostModel_1882 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.T
d_T_1884 :: T_TransactionStructure_22 -> ()
d_T_1884 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.THash
d_THash_1886 :: T_TransactionStructure_22 -> ()
d_THash_1886 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1888 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Datum
d_Datum_1890 :: T_TransactionStructure_22 -> ()
d_Datum_1890 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1892 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1894 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1896 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1898 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1900 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1902 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1904 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1906 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1908 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1908 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1876 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1910 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1910 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1876 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1912 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1914 :: T_TransactionStructure_22 -> ()
d_ExUnits_1914 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1916 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1918 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1920 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1922 :: T_TransactionStructure_22 -> ()
d_LangDepView_1922 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Language
d_Language_1924 :: T_TransactionStructure_22 -> ()
d_Language_1924 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.P1Script
d_P1Script_1926 :: T_TransactionStructure_22 -> ()
d_P1Script_1926 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1928 :: T_TransactionStructure_22 -> ()
d_PlutusScript_1928 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1930 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV1_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1932 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV2_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1934 :: T_TransactionStructure_22 -> AgdaAny
d_PlutusV3_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Prices
d_Prices_1936 :: T_TransactionStructure_22 -> ()
d_Prices_1936 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1938 :: T_TransactionStructure_22 -> ()
d_Redeemer_1938 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Script
d_Script_1940 :: T_TransactionStructure_22 -> ()
d_Script_1940 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1942 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1944 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1946 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1948 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1948 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1876 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1950 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1950 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe
                 MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                 (coe d_scriptStructure_1876 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1952 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe d_scriptStructure_1876 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1954 ::
  T_TransactionStructure_22 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.language
d_language_1956 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_language_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.p1s
d_p1s_1958 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ps
d_ps_1960 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ps_450
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.toData
d_toData_1962 ::
  T_TransactionStructure_22 -> () -> AgdaAny -> AgdaAny
d_toData_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_ps_450
         (coe d_scriptStructure_1876 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1964 ::
  T_TransactionStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1964 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1966 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1966 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt
d_Acnt_1970 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1972 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1972 ~v0
  = du_DecEq'45'DrepThresholds_1972
du_DecEq'45'DrepThresholds_1972 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1972
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_578
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1974 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1974 ~v0 = du_DecEq'45'PParamGroup_1974
du_DecEq'45'PParamGroup_1974 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1974
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_584
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1976 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_582
      (coe d_epochStructure_1594 (coe v0))
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1978 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1978 ~v0
  = du_DecEq'45'PoolThresholds_1978
du_DecEq'45'PoolThresholds_1978 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1978
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_580
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1980 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams
d_GovParams_1984 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1988 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1988 ~v0 = du_HasCast'45'Acnt_1988
du_HasCast'45'Acnt_1988 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1988
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_186
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams
d_HasPParams_1990 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_1992 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_1994 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_1996 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
d_HasgovActionDeposit'45'PParams_1996 ~v0
  = du_HasgovActionDeposit'45'PParams_1996
du_HasgovActionDeposit'45'PParams_1996 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
du_HasgovActionDeposit'45'PParams_1996
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_460
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_1998 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2002 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParams
d_PParams_2004 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2006 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2008 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_2008 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2010 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2012 :: T_TransactionStructure_22 -> ()
d_ProtVer_2012 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2016 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2016 ~v0 = du_Show'45'DrepThresholds_2016
du_Show'45'DrepThresholds_2016 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2016
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_586
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2018 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_590
      (coe d_epochStructure_1594 (coe v0))
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2020 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2020 ~v0 = du_Show'45'PoolThresholds_2020
du_Show'45'PoolThresholds_2020 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2020
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_588
-- Ledger.Conway.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2022 ::
  T_TransactionStructure_22 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2022 ~v0 = du_Show'45'ProtVer_2022
du_Show'45'ProtVer_2022 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2022
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2030 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_2032 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2034 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2034 ~v0 = du_paramsWF'45'elim_2034
du_paramsWF'45'elim_2034 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2034 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_550 v2
-- Ledger.Conway.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2036 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> ()
d_paramsWellFormed_2036 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2038 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
d_positivePParams_2038 ~v0 = du_positivePParams_2038
du_positivePParams_2038 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
du_positivePParams_2038
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_462
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2040 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2042 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2042 ~v0 = du_pvCanFollow'63'_2042
du_pvCanFollow'63'_2042 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2042
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1426
-- Ledger.Conway.Transaction.TransactionStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_2044 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_2044 ~v0
  = du_refScriptCostStride'62'0_2044
du_refScriptCostStride'62'0_2044 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_2044 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_refScriptCostStride'62'0_572
      v0
-- Ledger.Conway.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_2046 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_2046 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2052 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_2052 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_2054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_222 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_224 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2062 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_226 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_228 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2066 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_230 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2068 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_232 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_234 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2072 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_236 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_238 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2076 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_240 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 -> ()
d_UpdateT_2082 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_2086 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2090 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> ()
d_ppdWellFormed_2090 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_2096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_2108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2124 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_2124 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a
d_a_2126 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_2126 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.a0
d_a0_2128 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2128 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.b
d_b_2130 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_2130 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2132 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2134 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_2134 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2136 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2138 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2140 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_2140 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2142 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2144 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_2144 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2146 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2148 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2150 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2152 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_2152 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2154 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2156 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2158 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2160 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2162 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2164 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2166 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2168 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_2168 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2170 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_2170 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2172 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2174 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2176 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2178 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_2178 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2180 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_2180 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2182 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.prices
d_prices_2184 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_2184 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.pv
d_pv_2186 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2186 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2188 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2190 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2192 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2192 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2196 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 -> ()
d_UpdateT_2196 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2198 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2200 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2200 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2202 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_2202 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2204 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2208 ::
  T_TransactionStructure_22 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2208 ~v0 = du__'63''8599'__2208
du__'63''8599'__2208 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2208 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1218 v1 v2
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2210 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1420
      (coe d_epochStructure_1594 (coe v0))
      (coe d_scriptStructure_1876 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2212 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2214 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyPParamsUpdate_2214 ~v0 = du_applyPParamsUpdate_2214
du_applyPParamsUpdate_2214 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
du_applyPParamsUpdate_2214
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1266
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2216 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_modifiedUpdateGroups_2216 ~v0 = du_modifiedUpdateGroups_2216
du_modifiedUpdateGroups_2216 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
du_modifiedUpdateGroups_2216
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1202
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2218 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesEconomicGroup_2218 ~v0 = du_modifiesEconomicGroup_2218
du_modifiesEconomicGroup_2218 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesEconomicGroup_2218
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_898
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2220 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesGovernanceGroup_2220 ~v0
  = du_modifiesGovernanceGroup_2220
du_modifiesGovernanceGroup_2220 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesGovernanceGroup_2220
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1050
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2222 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesNetworkGroup_2222 ~v0 = du_modifiesNetworkGroup_2222
du_modifiesNetworkGroup_2222 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesNetworkGroup_2222
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_822
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2224 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesSecurityGroup_2224 ~v0 = du_modifiesSecurityGroup_2224
du_modifiesSecurityGroup_2224 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesSecurityGroup_2224
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1126
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2226 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesTechnicalGroup_2226 ~v0 = du_modifiesTechnicalGroup_2226
du_modifiesTechnicalGroup_2226 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
du_modifiesTechnicalGroup_2226
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_974
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2228 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> ()
d_paramsUpdateWellFormed_2228 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2230 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2230 ~v0
  = du_paramsUpdateWellFormed'63'_2230
du_paramsUpdateWellFormed'63'_2230 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2230
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_818
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2232 ::
  T_TransactionStructure_22 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_2232 ~v0 = du_'8801''45'update_2232
du_'8801''45'update_2232 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_2232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1232 v1
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2236 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_Emax_2236 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_712 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2238 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_a_2238 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_682 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2240 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2240 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_710 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2242 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_b_2242 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_684 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2244 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMaxTermLength_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_734 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2246 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMinSize_2246 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_732 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2248 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_coinsPerUTxOByte_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_694 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2250 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_collateralPercentage_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_716
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2252 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_costmdls_2252 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_718 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2254 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_drepActivity_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_730 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2256 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepDeposit_2256 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_728 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2258 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_720 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2260 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionDeposit_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_726 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2262 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionLifetime_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_724 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2264 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_keyDeposit_2264 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_686 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2266 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxBlockExUnits_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_678 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2268 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxBlockSize_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_666 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2270 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxCollateralInputs_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_674
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2272 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxHeaderSize_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_670 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2274 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_702
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2276 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_700
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2278 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_maxTxExUnits_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_676 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2280 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxTxSize_2280 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_668 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2282 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxValSize_2282 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_672 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2284 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_698
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2286 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_minUTxOValue_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_708 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2288 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_690 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2290 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_nopt_2290 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_714 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2292 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_poolDeposit_2292 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_688 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2294 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_722 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2296 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe AgdaAny
d_prices_2296 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_696 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2298 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2298 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_680 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2300 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_706
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2302 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_refScriptCostStride_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_704
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2304 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2304 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_692 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2308 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2308 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_254 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2310 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2310 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_256 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2312 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2312 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_258 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2314 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2314 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_260 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2316 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2316 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_262 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.govParams
d_govParams_2324 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
d_govParams_2324 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2328 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538
      (coe d_govParams_2324 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2330 :: T_TransactionStructure_22 -> ()
d_UpdateT_2330 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2332 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_2324 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2334 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
      (coe d_govParams_2324 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2336 ::
  T_TransactionStructure_22 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_2324 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2338 :: T_TransactionStructure_22 -> AgdaAny -> ()
d_ppdWellFormed_2338 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2340 ::
  T_TransactionStructure_22 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe
         MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
         (coe d_govParams_2324 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2342 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
d_tokenAlgebra_2342 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._._∙_
d__'8729'__2346 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2346 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2342 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._._≈_
d__'8776'__2348 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2348 = erased
-- Ledger.Conway.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2350 ::
  T_TransactionStructure_22 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2350 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2352 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2354 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2356 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2358 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2360 a0 a1 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.Value
d_Value_2362 :: T_TransactionStructure_22 -> ()
d_Value_2362 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2364 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.addValue
d_addValue_2366 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin
d_coin_2368 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_coin_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2370 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2370 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2372 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2374 ::
  T_TransactionStructure_22 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2374 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.inject
d_inject_2376 :: T_TransactionStructure_22 -> Integer -> AgdaAny
d_inject_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.monoid
d_monoid_2378 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2378 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2342 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.policies
d_policies_2380 ::
  T_TransactionStructure_22 -> AgdaAny -> [AgdaAny]
d_policies_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2382 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2382 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                 (coe d_tokenAlgebra_2342 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Transaction.TransactionStructure._.size
d_size_2384 :: T_TransactionStructure_22 -> AgdaAny -> Integer
d_size_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2386 ::
  T_TransactionStructure_22 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
      (coe d_tokenAlgebra_2342 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.ε
d_ε_2388 :: T_TransactionStructure_22 -> AgdaAny
d_ε_2388 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe d_tokenAlgebra_2342 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2392 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2398 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2400 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2404 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2408 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2410 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2410 ~v0 = du_isMagmaIsomorphism_2410
du_isMagmaIsomorphism_2410 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2410 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2412 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2412 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2412 v2
du_isMagmaMonomorphism_2412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2414 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2418 v0
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
d_isRelIsomorphism_2420 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2420 ~v0 ~v1 v2 = du_isRelIsomorphism_2420 v2
du_isRelIsomorphism_2420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2422 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2422 ~v0 ~v1 v2 = du_isRelMonomorphism_2422 v2
du_isRelMonomorphism_2422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2422 v0
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
d_surjective_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2426 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2428 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2432 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2438 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2438 ~v0 = du_isMagmaMonomorphism_2438
du_isMagmaMonomorphism_2438 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2438 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2444 ::
  T_TransactionStructure_22 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2444 ~v0 ~v1 v2 = du_isRelMonomorphism_2444 v2
du_isRelMonomorphism_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2446 = erased
-- Ledger.Conway.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2448 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txidBytes
d_txidBytes_2450 :: T_TransactionStructure_22 -> AgdaAny -> AgdaAny
d_txidBytes_2450 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.govStructure
d_govStructure_2452 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8
d_govStructure_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.GovStructure.C_GovStructure'46'constructor_3123
      (d_DecEq'45'TxId_1246 (coe v0)) (d_crypto_1290 (coe v0))
      (d_epochStructure_1594 (coe v0)) (d_scriptStructure_1876 (coe v0))
      (d_govParams_2324 (coe v0)) (d_globalConstants_1262 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2456 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2464 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2464 ~v0 = du_DecEq'45'GovActionType_2464
du_DecEq'45'GovActionType_2464 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2464
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_880
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2466 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2466 ~v0 = du_DecEq'45'GovRole_2466
du_DecEq'45'GovRole_2466 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2466
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2468 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
      (coe d_govStructure_2452 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2470 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2470 ~v0 = du_DecEq'45'Vote_2470
du_DecEq'45'Vote_2470 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2470
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_884
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2472 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2474 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_GovActionData_2474 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2476 :: T_TransactionStructure_22 -> ()
d_GovActionID_2476 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2478 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2480 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2482 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2484 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2486 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2488 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2488 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2488
du_HasCast'45'GovAction'45'Sigma_2488 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2488
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_790
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2490 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2490 ~v0 = du_HasCast'45'GovVote_2490
du_HasCast'45'GovVote_2490 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2490
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_888
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2492 ::
  T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2492 ~v0
  = du_HasCast'45'HashProtected_2492
du_HasCast'45'HashProtected_2492 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_802
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2494 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2494 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2494
du_HasCast'45'HashProtected'45'MaybeScriptHash_2494 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2494
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_804
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2496 :: T_TransactionStructure_22 -> () -> ()
d_HashProtected_2496 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2500 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_NeedsHash_2500 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2514 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2516 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2518 :: T_TransactionStructure_22 -> ()
d_Voter_2518 = erased
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_2526 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_2528 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2530 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_2530 ~v0 = du_getDRepVote_2530
du_getDRepVote_2530 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getDRepVote_2530
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_890
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2536 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_2536 ~v0 = du_proposedCC_2536
du_proposedCC_2536 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_proposedCC_2536
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_894
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2544 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750 ->
  AgdaAny
d_hash_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_758 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2546 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_756 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_2550 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_2552 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2556 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2558 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  AgdaAny
d_expiresIn_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_874
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2560 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  AgdaAny
d_prevAction_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_878
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2562 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_872
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2564 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_870 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2584 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_846 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2586 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_856 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2588 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Integer
d_deposit_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_852 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2590 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Maybe AgdaAny
d_policy_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_850 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2592 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  AgdaAny
d_prevAction_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_848
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2594 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_854
      (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2606 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_830 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2608 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_824 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2610 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_806
d_vote_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_828 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2612 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_826 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.DCert
d_DCert_2660 a0 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2748 a0 a1 a2 = ()
-- Ledger.Conway.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2792 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2792 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1070 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_2938 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2938 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1070 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxIn
d_TxIn_2958 :: T_TransactionStructure_22 -> ()
d_TxIn_2958 = erased
-- Ledger.Conway.Transaction.TransactionStructure.TxOut
d_TxOut_2960 :: T_TransactionStructure_22 -> ()
d_TxOut_2960 = erased
-- Ledger.Conway.Transaction.TransactionStructure.UTxO
d_UTxO_2962 :: T_TransactionStructure_22 -> ()
d_UTxO_2962 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Wdrl
d_Wdrl_2964 :: T_TransactionStructure_22 -> ()
d_Wdrl_2964 = erased
-- Ledger.Conway.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2966 :: T_TransactionStructure_22 -> ()
d_RdmrPtr_2966 = erased
-- Ledger.Conway.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2968 :: T_TransactionStructure_22 -> ()
d_ProposedPPUpdates_2968 = erased
-- Ledger.Conway.Transaction.TransactionStructure.Update
d_Update_2970 :: T_TransactionStructure_22 -> ()
d_Update_2970 = erased
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_2976 a0 a1 a2 = ()
newtype T_HasUTxO_2976
  = C_HasUTxO'46'constructor_18503 (AgdaAny ->
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_2984 ::
  T_HasUTxO_2976 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2984 v0
  = case coe v0 of
      C_HasUTxO'46'constructor_18503 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_2988 ::
  T_HasUTxO_2976 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2988 v0 = coe d_UTxOOf_2984 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody
d_TxBody_2990 a0 = ()
data T_TxBody_2990
  = C_TxBody'46'constructor_19729 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
                                  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
                                  Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                  (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txins
d_txins_3032 ::
  T_TxBody_2990 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3032 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3034 ::
  T_TxBody_2990 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3034 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txouts
d_txouts_3036 ::
  T_TxBody_2990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3036 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txfee
d_txfee_3038 :: T_TxBody_2990 -> Integer
d_txfee_3038 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.mint
d_mint_3040 :: T_TxBody_2990 -> AgdaAny
d_mint_3040 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3042 ::
  T_TxBody_2990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3042 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3044 ::
  T_TxBody_2990 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_3044 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3046 ::
  T_TxBody_2990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3046 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3048 ::
  T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
d_txvote_3048 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3050 ::
  T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txprop_3050 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3052 :: T_TxBody_2990 -> Integer
d_txdonation_3052 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txup
d_txup_3054 ::
  T_TxBody_2990 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3054 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3056 :: T_TxBody_2990 -> Maybe AgdaAny
d_txADhash_3056 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3058 :: T_TxBody_2990 -> Maybe AgdaAny
d_txNetworkId_3058 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3060 :: T_TxBody_2990 -> Maybe Integer
d_curTreasury_3060 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txsize
d_txsize_3062 :: T_TxBody_2990 -> Integer
d_txsize_3062 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.txid
d_txid_3064 :: T_TxBody_2990 -> AgdaAny
d_txid_3064 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3066 ::
  T_TxBody_2990 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3066 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3068 :: T_TxBody_2990 -> [AgdaAny]
d_reqSigHash_3068 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3070 :: T_TxBody_2990 -> Maybe AgdaAny
d_scriptIntHash_3070 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3076 a0 a1 a2 = ()
newtype T_HasTxBody_3076
  = C_HasTxBody'46'constructor_20215 (AgdaAny -> T_TxBody_2990)
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3084 :: T_HasTxBody_3076 -> AgdaAny -> T_TxBody_2990
d_TxBodyOf_3084 v0
  = case coe v0 of
      C_HasTxBody'46'constructor_20215 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3088 :: T_HasTxBody_3076 -> AgdaAny -> T_TxBody_2990
d_TxBodyOf_3088 v0 = coe d_TxBodyOf_3084 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3094 a0 a1 a2 = ()
newtype T_Hastxfee_3094
  = C_Hastxfee'46'constructor_20261 (AgdaAny -> Integer)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3102 :: T_Hastxfee_3094 -> AgdaAny -> Integer
d_txfeeOf_3102 v0
  = case coe v0 of
      C_Hastxfee'46'constructor_20261 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3106 :: T_Hastxfee_3094 -> AgdaAny -> Integer
d_txfeeOf_3106 v0 = coe d_txfeeOf_3102 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3112 a0 a1 a2 = ()
newtype T_Hastxcerts_3112
  = C_Hastxcerts'46'constructor_20327 (AgdaAny ->
                                       [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3120 ::
  T_Hastxcerts_3112 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcertsOf_3120 v0
  = case coe v0 of
      C_Hastxcerts'46'constructor_20327 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3124 ::
  T_Hastxcerts_3112 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcertsOf_3124 v0 = coe d_txcertsOf_3120 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3130 a0 a1 a2 = ()
newtype T_Hastxprop_3130
  = C_Hastxprop'46'constructor_20393 (AgdaAny ->
                                      [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832])
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3138 ::
  T_Hastxprop_3130 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txpropOf_3138 v0
  = case coe v0 of
      C_Hastxprop'46'constructor_20393 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3142 ::
  T_Hastxprop_3130 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txpropOf_3142 v0 = coe d_txpropOf_3138 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid
d_Hastxid_3148 a0 a1 a2 = ()
newtype T_Hastxid_3148
  = C_Hastxid'46'constructor_20439 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3156 :: T_Hastxid_3148 -> AgdaAny -> AgdaAny
d_txidOf_3156 v0
  = case coe v0 of
      C_Hastxid'46'constructor_20439 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure._.txidOf
d_txidOf_3160 :: T_Hastxid_3148 -> AgdaAny -> AgdaAny
d_txidOf_3160 v0 = coe d_txidOf_3156 (coe v0)
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3162 a0 = ()
data T_TxWitnesses_3162
  = C_TxWitnesses'46'constructor_20551 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3172 ::
  T_TxWitnesses_3162 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3172 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3174 ::
  T_TxWitnesses_3162 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3174 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3176 ::
  T_TxWitnesses_3162 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_3176 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3178 ::
  T_TxWitnesses_3162 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3178 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3180 ::
  T_TransactionStructure_22 -> T_TxWitnesses_3162 -> [AgdaAny]
d_scriptsP1_3180 ~v0 v1 = du_scriptsP1_3180 v1
du_scriptsP1_3180 :: T_TxWitnesses_3162 -> [AgdaAny]
du_scriptsP1_3180 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3174 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.Tx
d_Tx_3182 a0 = ()
data T_Tx_3182
  = C_Tx'46'constructor_20743 T_TxBody_2990 T_TxWitnesses_3162 Bool
                              (Maybe AgdaAny)
-- Ledger.Conway.Transaction.TransactionStructure.Tx.body
d_body_3192 :: T_Tx_3182 -> T_TxBody_2990
d_body_3192 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.wits
d_wits_3194 :: T_Tx_3182 -> T_TxWitnesses_3162
d_wits_3194 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.isValid
d_isValid_3196 :: T_Tx_3182 -> Bool
d_isValid_3196 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.Tx.txAD
d_txAD_3198 :: T_Tx_3182 -> Maybe AgdaAny
d_txAD_3198 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3200 ::
  T_TransactionStructure_22 -> T_HasTxBody_3076
d_HasTxBody'45'Tx_3200 ~v0 = du_HasTxBody'45'Tx_3200
du_HasTxBody'45'Tx_3200 :: T_HasTxBody_3076
du_HasTxBody'45'Tx_3200
  = coe
      C_HasTxBody'46'constructor_20215
      (coe (\ v0 -> d_body_3192 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3202 ::
  T_TransactionStructure_22 -> T_Hastxfee_3094
d_Hastxfee'45'Tx_3202 ~v0 = du_Hastxfee'45'Tx_3202
du_Hastxfee'45'Tx_3202 :: T_Hastxfee_3094
du_Hastxfee'45'Tx_3202
  = coe
      C_Hastxfee'46'constructor_20261
      (coe (\ v0 -> d_txfee_3038 (coe d_body_3192 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3204 ::
  T_TransactionStructure_22 -> T_Hastxcerts_3112
d_Hastxcerts'45'Tx_3204 ~v0 = du_Hastxcerts'45'Tx_3204
du_Hastxcerts'45'Tx_3204 :: T_Hastxcerts_3112
du_Hastxcerts'45'Tx_3204
  = coe
      C_Hastxcerts'46'constructor_20327
      (coe (\ v0 -> d_txcerts_3044 (coe d_body_3192 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3206 ::
  T_TransactionStructure_22 -> T_Hastxprop_3130
d_Hastxprop'45'Tx_3206 ~v0 = du_Hastxprop'45'Tx_3206
du_Hastxprop'45'Tx_3206 :: T_Hastxprop_3130
du_Hastxprop'45'Tx_3206
  = coe
      C_Hastxprop'46'constructor_20393
      (coe (\ v0 -> d_txprop_3050 (coe d_body_3192 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3208 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
d_HasWdrls'45'TxBody_3208 ~v0 = du_HasWdrls'45'TxBody_3208
du_HasWdrls'45'TxBody_3208 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
du_HasWdrls'45'TxBody_3208
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18079
      (coe (\ v0 -> d_txwdrls_3046 (coe v0)))
-- Ledger.Conway.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3210 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
d_HasWdrls'45'Tx_3210 ~v0 = du_HasWdrls'45'Tx_3210
du_HasWdrls'45'Tx_3210 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
du_HasWdrls'45'Tx_3210
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.C_HasWdrls'46'constructor_18079
      (coe (\ v0 -> d_txwdrls_3046 (coe d_body_3192 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3212 :: T_TransactionStructure_22 -> T_Hastxid_3148
d_Hastxid'45'Tx_3212 ~v0 = du_Hastxid'45'Tx_3212
du_Hastxid'45'Tx_3212 :: T_Hastxid_3148
du_Hastxid'45'Tx_3212
  = coe
      C_Hastxid'46'constructor_20439
      (coe (\ v0 -> d_txid_3064 (coe d_body_3192 (coe v0))))
-- Ledger.Conway.Transaction.TransactionStructure.getValue
d_getValue_3214 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3214 ~v0 v1 = du_getValue_3214 v1
du_getValue_3214 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3214 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3218 :: T_TransactionStructure_22 -> ()
d_TxOut'688'_3218 = erased
-- Ledger.Conway.Transaction.TransactionStructure.txOutHash
d_txOutHash_3220 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3220 v0 v1
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
                                          (d_scriptStructure_1876 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                                                (coe d_scriptStructure_1876 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                                                (coe d_scriptStructure_1876 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3230 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3230 ~v0 v1 = du_getValue'688'_3230 v1
du_getValue'688'_3230 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3230 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3234 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3234 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1246 (coe v0))
               (coe d_DecEq'45'Ix_1244 (coe v0))))
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
d_scriptOuts_3240 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3240 ~v0 v1 = du_scriptOuts_3240 v1
du_scriptOuts_3240 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3240 v0
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
d_txinsScript_3248 ::
  T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3248 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1246 (coe v0))
               (coe d_DecEq'45'Ix_1244 (coe v0))))
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
               (coe du_scriptOuts_3240 (coe v2)))))
-- Ledger.Conway.Transaction.TransactionStructure.refScripts
d_refScripts_3254 ::
  T_TransactionStructure_22 ->
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3254 v0 v1 v2
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
                  (coe d_DecEq'45'TxId_1246 (coe v0))
                  (coe d_DecEq'45'Ix_1244 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_3032 (coe d_body_3192 (coe v1)))
               (coe d_refInputs_3034 (coe d_body_3192 (coe v1))))))
-- Ledger.Conway.Transaction.TransactionStructure._._.collateral
d_collateral_3266 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3266 v0 ~v1 = du_collateral_3266 v0
du_collateral_3266 ::
  T_Tx_3182 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3266 v0
  = coe d_collateral_3066 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3268 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3268 v0 ~v1 = du_curTreasury_3268 v0
du_curTreasury_3268 :: T_Tx_3182 -> Maybe Integer
du_curTreasury_3268 v0
  = coe d_curTreasury_3060 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.mint
d_mint_3270 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3270 v0 ~v1 = du_mint_3270 v0
du_mint_3270 :: T_Tx_3182 -> AgdaAny
du_mint_3270 v0 = coe d_mint_3040 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.refInputs
d_refInputs_3272 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3272 v0 ~v1 = du_refInputs_3272 v0
du_refInputs_3272 ::
  T_Tx_3182 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3272 v0
  = coe d_refInputs_3034 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3274 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3274 v0 ~v1 = du_reqSigHash_3274 v0
du_reqSigHash_3274 :: T_Tx_3182 -> [AgdaAny]
du_reqSigHash_3274 v0
  = coe d_reqSigHash_3068 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3276 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3276 v0 ~v1 = du_scriptIntHash_3276 v0
du_scriptIntHash_3276 :: T_Tx_3182 -> Maybe AgdaAny
du_scriptIntHash_3276 v0
  = coe d_scriptIntHash_3070 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txADhash
d_txADhash_3278 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3278 v0 ~v1 = du_txADhash_3278 v0
du_txADhash_3278 :: T_Tx_3182 -> Maybe AgdaAny
du_txADhash_3278 v0
  = coe d_txADhash_3056 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3280 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3280 v0 ~v1 = du_txNetworkId_3280 v0
du_txNetworkId_3280 :: T_Tx_3182 -> Maybe AgdaAny
du_txNetworkId_3280 v0
  = coe d_txNetworkId_3058 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txcerts
d_txcerts_3282 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_3282 v0 ~v1 = du_txcerts_3282 v0
du_txcerts_3282 ::
  T_Tx_3182 -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
du_txcerts_3282 v0 = coe d_txcerts_3044 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txdonation
d_txdonation_3284 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3284 v0 ~v1 = du_txdonation_3284 v0
du_txdonation_3284 :: T_Tx_3182 -> Integer
du_txdonation_3284 v0
  = coe d_txdonation_3052 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txfee
d_txfee_3286 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3286 v0 ~v1 = du_txfee_3286 v0
du_txfee_3286 :: T_Tx_3182 -> Integer
du_txfee_3286 v0 = coe d_txfee_3038 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txid
d_txid_3288 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3288 v0 ~v1 = du_txid_3288 v0
du_txid_3288 :: T_Tx_3182 -> AgdaAny
du_txid_3288 v0 = coe d_txid_3064 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txins
d_txins_3290 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3290 v0 ~v1 = du_txins_3290 v0
du_txins_3290 ::
  T_Tx_3182 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3290 v0 = coe d_txins_3032 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txouts
d_txouts_3292 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3292 v0 ~v1 = du_txouts_3292 v0
du_txouts_3292 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3292 v0 = coe d_txouts_3036 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txprop
d_txprop_3294 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txprop_3294 v0 ~v1 = du_txprop_3294 v0
du_txprop_3294 ::
  T_Tx_3182 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
du_txprop_3294 v0 = coe d_txprop_3050 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txsize
d_txsize_3296 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_3296 v0 ~v1 = du_txsize_3296 v0
du_txsize_3296 :: T_Tx_3182 -> Integer
du_txsize_3296 v0 = coe d_txsize_3062 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txup
d_txup_3298 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3298 v0 ~v1 = du_txup_3298 v0
du_txup_3298 ::
  T_Tx_3182 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3298 v0 = coe d_txup_3054 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvldt
d_txvldt_3300 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3300 v0 ~v1 = du_txvldt_3300 v0
du_txvldt_3300 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3300 v0 = coe d_txvldt_3042 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txvote
d_txvote_3302 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
d_txvote_3302 v0 ~v1 = du_txvote_3302 v0
du_txvote_3302 ::
  T_Tx_3182 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
du_txvote_3302 v0 = coe d_txvote_3048 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3304 ::
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3304 v0 ~v1 = du_txwdrls_3304 v0
du_txwdrls_3304 ::
  T_Tx_3182 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3304 v0 = coe d_txwdrls_3046 (coe d_body_3192 (coe v0))
-- Ledger.Conway.Transaction.TransactionStructure.txscripts
d_txscripts_3306 ::
  T_TransactionStructure_22 ->
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3306 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3174 (coe d_wits_3194 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe d_refScripts_3254 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3316 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3316 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe d_crypto_1290 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_3328 (coe v0) (coe v2) (coe v3)))))
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
                 (coe du_m_3328 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Conway.Transaction.TransactionStructure._.m
d_m_3328 ::
  T_TransactionStructure_22 ->
  AgdaAny ->
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3328 v0 ~v1 v2 v3 = du_m_3328 v0 v2 v3
du_m_3328 ::
  T_TransactionStructure_22 ->
  T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3328 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_70
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe d_crypto_1290 (coe v0)))
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
                  (d_scriptStructure_1876 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
                        (coe d_scriptStructure_1876 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
                     (coe
                        MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                        (coe d_scriptStructure_1876 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3306 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Transaction.TransactionStructure.isP2Script
d_isP2Script_3330 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3330 = erased
-- Ledger.Conway.Transaction.TransactionStructure.isP2Script?
d_isP2Script'63'_3334 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3334 ~v0 v1 = du_isP2Script'63'_3334 v1
du_isP2Script'63'_3334 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3334 v0
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
d_HasCoin'45'TxOut_3340 ::
  T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3340 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
              (d_tokenAlgebra_2342 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
