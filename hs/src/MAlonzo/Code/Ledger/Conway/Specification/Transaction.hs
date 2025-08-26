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

module MAlonzo.Code.Ledger.Conway.Specification.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Specification.Transaction.Tag
d_Tag_8 = ()
data T_Tag_8
  = C_Spend_10 | C_Mint_12 | C_Cert_14 | C_Rewrd_16 | C_Vote_18 |
    C_Propose_20
-- Ledger.Conway.Specification.Transaction.DecEq-Tag
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Transaction.TransactionStructure
d_TransactionStructure_24 = ()
data T_TransactionStructure_24
  = C_TransactionStructure'46'constructor_14483 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_258
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536
                                                MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
                                                (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction._.THash
d_THash_94 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_258 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  ()
d_THash_94 = erased
-- Ledger.Conway.Specification.Transaction._.Ser
d_Ser_102 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_258 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138 ->
  ()
d_Ser_102 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_130 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__138 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__138 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Value
d_Value_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_150 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coin
d_coin_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_162 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.inject
d_inject_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.policies
d_policies_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.size
d_size_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_208
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Ix
d_Ix_1220 :: T_TransactionStructure_24 -> ()
d_Ix_1220 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxId
d_TxId_1222 :: T_TransactionStructure_24 -> ()
d_TxId_1222 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1224 :: T_TransactionStructure_24 -> ()
d_AuxiliaryData_1224 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1226 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1226 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1228 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1228 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1230 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1230 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1234 :: T_TransactionStructure_24 -> ()
d_THash_1234 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1236 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1230 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1238 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1230 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1240 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1240 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1230 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1242 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1230 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1244 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_258
d_globalConstants_1244 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1248 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_290
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1250 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1250 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Network
d_Network_1252 :: T_TransactionStructure_24 -> ()
d_Network_1252 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1254 :: T_TransactionStructure_24 -> AgdaAny
d_NetworkId_1254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1256 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_300
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1258 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1260 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_292
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1262 :: T_TransactionStructure_24 -> Integer
d_Quorum_1262 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_296
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1264 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1264 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_284
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1266 :: T_TransactionStructure_24 -> Integer
d_SlotsPerEpoch'7580'_1266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1268 ::
  T_TransactionStructure_24 -> Integer
d_StabilityWindow'7580'_1268 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_294
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1270 ::
  T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1270 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1272 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1272 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_314
      (coe d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1274 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_138
d_cryptoStructure_1274 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1278 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1278 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1280 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
      (coe d_cryptoStructure_1274 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1282 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1282 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1284 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1284 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1286 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1286 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1288 :: T_TransactionStructure_24 -> ()
d_THash_1288 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1290 :: T_TransactionStructure_24 -> ()
d_KeyPair_1290 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1292 :: T_TransactionStructure_24 -> ()
d_SKey_1292 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1294 :: T_TransactionStructure_24 -> ()
d_ScriptHash_1294 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1296 :: T_TransactionStructure_24 -> ()
d_Ser_1296 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1298 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1298 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_210
      (coe d_cryptoStructure_1274 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1300 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1300 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1302 :: T_TransactionStructure_24 -> ()
d_Sig_1302 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1304 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1304 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1306 :: T_TransactionStructure_24 -> ()
d_VKey_1306 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1308 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1308 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1310 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1310 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1312 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1312 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.khs
d_khs_1314 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
      (coe d_cryptoStructure_1274 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1316 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176
      (coe d_cryptoStructure_1274 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sign
d_sign_1318 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1318 v0
  = let v1 = d_cryptoStructure_1274 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_176 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1322 :: T_TransactionStructure_24 -> ()
d_MemoryEstimate_1322 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1324 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1328 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1330 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1332 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1338 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1340 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1342 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1344 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1348 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1348 ~v0 = du_addValue_1348
du_addValue_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_220
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1352 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1352 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1356 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1360 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1364 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_208
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1368 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1368 ~v0 = du_sum'7515'_1368
du_sum'7515'_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_238
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1370 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1374 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1378 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1380 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1382 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1386 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1388 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1390 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1392 ~v0 = du_isMagmaIsomorphism_1392
du_isMagmaIsomorphism_1392 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1392 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1394 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1394 v2
du_isMagmaMonomorphism_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1398 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1400 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1402 ~v0 ~v1 v2 = du_isRelIsomorphism_1402 v2
du_isRelIsomorphism_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1404 ~v0 ~v1 v2 = du_isRelMonomorphism_1404 v2
du_isRelMonomorphism_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1404 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1408 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1410 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1414 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1420 ~v0 = du_isMagmaMonomorphism_1420
du_isMagmaMonomorphism_1420 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1420 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1426 ~v0 ~v1 v2 = du_isRelMonomorphism_1426 v2
du_isRelMonomorphism_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1428 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1430 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1434 :: T_TransactionStructure_24 -> ()
d_Addr_1434 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1436 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1438 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1440 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1442 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1444 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1444 ~v0 = du_Dec'45'isScript_1444
du_Dec'45'isScript_1444 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1444
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_206
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1446 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1446 ~v0 = du_Dec'45'isVKey_1446
du_Dec'45'isVKey_1446 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1446
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_192
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1448 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_238
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1244 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe d_cryptoStructure_1274 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_cryptoStructure_1274 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1450 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1450 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_240
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1244 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe d_cryptoStructure_1274 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_cryptoStructure_1274 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1452 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe d_cryptoStructure_1274 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_cryptoStructure_1274 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1454 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_242
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
         (coe d_globalConstants_1244 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe d_cryptoStructure_1274 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_cryptoStructure_1274 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1456 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1458 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_1458 ~v0
  = du_HasCredential'45'RwdAddr_1458
du_HasCredential'45'RwdAddr_1458 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RwdAddr_1458
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_132
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1460 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1462 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
d_HasNetworkId'45'BaseAddr_1462 ~v0
  = du_HasNetworkId'45'BaseAddr_1462
du_HasNetworkId'45'BaseAddr_1462 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
du_HasNetworkId'45'BaseAddr_1462
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_126
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1464 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
d_HasNetworkId'45'BootstrapAddr_1464 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1464
du_HasNetworkId'45'BootstrapAddr_1464 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
du_HasNetworkId'45'BootstrapAddr_1464
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_128
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1466 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
d_HasNetworkId'45'RwdAddr_1466 ~v0
  = du_HasNetworkId'45'RwdAddr_1466
du_HasNetworkId'45'RwdAddr_1466 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112
du_HasNetworkId'45'RwdAddr_1466
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_130
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1472 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_120
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1474 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1478 :: T_TransactionStructure_24 -> ()
d_ScriptAddr_1478 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1480 :: T_TransactionStructure_24 -> ()
d_ScriptBaseAddr_1480 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1482 :: T_TransactionStructure_24 -> ()
d_ScriptBootstrapAddr_1482 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1486 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1486 ~v0 = du_Show'45'Credential_1486
du_Show'45'Credential_1486 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1486 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_254
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1488 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1488 ~v0
  = du_Show'45'Credential'215'Coin_1488
du_Show'45'Credential'215'Coin_1488 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1488 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_258
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1490 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1490 ~v0 = du_Show'45'RwdAddr_1490
du_Show'45'RwdAddr_1490 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1490
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_256
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1492 :: T_TransactionStructure_24 -> ()
d_VKeyAddr_1492 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1494 :: T_TransactionStructure_24 -> ()
d_VKeyBaseAddr_1494 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1496 :: T_TransactionStructure_24 -> ()
d_VKeyBootstrapAddr_1496 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1500 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_64 ->
  AgdaAny
d_getScriptHash_1500 ~v0 = du_getScriptHash_1500
du_getScriptHash_1500 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_64 ->
  AgdaAny
du_getScriptHash_1500
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_232
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1502 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1504 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1504 ~v0 = du_isBootstrapAddr'63'_1504
du_isBootstrapAddr'63'_1504 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1504
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_186
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1506 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1506 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1508 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1508 ~v0 = du_isKeyHashObj_1508
du_isKeyHashObj_1508 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1508
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_44
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1510 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1510 ~v0 = du_isKeyHashObj'7495'_1510
du_isKeyHashObj'7495'_1510 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1510
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_48
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1512 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1514 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1514 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1516 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1516 ~v0 = du_isScriptObj_1516
du_isScriptObj_1516 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1516
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1518 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 -> ()
d_isScriptRwdAddr_1518 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1520 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1522 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1522 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.netId
d_netId_1524 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1524 ~v0 = du_netId_1524
du_netId_1524 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1524
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_160
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1526 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1526 ~v0 = du_payCred_1526
du_payCred_1526 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1526
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1528 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1528 ~v0 = du_stakeCred_1528
du_stakeCred_1528 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1528
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_158
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_70 ->
  AgdaAny
d_net_1532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_78 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_70 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1534 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_80 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1536 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_70 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1536 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_82 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1540 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_84 ->
  Integer
d_attrsSize_1540 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_96
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1542 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_84 ->
  AgdaAny
d_net_1542 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1544 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1554 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1554 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1558 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_112 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1558 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_120
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RwdAddr.net
d_net_1562 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  AgdaAny
d_net_1562 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1564 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_106 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1578 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1578 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1582 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1582 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__78
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1584 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1584 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1586 ::
  T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1586 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1588 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1588 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1590 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1590 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1592 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_1592 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1594 :: T_TransactionStructure_24 -> ()
d_Epoch_1594 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1596 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1596 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1598 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1598 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1600 :: T_TransactionStructure_24 -> ()
d_Slot_1600 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1602 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_56
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1604 :: T_TransactionStructure_24 -> AgdaAny
d_StabilityWindow_1604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1606 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1608 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_246
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1610 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_epoch_1610 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1612 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_firstSlot_1612 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1614 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1614 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_88
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1616 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_suc'7497'_1616 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_76
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1618 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_ℕtoEpoch_1618 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_1578 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1622 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1624 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1626 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  ()
d_P1Script_1636 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1638 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1642 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_CostModel_1644 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_T_1646 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_THash_1648 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1652 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_Datum_1652 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_262
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_232
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_222
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_224
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_220
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1666 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1668 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_ExUnits_1672 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_LangDepView_1676 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_Language_1678 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_PlutusScript_1680 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny
d_PlutusV1_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_210
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny
d_PlutusV2_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_212
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny
d_PlutusV3_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_Prices_1688 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1690 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  ()
d_Redeemer_1690 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_226
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_234
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_236
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1698 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1700 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny -> AgdaAny
d_language_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_264
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  () -> AgdaAny -> AgdaAny
d_toData_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_268
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1708 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1712 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_CostModel_1714 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_T_1716 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_THash_1718 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1722 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_Datum_1722 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_262
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1740 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1742 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_ExUnits_1746 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1752 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1752 ~v0 = du_Hashable'45'Script_1752
du_Hashable'45'Script_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1752
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_LangDepView_1754 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_Language_1756 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_P1Script_1758 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_PlutusScript_1760 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny
d_PlutusV1_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny
d_PlutusV2_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny
d_PlutusV3_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_Prices_1768 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1770 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_Redeemer_1770 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1772 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  ()
d_Script_1772 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1780 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1782 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_316
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_1788 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1788 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_1790 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1790 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_1792 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1792 ~v0 = du_isP1Script'63'_1792
du_isP1Script'63'_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1792 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_398
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_1794 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1794 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_1796 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1796 ~v0 = du_isP2Script'63'_1796
du_isP2Script'63'_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1796 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_412
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny -> AgdaAny
d_language_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120
d_ps_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  () -> AgdaAny -> AgdaAny
d_toData_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_1806 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1806 ~v0 = du_toP1Script_1806
du_toP1Script_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_1808 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1808 ~v0 = du_toP2Script_1808
du_toP2Script_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_418
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1810 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1812 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1814 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_270
d_scriptStructure_1814 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1818 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1818 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_1820 :: T_TransactionStructure_24 -> ()
d_CostModel_1820 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T
d_T_1822 :: T_TransactionStructure_24 -> ()
d_T_1822 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1824 :: T_TransactionStructure_24 -> ()
d_THash_1824 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1826 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Datum
d_Datum_1828 :: T_TransactionStructure_24 -> ()
d_Datum_1828 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1830 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1832 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_262
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1834 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1836 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1838 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1840 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1842 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1844 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1846 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1846 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe d_scriptStructure_1814 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1848 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1848 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe d_scriptStructure_1814 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1850 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1852 :: T_TransactionStructure_24 -> ()
d_ExUnits_1852 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1854 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1856 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1858 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1860 :: T_TransactionStructure_24 -> ()
d_LangDepView_1860 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Language
d_Language_1862 :: T_TransactionStructure_24 -> ()
d_Language_1862 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_1864 :: T_TransactionStructure_24 -> ()
d_P1Script_1864 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1866 :: T_TransactionStructure_24 -> ()
d_PlutusScript_1866 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1868 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV1_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1870 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV2_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1872 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV3_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Prices
d_Prices_1874 :: T_TransactionStructure_24 -> ()
d_Prices_1874 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1876 :: T_TransactionStructure_24 -> ()
d_Redeemer_1876 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Script
d_Script_1878 :: T_TransactionStructure_24 -> ()
d_Script_1878 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1880 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1882 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1884 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1886 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1886 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe d_scriptStructure_1814 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1888 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1888 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                 (coe d_scriptStructure_1814 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1890 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1890 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
            (coe d_scriptStructure_1814 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1892 ::
  T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_316
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_1894 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1894 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_1896 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1896 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_1898 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1898 ~v0 = du_isP1Script'63'_1898
du_isP1Script'63'_1898 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1898
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_398
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_1900 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1900 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_1902 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1902 ~v0 = du_isP2Script'63'_1902
du_isP2Script'63'_1902 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_412
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.language
d_language_1904 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_language_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.p1s
d_p1s_1906 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ps
d_ps_1908 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_120
d_ps_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toData
d_toData_1910 ::
  T_TransactionStructure_24 -> () -> AgdaAny -> AgdaAny
d_toData_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe d_scriptStructure_1814 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_1912 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1912 ~v0 = du_toP1Script_1912
du_toP1Script_1912 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1912
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_1914 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1914 ~v0 = du_toP2Script_1914
du_toP2Script_1914 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1914
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_418
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1916 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1916 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1918 ::
  T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1918 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_1922 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1924 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1924 ~v0
  = du_DecEq'45'DrepThresholds_1924
du_DecEq'45'DrepThresholds_1924 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1924
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_608
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1926 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1926 ~v0 = du_DecEq'45'PParamGroup_1926
du_DecEq'45'PParamGroup_1926 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1926
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_614
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1928 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_612
      (coe d_epochStructure_1578 (coe v0))
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1930 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1930 ~v0
  = du_DecEq'45'PoolThresholds_1930
du_DecEq'45'PoolThresholds_1930 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1930
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_610
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1932 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_1936 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1940 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1940 ~v0 = du_HasCast'45'Acnt_1940
du_HasCast'45'Acnt_1940 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_224
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_1942 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_1944 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_1946 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_1948 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_466
d_HasgovActionDeposit'45'PParams_1948 ~v0
  = du_HasgovActionDeposit'45'PParams_1948
du_HasgovActionDeposit'45'PParams_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_466
du_HasgovActionDeposit'45'PParams_1948
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasgovActionDeposit'45'PParams_498
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hasreserves
d_Hasreserves_1950 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hasreserves-Acnt
d_Hasreserves'45'Acnt_1952 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_196
d_Hasreserves'45'Acnt_1952 ~v0 = du_Hasreserves'45'Acnt_1952
du_Hasreserves'45'Acnt_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_196
du_Hasreserves'45'Acnt_1952
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Hasreserves'45'Acnt_212
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_1954 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hastreasury-Acnt
d_Hastreasury'45'Acnt_1956 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
d_Hastreasury'45'Acnt_1956 ~v0 = du_Hastreasury'45'Acnt_1956
du_Hastreasury'45'Acnt_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
du_Hastreasury'45'Acnt_1956
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Hastreasury'45'Acnt_210
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1960 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams
d_PParams_1962 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1964 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_PParamsOf_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_456
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1968 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1970 :: T_TransactionStructure_24 -> ()
d_ProtVer_1970 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1974 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1974 ~v0 = du_Show'45'DrepThresholds_1974
du_Show'45'DrepThresholds_1974 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_616
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_1976 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_620
      (coe d_epochStructure_1578 (coe v0))
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1978 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1978 ~v0 = du_Show'45'PoolThresholds_1978
du_Show'45'PoolThresholds_1978 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_618
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_1980 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1980 ~v0 = du_Show'45'ProtVer_1980
du_Show'45'ProtVer_1980 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1980
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasccMaxTermLength_484 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLengthOf_492
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_466 ->
  AgdaAny -> Integer
d_govActionDepositOf_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDepositOf_474
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_1992 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1992 ~v0 = du_paramsWF'45'elim_1992
du_paramsWF'45'elim_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1992 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_588
      v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1994 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  ()
d_paramsWellFormed_1994 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_1996 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  [Integer]
d_positivePParams_1996 ~v0 = du_positivePParams_1996
du_positivePParams_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  [Integer]
du_positivePParams_1996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_500
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1998 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2000 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2000 ~v0 = du_pvCanFollow'63'_2000
du_pvCanFollow'63'_2000 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2000
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1456
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.reservesOf
d_reservesOf_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_196 ->
  AgdaAny -> Integer
d_reservesOf_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reservesOf_204
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178 ->
  AgdaAny -> Integer
d_treasuryOf_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryOf_186
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_260 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_262 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_264 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_266 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_268 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_270 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_272 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_274 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_276 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_278 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1568
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  ()
d_UpdateT_2040 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_applyUpdate_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1520
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504
d_ppUpd_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1528
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2048 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  AgdaAny -> ()
d_ppdWellFormed_2048 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226]
d_updateGroups_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_PParamsOf_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_456
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasccMaxTermLength_484 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLengthOf_492
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_466 ->
  AgdaAny -> Integer
d_govActionDepositOf_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDepositOf_474
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hasreserves.reservesOf
d_reservesOf_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_196 ->
  AgdaAny -> Integer
d_reservesOf_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reservesOf_204
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178 ->
  AgdaAny -> Integer
d_treasuryOf_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryOf_186
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_Emax_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_418
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_a_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_390 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_422 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_b_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_392 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMaxTermLength_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_434
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMinSize_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_432
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_coinsPerUTxOByte_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_402
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_collateralPercentage_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_424
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_costmdls_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_426
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_drepActivity_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_442
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_drepDeposit_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_440
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238
d_drepThresholds_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionDeposit_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_438
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionLifetime_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_436
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_keyDeposit_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_394
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxBlockExUnits_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_382
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxBlockSize_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_374
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxCollateralInputs_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_386
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxHeaderSize_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_378
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerBlock_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_410
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerTx_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_408
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxTxExUnits_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_380
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxTxSize_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_376
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxValSize_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_384
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_406
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_minUTxOValue_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_416
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_398
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_nopt_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_420
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_poolDeposit_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_396
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280
d_poolThresholds_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_prices_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_404
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_388 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_414
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_412
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_400
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504 ->
  ()
d_UpdateT_2158 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_applyUpdate_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1520
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1528
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2164 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504 ->
  AgdaAny -> ()
d_ppdWellFormed_2164 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226]
d_updateGroups_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1522
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2170 ::
  T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2170 ~v0 = du__'63''8599'__2170
du__'63''8599'__2170 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2170 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1248
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2172 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1450
      (coe d_epochStructure_1578 (coe v0))
      (coe d_scriptStructure_1814 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2174 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2176 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_applyPParamsUpdate_2176 ~v0 = du_applyPParamsUpdate_2176
du_applyPParamsUpdate_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
du_applyPParamsUpdate_2176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1296
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2178 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226]
d_modifiedUpdateGroups_2178 ~v0 = du_modifiedUpdateGroups_2178
du_modifiedUpdateGroups_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226]
du_modifiedUpdateGroups_2178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1232
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2180 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesEconomicGroup_2180 ~v0 = du_modifiesEconomicGroup_2180
du_modifiesEconomicGroup_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesEconomicGroup_2180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_928
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2182 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesGovernanceGroup_2182 ~v0
  = du_modifiesGovernanceGroup_2182
du_modifiesGovernanceGroup_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesGovernanceGroup_2182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1080
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2184 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesNetworkGroup_2184 ~v0 = du_modifiesNetworkGroup_2184
du_modifiesNetworkGroup_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesNetworkGroup_2184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_852
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2186 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesSecurityGroup_2186 ~v0 = du_modifiesSecurityGroup_2186
du_modifiesSecurityGroup_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesSecurityGroup_2186
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1156
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2188 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesTechnicalGroup_2188 ~v0 = du_modifiesTechnicalGroup_2188
du_modifiesTechnicalGroup_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesTechnicalGroup_2188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_1004
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2190 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  ()
d_paramsUpdateWellFormed_2190 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2192 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2192 ~v0
  = du_paramsUpdateWellFormed'63'_2192
du_paramsUpdateWellFormed'63'_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2192
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsUpdateWellFormed'63'_848
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2194 ::
  T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_2194 ~v0 = du_'8801''45'update_2194
du_'8801''45'update_2194 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_2194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1262
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe AgdaAny
d_Emax_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_742
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_a_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_712 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_740 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_b_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_714 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_ccMaxTermLength_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_764
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_ccMinSize_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_762
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_coinsPerUTxOByte_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_724
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_collateralPercentage_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_746
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe AgdaAny
d_costmdls_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_748
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe AgdaAny
d_drepActivity_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_760
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_drepDeposit_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_758
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238
d_drepThresholds_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_750
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_govActionDeposit_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_756
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_govActionLifetime_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_754
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_keyDeposit_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_716
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe AgdaAny
d_maxBlockExUnits_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_708
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxBlockSize_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_696
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxCollateralInputs_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_704
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxHeaderSize_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_700
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_732
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_730
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe AgdaAny
d_maxTxExUnits_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_706
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxTxSize_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_698
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxValSize_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_702
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_minUTxOValue_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_738
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_720
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_nopt_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_744
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_poolDeposit_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_718
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280
d_poolThresholds_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_752
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe AgdaAny
d_prices_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_726
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_710 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_736
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_734
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_722
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_292 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_294 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_296 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_298 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_300 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.govParams
d_govParams_2286 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1536
d_govParams_2286 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2290 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1568
      (coe d_govParams_2286 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2292 :: T_TransactionStructure_24 -> ()
d_UpdateT_2292 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2294 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302
d_applyUpdate_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1520
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
         (coe d_govParams_2286 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2296 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1504
d_ppUpd_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
      (coe d_govParams_2286 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2298 ::
  T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1528
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
         (coe d_govParams_2286 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2300 :: T_TransactionStructure_24 -> AgdaAny -> ()
d_ppdWellFormed_2300 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2302 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_226]
d_updateGroups_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1554
         (coe d_govParams_2286 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2304 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2304 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2308 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2308 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
            (coe d_tokenAlgebra_2304 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2310 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2310 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2312 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2312 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2314 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_218
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2316 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_216
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2318 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2320 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2322 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Value
d_Value_2324 :: T_TransactionStructure_24 -> ()
d_Value_2324 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2326 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2328 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_220
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin
d_coin_2330 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_coin_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2332 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2332 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2334 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_214
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2336 ::
  T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2336 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.inject
d_inject_2338 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_inject_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2340 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2340 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
            (coe d_tokenAlgebra_2304 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.policies
d_policies_2342 ::
  T_TransactionStructure_24 -> AgdaAny -> [AgdaAny]
d_policies_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2344 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2344 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
                 (coe d_tokenAlgebra_2304 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.size
d_size_2346 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_size_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_208
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2348 ::
  T_TransactionStructure_24 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_238
      (coe d_tokenAlgebra_2304 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ε
d_ε_2350 :: T_TransactionStructure_24 -> AgdaAny
d_ε_2350 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_120
            (coe d_tokenAlgebra_2304 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2354 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2354 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2358 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2360 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2362 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2366 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2370 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2372 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2372 ~v0 = du_isMagmaIsomorphism_2372
du_isMagmaIsomorphism_2372 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2372 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2374 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2374 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2374 v2
du_isMagmaMonomorphism_2374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2374 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2378 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2380 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2382 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2382 ~v0 ~v1 v2 = du_isRelIsomorphism_2382 v2
du_isRelIsomorphism_2382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2382 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2384 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2384 ~v0 ~v1 v2 = du_isRelMonomorphism_2384 v2
du_isRelMonomorphism_2384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2384 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2386 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2388 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2390 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2394 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2398 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2400 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2400 ~v0 = du_isMagmaMonomorphism_2400
du_isMagmaMonomorphism_2400 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2400 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2406 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2406 ~v0 ~v1 v2 = du_isRelMonomorphism_2406 v2
du_isRelMonomorphism_2406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2408 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2410 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2412 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_txidBytes_2412 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14483 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2414 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.C_GovStructure'46'constructor_3301
      (d_DecEq'45'TxId_1228 (coe v0)) (d_cryptoStructure_1274 (coe v0))
      (d_epochStructure_1578 (coe v0)) (d_scriptStructure_1814 (coe v0))
      (d_govParams_2286 (coe v0)) (d_globalConstants_1244 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor
d_Anchor_2418 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2426 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2426 ~v0 = du_DecEq'45'GovActionType_2426
du_DecEq'45'GovActionType_2426 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_910
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_2428 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2428 ~v0 = du_DecEq'45'GovRole_2428
du_DecEq'45'GovRole_2428 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_912
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2430 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
      (coe d_govStructure_2414 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_2432 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2432 ~v0 = du_DecEq'45'Vote_2432
du_DecEq'45'Vote_2432 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_914
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction
d_GovAction_2434 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionData
d_GovActionData_2436 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  ()
d_GovActionData_2436 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionID
d_GovActionID_2438 :: T_TransactionStructure_24 -> ()
d_GovActionID_2438 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState
d_GovActionState_2440 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionType
d_GovActionType_2442 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal
d_GovProposal_2444 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovRole
d_GovRole_2446 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote
d_GovVote_2448 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2450 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2450 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2450
du_HasCast'45'GovAction'45'Sigma_2450 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_820
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_2452 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2452 ~v0 = du_HasCast'45'GovVote_2452
du_HasCast'45'GovVote_2452 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_918
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2454 ::
  T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2454 ~v0
  = du_HasCast'45'HashProtected_2454
du_HasCast'45'HashProtected_2454 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_832
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2456 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2456 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2456
du_HasCast'45'HashProtected'45'MaybeScriptHash_2456 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_834
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HashProtected
d_HashProtected_2458 :: T_TransactionStructure_24 -> () -> ()
d_HashProtected_2458 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_2462 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790 ->
  ()
d_NeedsHash_2462 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.VDeleg
d_VDeleg_2476 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Vote
d_Vote_2478 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Voter
d_Voter_2480 :: T_TransactionStructure_24 -> ()
d_Voter_2480 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.gaData
d_gaData_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  AgdaAny
d_gaData_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_816
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.gaType
d_gaType_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790
d_gaType_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_814
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.getDRepVote
d_getDRepVote_2492 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getDRepVote_2492 ~v0 = du_getDRepVote_2492
du_getDRepVote_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getDRepVote_2492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_getDRepVote_920
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.proposedCC
d_proposedCC_2498 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2498 ~v0 = du_proposedCC_2498
du_proposedCC_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_924
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor.hash
d_hash_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780 ->
  AgdaAny
d_hash_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_788
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor.url
d_url_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_786
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction.gaData
d_gaData_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  AgdaAny
d_gaData_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_816
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction.gaType
d_gaType_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_790
d_gaType_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_814
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.action
d_action_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808
d_action_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_906
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.expiresIn
d_expiresIn_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_expiresIn_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_904
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.prevAction
d_prevAction_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  AgdaAny
d_prevAction_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_908
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.returnAddr
d_returnAddr_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_902
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.votes
d_votes_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_900
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.action
d_action_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808
d_action_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_876
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780
d_anchor_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_886
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  Integer
d_deposit_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_882
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.policy
d_policy_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  Maybe AgdaAny
d_policy_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_880
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  AgdaAny
d_prevAction_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_878
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_884
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.anchor
d_anchor_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780
d_anchor_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_860
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.gid
d_gid_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_854
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.vote
d_vote_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_836
d_vote_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_858
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.voter
d_voter_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_856
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DCert
d_DCert_2622 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2710 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1090 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrlsOf_1098
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1090 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrlsOf_1098
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_2920 :: T_TransactionStructure_24 -> ()
d_TxIn_2920 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_2922 :: T_TransactionStructure_24 -> ()
d_TxOut_2922 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_2924 :: T_TransactionStructure_24 -> ()
d_UTxO_2924 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Wdrl
d_Wdrl_2926 :: T_TransactionStructure_24 -> ()
d_Wdrl_2926 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2928 :: T_TransactionStructure_24 -> ()
d_RdmrPtr_2928 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2930 :: T_TransactionStructure_24 -> ()
d_ProposedPPUpdates_2930 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Update
d_Update_2932 :: T_TransactionStructure_24 -> ()
d_Update_2932 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_2938 a0 a1 a2 = ()
newtype T_HasUTxO_2938
  = C_HasUTxO'46'constructor_18355 (AgdaAny ->
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_2946 ::
  T_HasUTxO_2938 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2946 v0
  = case coe v0 of
      C_HasUTxO'46'constructor_18355 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_2950 ::
  T_HasUTxO_2938 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2950 v0 = coe d_UTxOOf_2946 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_2952 a0 = ()
data T_TxBody_2952
  = C_TxBody'46'constructor_19535 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
                                  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
                                  Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                  (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txins
d_txins_2992 ::
  T_TxBody_2952 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2992 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2994 ::
  T_TxBody_2952 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2994 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2996 ::
  T_TxBody_2952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2996 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2998 :: T_TxBody_2952 -> Integer
d_txfee_2998 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3000 :: T_TxBody_2952 -> AgdaAny
d_mint_3000 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3002 ::
  T_TxBody_2952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3002 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3004 ::
  T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_3004 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3006 ::
  T_TxBody_2952 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3006 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3008 ::
  T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_3008 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3010 ::
  T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
d_txprop_3010 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3012 :: T_TxBody_2952 -> Integer
d_txdonation_3012 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txup
d_txup_3014 ::
  T_TxBody_2952 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3014 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3016 :: T_TxBody_2952 -> Maybe AgdaAny
d_txADhash_3016 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3018 :: T_TxBody_2952 -> Maybe AgdaAny
d_txNetworkId_3018 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3020 :: T_TxBody_2952 -> Maybe Integer
d_curTreasury_3020 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txid
d_txid_3022 :: T_TxBody_2952 -> AgdaAny
d_txid_3022 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3024 ::
  T_TxBody_2952 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3024 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3026 :: T_TxBody_2952 -> [AgdaAny]
d_reqSigHash_3026 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3028 :: T_TxBody_2952 -> Maybe AgdaAny
d_scriptIntHash_3028 v0
  = case coe v0 of
      C_TxBody'46'constructor_19535 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3034 a0 a1 a2 = ()
newtype T_HasTxBody_3034
  = C_HasTxBody'46'constructor_19979 (AgdaAny -> T_TxBody_2952)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3042 :: T_HasTxBody_3034 -> AgdaAny -> T_TxBody_2952
d_TxBodyOf_3042 v0
  = case coe v0 of
      C_HasTxBody'46'constructor_19979 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3046 :: T_HasTxBody_3034 -> AgdaAny -> T_TxBody_2952
d_TxBodyOf_3046 v0 = coe d_TxBodyOf_3042 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3052 a0 a1 a2 = ()
newtype T_Hastxfee_3052
  = C_Hastxfee'46'constructor_20025 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3060 :: T_Hastxfee_3052 -> AgdaAny -> Integer
d_txfeeOf_3060 v0
  = case coe v0 of
      C_Hastxfee'46'constructor_20025 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3064 :: T_Hastxfee_3052 -> AgdaAny -> Integer
d_txfeeOf_3064 v0 = coe d_txfeeOf_3060 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3070 a0 a1 a2 = ()
newtype T_Hastxcerts_3070
  = C_Hastxcerts'46'constructor_20091 (AgdaAny ->
                                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028])
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3078 ::
  T_Hastxcerts_3070 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcertsOf_3078 v0
  = case coe v0 of
      C_Hastxcerts'46'constructor_20091 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3082 ::
  T_Hastxcerts_3070 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcertsOf_3082 v0 = coe d_txcertsOf_3078 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3088 a0 a1 a2 = ()
newtype T_Hastxprop_3088
  = C_Hastxprop'46'constructor_20157 (AgdaAny ->
                                      [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862])
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3096 ::
  T_Hastxprop_3088 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
d_txpropOf_3096 v0
  = case coe v0 of
      C_Hastxprop'46'constructor_20157 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3100 ::
  T_Hastxprop_3088 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
d_txpropOf_3100 v0 = coe d_txpropOf_3096 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxid
d_Hastxid_3106 a0 a1 a2 = ()
newtype T_Hastxid_3106
  = C_Hastxid'46'constructor_20203 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3114 :: T_Hastxid_3106 -> AgdaAny -> AgdaAny
d_txidOf_3114 v0
  = case coe v0 of
      C_Hastxid'46'constructor_20203 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txidOf
d_txidOf_3118 :: T_Hastxid_3106 -> AgdaAny -> AgdaAny
d_txidOf_3118 v0 = coe d_txidOf_3114 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3120 a0 = ()
data T_TxWitnesses_3120
  = C_TxWitnesses'46'constructor_20313 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3130 ::
  T_TxWitnesses_3120 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3130 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20313 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3132 ::
  T_TxWitnesses_3120 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3132 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20313 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3134 :: T_TxWitnesses_3120 -> [AgdaAny]
d_txdats_3134 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20313 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3136 ::
  T_TxWitnesses_3120 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3136 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20313 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3138 ::
  T_TransactionStructure_24 -> T_TxWitnesses_3120 -> [AgdaAny]
d_scriptsP1_3138 ~v0 v1 = du_scriptsP1_3138 v1
du_scriptsP1_3138 :: T_TxWitnesses_3120 -> [AgdaAny]
du_scriptsP1_3138 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406)
      (d_scripts_3132 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx
d_Tx_3140 a0 = ()
data T_Tx_3140
  = C_Tx'46'constructor_20473 T_TxBody_2952 T_TxWitnesses_3120
                              Integer Bool (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.body
d_body_3152 :: T_Tx_3140 -> T_TxBody_2952
d_body_3152 v0
  = case coe v0 of
      C_Tx'46'constructor_20473 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.wits
d_wits_3154 :: T_Tx_3140 -> T_TxWitnesses_3120
d_wits_3154 v0
  = case coe v0 of
      C_Tx'46'constructor_20473 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.txsize
d_txsize_3156 :: T_Tx_3140 -> Integer
d_txsize_3156 v0
  = case coe v0 of
      C_Tx'46'constructor_20473 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3158 :: T_Tx_3140 -> Bool
d_isValid_3158 v0
  = case coe v0 of
      C_Tx'46'constructor_20473 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.txAD
d_txAD_3160 :: T_Tx_3140 -> Maybe AgdaAny
d_txAD_3160 v0
  = case coe v0 of
      C_Tx'46'constructor_20473 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3162 ::
  T_TransactionStructure_24 -> T_HasTxBody_3034
d_HasTxBody'45'Tx_3162 ~v0 = du_HasTxBody'45'Tx_3162
du_HasTxBody'45'Tx_3162 :: T_HasTxBody_3034
du_HasTxBody'45'Tx_3162
  = coe
      C_HasTxBody'46'constructor_19979
      (coe (\ v0 -> d_body_3152 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3164 ::
  T_TransactionStructure_24 -> T_Hastxfee_3052
d_Hastxfee'45'Tx_3164 ~v0 = du_Hastxfee'45'Tx_3164
du_Hastxfee'45'Tx_3164 :: T_Hastxfee_3052
du_Hastxfee'45'Tx_3164
  = coe
      C_Hastxfee'46'constructor_20025
      (coe (\ v0 -> d_txfee_2998 (coe d_body_3152 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3166 ::
  T_TransactionStructure_24 -> T_Hastxcerts_3070
d_Hastxcerts'45'Tx_3166 ~v0 = du_Hastxcerts'45'Tx_3166
du_Hastxcerts'45'Tx_3166 :: T_Hastxcerts_3070
du_Hastxcerts'45'Tx_3166
  = coe
      C_Hastxcerts'46'constructor_20091
      (coe (\ v0 -> d_txcerts_3004 (coe d_body_3152 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3168 ::
  T_TransactionStructure_24 -> T_Hastxprop_3088
d_Hastxprop'45'Tx_3168 ~v0 = du_Hastxprop'45'Tx_3168
du_Hastxprop'45'Tx_3168 :: T_Hastxprop_3088
du_Hastxprop'45'Tx_3168
  = coe
      C_Hastxprop'46'constructor_20157
      (coe (\ v0 -> d_txprop_3010 (coe d_body_3152 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3170 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1090
d_HasWdrls'45'TxBody_3170 ~v0 = du_HasWdrls'45'TxBody_3170
du_HasWdrls'45'TxBody_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1090
du_HasWdrls'45'TxBody_3170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_HasWdrls'46'constructor_18161
      (coe (\ v0 -> d_txwdrls_3006 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3172 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1090
d_HasWdrls'45'Tx_3172 ~v0 = du_HasWdrls'45'Tx_3172
du_HasWdrls'45'Tx_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1090
du_HasWdrls'45'Tx_3172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_HasWdrls'46'constructor_18161
      (coe (\ v0 -> d_txwdrls_3006 (coe d_body_3152 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3174 :: T_TransactionStructure_24 -> T_Hastxid_3106
d_Hastxid'45'Tx_3174 ~v0 = du_Hastxid'45'Tx_3174
du_Hastxid'45'Tx_3174 :: T_Hastxid_3106
du_Hastxid'45'Tx_3174
  = coe
      C_Hastxid'46'constructor_20203
      (coe (\ v0 -> d_txid_3022 (coe d_body_3152 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.getValue
d_getValue_3176 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3176 ~v0 v1 = du_getValue_3176 v1
du_getValue_3176 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3176 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3180 :: T_TransactionStructure_24 -> ()
d_TxOut'688'_3180 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txOutHash
d_txOutHash_3182 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3182 v0 v1
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_316
                                          (d_scriptStructure_1814 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
                                                (coe d_scriptStructure_1814 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_218
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                (coe d_scriptStructure_1814 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3192 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3192 ~v0 v1 = du_getValue'688'_3192 v1
du_getValue'688'_3192 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3192 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3196 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3196 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1228 (coe v0))
               (coe d_DecEq'45'Ix_1226 (coe v0))))
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
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_192
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_3202 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3202 ~v0 v1 = du_scriptOuts_3202 v1
du_scriptOuts_3202 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3202 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_206
           (coe
              MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txinsScript
d_txinsScript_3210 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3210 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1228 (coe v0))
               (coe d_DecEq'45'Ix_1226 (coe v0))))
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
               (coe du_scriptOuts_3202 (coe v2)))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.refScripts
d_refScripts_3216 ::
  T_TransactionStructure_24 ->
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3216 v0 v1 v2
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
                  (coe d_DecEq'45'TxId_1228 (coe v0))
                  (coe d_DecEq'45'Ix_1226 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_2992 (coe d_body_3152 (coe v1)))
               (coe d_refInputs_2994 (coe d_body_3152 (coe v1))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.collateral
d_collateral_3228 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3228 v0 ~v1 = du_collateral_3228 v0
du_collateral_3228 ::
  T_Tx_3140 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3228 v0
  = coe d_collateral_3024 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3230 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3230 v0 ~v1 = du_curTreasury_3230 v0
du_curTreasury_3230 :: T_Tx_3140 -> Maybe Integer
du_curTreasury_3230 v0
  = coe d_curTreasury_3020 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.mint
d_mint_3232 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3232 v0 ~v1 = du_mint_3232 v0
du_mint_3232 :: T_Tx_3140 -> AgdaAny
du_mint_3232 v0 = coe d_mint_3000 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.refInputs
d_refInputs_3234 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3234 v0 ~v1 = du_refInputs_3234 v0
du_refInputs_3234 ::
  T_Tx_3140 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3234 v0
  = coe d_refInputs_2994 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3236 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3236 v0 ~v1 = du_reqSigHash_3236 v0
du_reqSigHash_3236 :: T_Tx_3140 -> [AgdaAny]
du_reqSigHash_3236 v0
  = coe d_reqSigHash_3026 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3238 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3238 v0 ~v1 = du_scriptIntHash_3238 v0
du_scriptIntHash_3238 :: T_Tx_3140 -> Maybe AgdaAny
du_scriptIntHash_3238 v0
  = coe d_scriptIntHash_3028 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txADhash
d_txADhash_3240 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3240 v0 ~v1 = du_txADhash_3240 v0
du_txADhash_3240 :: T_Tx_3140 -> Maybe AgdaAny
du_txADhash_3240 v0
  = coe d_txADhash_3016 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3242 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3242 v0 ~v1 = du_txNetworkId_3242 v0
du_txNetworkId_3242 :: T_Tx_3140 -> Maybe AgdaAny
du_txNetworkId_3242 v0
  = coe d_txNetworkId_3018 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txcerts
d_txcerts_3244 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_3244 v0 ~v1 = du_txcerts_3244 v0
du_txcerts_3244 ::
  T_Tx_3140 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
du_txcerts_3244 v0 = coe d_txcerts_3004 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txdonation
d_txdonation_3246 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3246 v0 ~v1 = du_txdonation_3246 v0
du_txdonation_3246 :: T_Tx_3140 -> Integer
du_txdonation_3246 v0
  = coe d_txdonation_3012 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txfee
d_txfee_3248 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3248 v0 ~v1 = du_txfee_3248 v0
du_txfee_3248 :: T_Tx_3140 -> Integer
du_txfee_3248 v0 = coe d_txfee_2998 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txid
d_txid_3250 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3250 v0 ~v1 = du_txid_3250 v0
du_txid_3250 :: T_Tx_3140 -> AgdaAny
du_txid_3250 v0 = coe d_txid_3022 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txins
d_txins_3252 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3252 v0 ~v1 = du_txins_3252 v0
du_txins_3252 ::
  T_Tx_3140 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3252 v0 = coe d_txins_2992 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txouts
d_txouts_3254 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3254 v0 ~v1 = du_txouts_3254 v0
du_txouts_3254 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3254 v0 = coe d_txouts_2996 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txprop
d_txprop_3256 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
d_txprop_3256 v0 ~v1 = du_txprop_3256 v0
du_txprop_3256 ::
  T_Tx_3140 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
du_txprop_3256 v0 = coe d_txprop_3010 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txup
d_txup_3258 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3258 v0 ~v1 = du_txup_3258 v0
du_txup_3258 ::
  T_Tx_3140 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3258 v0 = coe d_txup_3014 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txvldt
d_txvldt_3260 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3260 v0 ~v1 = du_txvldt_3260 v0
du_txvldt_3260 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3260 v0 = coe d_txvldt_3002 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txvote
d_txvote_3262 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_3262 v0 ~v1 = du_txvote_3262 v0
du_txvote_3262 ::
  T_Tx_3140 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
du_txvote_3262 v0 = coe d_txvote_3008 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3264 ::
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3264 v0 ~v1 = du_txwdrls_3264 v0
du_txwdrls_3264 ::
  T_Tx_3140 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3264 v0 = coe d_txwdrls_3006 (coe d_body_3152 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txscripts
d_txscripts_3266 ::
  T_TransactionStructure_24 ->
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3266 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3132 (coe d_wits_3154 (coe v1)))
      (coe d_refScripts_3216 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3276 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3276 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_m_3288 (coe v0) (coe v2) (coe v3)) (coe v1)
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
               (coe d_cryptoStructure_1274 (coe v0))))
         (coe v1)
         (let v4
                = MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                  (coe du_m_3288 (coe v0) (coe v2) (coe v3))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.m
d_m_3288 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3288 v0 ~v1 v2 v3 = du_m_3288 v0 v2 v3
du_m_3288 ::
  T_TransactionStructure_24 ->
  T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3288 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe d_cryptoStructure_1274 (coe v0)))
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
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_316
                  (d_scriptStructure_1814 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_296
                        (coe d_scriptStructure_1814 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_218
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                        (coe d_scriptStructure_1814 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3266 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3290 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3290 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
              (d_tokenAlgebra_2304 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
