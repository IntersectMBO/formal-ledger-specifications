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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
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
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
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
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
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
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
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
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
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
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
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
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
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
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
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
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Transaction.TransactionStructure
d_TransactionStructure_24 = ()
data T_TransactionStructure_24
  = C_constructor_3612 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
                       (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction._.THash
d_THash_98 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_98 = erased
-- Ledger.Conway.Specification.Transaction._.Ser
d_Ser_106 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_106 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_134 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__144 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__144 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Value
d_Value_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_162 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coin
d_coin_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_174 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.inject
d_inject_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.policies
d_policies_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.size
d_size_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Ix
d_Ix_1270 :: T_TransactionStructure_24 -> ()
d_Ix_1270 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxId
d_TxId_1272 :: T_TransactionStructure_24 -> ()
d_TxId_1272 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1274 :: T_TransactionStructure_24 -> ()
d_AuxiliaryData_1274 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1276 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1276 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1278 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1278 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1280 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1284 :: T_TransactionStructure_24 -> ()
d_THash_1284 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1286 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1286 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1280 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1288 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1288 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1280 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1290 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1280 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1292 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1280 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1294 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1294 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1298 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1298 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1300 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1300 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1302 ::
  T_TransactionStructure_24 -> Integer
d_MaxLovelaceSupply'7580'_1302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Network
d_Network_1304 :: T_TransactionStructure_24 -> ()
d_Network_1304 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1306 :: T_TransactionStructure_24 -> AgdaAny
d_NetworkId_1306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1308 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1310 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1312 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1312 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1314 :: T_TransactionStructure_24 -> Integer
d_Quorum_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1316 ::
  T_TransactionStructure_24 -> Integer
d_RandomnessStabilisationWindow'7580'_1316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1318 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1320 :: T_TransactionStructure_24 -> Integer
d_SlotsPerEpoch'7580'_1320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1322 ::
  T_TransactionStructure_24 -> Integer
d_StabilityWindow'7580'_1322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1324 ::
  T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1324 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1326 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1328 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1328 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1332 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1332 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1334 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d_cryptoStructure_1328 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1336 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1336 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1338 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1338 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1340 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1340 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1342 :: T_TransactionStructure_24 -> ()
d_THash_1342 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1344 :: T_TransactionStructure_24 -> ()
d_KeyPair_1344 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1346 :: T_TransactionStructure_24 -> ()
d_SKey_1346 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1348 :: T_TransactionStructure_24 -> ()
d_ScriptHash_1348 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1350 :: T_TransactionStructure_24 -> ()
d_Ser_1350 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1352 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d_cryptoStructure_1328 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1354 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1354 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1356 :: T_TransactionStructure_24 -> ()
d_Sig_1356 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1358 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1358 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1360 :: T_TransactionStructure_24 -> ()
d_VKey_1360 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1362 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1362 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1364 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1364 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1366 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1366 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.khs
d_khs_1368 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1368 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d_cryptoStructure_1328 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1370 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1370 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d_cryptoStructure_1328 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sign
d_sign_1372 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1372 v0
  = let v1 = d_cryptoStructure_1328 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1376 :: T_TransactionStructure_24 -> ()
d_MemoryEstimate_1376 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1378 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1384 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1386 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1388 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1394 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1398 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1402 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1406 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1410 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1410 ~v0 = du_addValue_1410
du_addValue_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1414 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1414 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1418 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1422 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1426 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1430 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1430 ~v0 = du_sum'7515'_1430
du_sum'7515'_1430 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1432 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1436 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1442 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1444 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1448 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1454 ~v0 = du_isMagmaIsomorphism_1454
du_isMagmaIsomorphism_1454 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1454 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1456 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1456 v2
du_isMagmaMonomorphism_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1462 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1464 ~v0 ~v1 v2 = du_isRelIsomorphism_1464 v2
du_isRelIsomorphism_1464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1466 ~v0 ~v1 v2 = du_isRelMonomorphism_1466 v2
du_isRelMonomorphism_1466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1466 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1470 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1472 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1476 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1482 ~v0 = du_isMagmaMonomorphism_1482
du_isMagmaMonomorphism_1482 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1482 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1488 ~v0 ~v1 v2 = du_isRelMonomorphism_1488 v2
du_isRelMonomorphism_1488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1490 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1492 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1496 :: T_TransactionStructure_24 -> ()
d_Addr_1496 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1498 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1502 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1506 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1508 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1510 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1510 ~v0 = du_Dec'45'isScript_1510
du_Dec'45'isScript_1510 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1510
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1512 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1512 ~v0 = du_Dec'45'isVKey_1512
du_Dec'45'isVKey_1512 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1512
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1514 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1294 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe d_cryptoStructure_1328 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1516 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1516 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1294 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe d_cryptoStructure_1328 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1518 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe d_cryptoStructure_1328 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1520 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1294 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe d_cryptoStructure_1328 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1522 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1526 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1526 ~v0
  = du_HasCredential'45'RewardAddress_1526
du_HasCredential'45'RewardAddress_1526 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1526
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_164
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1528 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1532 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_1532 ~v0
  = du_HasNetworkId'45'BaseAddr_1532
du_HasNetworkId'45'BaseAddr_1532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BaseAddr_1532
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1534 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_1534 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1534
du_HasNetworkId'45'BootstrapAddr_1534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'BootstrapAddr_1534
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1536 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RewardAddress_1536 ~v0
  = du_HasNetworkId'45'RewardAddress_1536
du_HasNetworkId'45'RewardAddress_1536 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RewardAddress_1536
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_162
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasWithdrawals
d_HasWithdrawals_1538 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1546 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1546 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RewardAddress
d_RewardAddress_1548 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1554 :: T_TransactionStructure_24 -> ()
d_ScriptAddr_1554 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1556 :: T_TransactionStructure_24 -> ()
d_ScriptBaseAddr_1556 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1558 :: T_TransactionStructure_24 -> ()
d_ScriptBootstrapAddr_1558 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1562 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1562 ~v0 = du_Show'45'Credential_1562
du_Show'45'Credential_1562 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1562 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1564 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1564 ~v0
  = du_Show'45'Credential'215'Coin_1564
du_Show'45'Credential'215'Coin_1564 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1564 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1566 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1566 ~v0 = du_Show'45'RewardAddress_1566
du_Show'45'RewardAddress_1566 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1566
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_288
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1568 :: T_TransactionStructure_24 -> ()
d_VKeyAddr_1568 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1570 :: T_TransactionStructure_24 -> ()
d_VKeyBaseAddr_1570 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1572 :: T_TransactionStructure_24 -> ()
d_VKeyBootstrapAddr_1572 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Withdrawals
d_Withdrawals_1576 :: T_TransactionStructure_24 -> ()
d_Withdrawals_1576 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.WithdrawalsOf
d_WithdrawalsOf_1578 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1578 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1580 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_1580 ~v0 = du_getScriptHash_1580
du_getScriptHash_1580 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_1580
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1582 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1584 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1584 ~v0 = du_isBootstrapAddr'63'_1584
du_isBootstrapAddr'63'_1584 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1584
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1586 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1586 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1588 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1588 ~v0 = du_isKeyHashObj_1588
du_isKeyHashObj_1588 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1588
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1590 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1590 ~v0 = du_isKeyHashObj'7495'_1590
du_isKeyHashObj'7495'_1590 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1590
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1592 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1594 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1594 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1596 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1596 ~v0 = du_isScriptObj_1596
du_isScriptObj_1596 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1596
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1598 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1598 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1600 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1602 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1602 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.netId
d_netId_1604 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1604 ~v0 = du_netId_1604
du_netId_1604 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1604
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1606 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1606 ~v0 = du_payCred_1606
du_payCred_1606 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1606
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1608 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1608 ~v0 = du_stakeCred_1608
du_stakeCred_1608 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1608
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1612 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_1612 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1614 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1614 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1616 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1616 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1620 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1620 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_1622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1624 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1634 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RewardAddress.net
d_net_1646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RewardAddress.stake
d_stake_1648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1662 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1662 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1666 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1668 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1670 ::
  T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1670 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1672 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1674 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1676 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1678 :: T_TransactionStructure_24 -> ()
d_Epoch_1678 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1680 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1680 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1682 ::
  T_TransactionStructure_24 -> AgdaAny
d_RandomnessStabilisationWindow_1682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1684 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1686 :: T_TransactionStructure_24 -> ()
d_Slot_1686 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1688 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1688 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1690 :: T_TransactionStructure_24 -> AgdaAny
d_StabilityWindow_1690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1692 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1694 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.e<sucᵉ
d_e'60'suc'7497'_1696 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_1696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1698 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_epoch_1698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1700 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_firstSlot_1700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1702 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1704 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_suc'7497'_1704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1706 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_ℕtoEpoch_1706 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.≤-predᵉ
d_'8804''45'pred'7497'_1708 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_1662 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1712 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1716 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1720 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_1732 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1734 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1738 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_1740 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_1742 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_1744 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1748 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_1748 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1762 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1764 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_1768 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_1772 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_1774 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_1776 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_1784 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1786 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_1786 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Language
d_Show'45'Language_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1796 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1798 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1804 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1808 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_CostModel_1810 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_T_1812 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_THash_1814 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1818 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Datum_1818 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1836 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1838 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_ExUnits_1842 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1848 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1848 ~v0 = du_Hashable'45'Script_1848
du_Hashable'45'Script_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_1848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_LangDepView_1850 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Language_1852 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_P1Script_1854 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_PlutusScript_1856 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny
d_PlutusV1_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny
d_PlutusV2_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny
d_PlutusV3_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Prices_1864 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1866 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Redeemer_1866 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1868 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Script_1868 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Language
d_Show'45'Language_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1878 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1880 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_1886 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1886 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_1888 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1888 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_1890 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1890 ~v0 = du_isP1Script'63'_1890
du_isP1Script'63'_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1890 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_404
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_1892 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1892 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_1894 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1894 ~v0 = du_isP2Script'63'_1894
du_isP2Script'63'_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1894 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_418
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny -> AgdaAny
d_language_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_1902 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1902 ~v0 = du_toP1Script_1902
du_toP1Script_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_1904 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1904 ~v0 = du_toP2Script_1904
du_toP2Script_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1906 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1908 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1910 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
d_scriptStructure_1910 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1914 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1914 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_1916 :: T_TransactionStructure_24 -> ()
d_CostModel_1916 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T
d_T_1918 :: T_TransactionStructure_24 -> ()
d_T_1918 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1920 :: T_TransactionStructure_24 -> ()
d_THash_1920 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1922 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Datum
d_Datum_1924 :: T_TransactionStructure_24 -> ()
d_Datum_1924 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1926 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1928 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1930 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1932 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1934 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1936 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1938 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1940 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1942 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1942 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_1910 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1944 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1944 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_1910 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1946 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1948 :: T_TransactionStructure_24 -> ()
d_ExUnits_1948 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1950 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1952 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1954 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1956 :: T_TransactionStructure_24 -> ()
d_LangDepView_1956 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Language
d_Language_1958 :: T_TransactionStructure_24 -> ()
d_Language_1958 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_1960 :: T_TransactionStructure_24 -> ()
d_P1Script_1960 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1962 :: T_TransactionStructure_24 -> ()
d_PlutusScript_1962 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1964 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV1_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1966 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV2_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1968 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV3_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Prices
d_Prices_1970 :: T_TransactionStructure_24 -> ()
d_Prices_1970 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1972 :: T_TransactionStructure_24 -> ()
d_Redeemer_1972 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Script
d_Script_1974 :: T_TransactionStructure_24 -> ()
d_Script_1974 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1976 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1978 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Language
d_Show'45'Language_1980 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1982 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1984 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1984 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_1910 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1986 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1986 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe d_scriptStructure_1910 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1988 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1988 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
            (coe d_scriptStructure_1910 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1990 ::
  T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_1992 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1992 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_1994 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1994 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_1996 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1996 ~v0 = du_isP1Script'63'_1996
du_isP1Script'63'_1996 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_404
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_1998 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1998 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_2000 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2000 ~v0 = du_isP2Script'63'_2000
du_isP2Script'63'_2000 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2000
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_418
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.language
d_language_2002 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_language_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe d_scriptStructure_1910 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.p1s
d_p1s_2004 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ps
d_ps_2006 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_2008 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2008 ~v0 = du_toP1Script_2008
du_toP1Script_2008 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2008
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_2010 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2010 ~v0 = du_toP2Script_2010
du_toP2Script_2010 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2012 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2012 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2014 ::
  T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2014 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2018 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_448 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_456
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2024 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2024 ~v0
  = du_DecEq'45'DrepThresholds_2024
du_DecEq'45'DrepThresholds_2024 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2024
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_574
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2026 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2026 ~v0 = du_DecEq'45'PParamGroup_2026
du_DecEq'45'PParamGroup_2026 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2026
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_580
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2028 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_578
      (coe d_epochStructure_1662 (coe v0))
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2030 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2030 ~v0
  = du_DecEq'45'PoolThresholds_2030
du_DecEq'45'PoolThresholds_2030 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_576
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2032 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2038 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_2044 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2048 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2048 ~v0 = du_HasCast'45'Acnt_2048
du_HasCast'45'Acnt_2048 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_194
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2050 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_2054 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_2054 ~v0 = du_HasReserves'45'Acnt_2054
du_HasReserves'45'Acnt_2054 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_2054
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_182
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2056 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_2056 ~v0 = du_HasTreasury'45'Acnt_2056
du_HasTreasury'45'Acnt_2056 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_2056
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_180
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.LanguageCostModels
d_LanguageCostModels_2058 :: T_TransactionStructure_24 -> ()
d_LanguageCostModels_2058 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2062 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2064 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2068 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_PParamsOf_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2074 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2078 :: T_TransactionStructure_24 -> ()
d_ProtVer_2078 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2082 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2082 ~v0 = du_Show'45'DrepThresholds_2082
du_Show'45'DrepThresholds_2082 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2082
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_582
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2084 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2084 v0
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45'List_16
      (coe
         MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe d_scriptStructure_1910 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe d_scriptStructure_1910 (coe v0)))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2086 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_588
      (coe d_epochStructure_1662 (coe v0))
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2088 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2088 ~v0 = du_Show'45'PoolThresholds_2088
du_Show'45'PoolThresholds_2088 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2088
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_584
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2090 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2090 ~v0 = du_Show'45'ProtVer_2090
du_Show'45'ProtVer_2090 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2090
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2098 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2098 ~v0 = du_paramsWF'45'elim_2098
du_paramsWF'45'elim_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2098 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2100 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  ()
d_paramsWellFormed_2100 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2102 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  [Integer]
d_positivePParams_2102 ~v0 = du_positivePParams_2102
du_positivePParams_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  [Integer]
du_positivePParams_2102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_464
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2104 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2106 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2106 ~v0 = du_pvCanFollow'63'_2106
du_pvCanFollow'63'_2106 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1428
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_reserves_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_treasury_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_230 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_232 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_234 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_236 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_238 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_240 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_242 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_244 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_246 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_248 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1542
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  ()
d_UpdateT_2142 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_applyUpdate_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476
d_ppUpd_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1500
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2150 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  AgdaAny -> ()
d_ppdWellFormed_2150 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_448 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_456
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_428 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_PParamsOf_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_436
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_Emax_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_394
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_a_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_366 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_398 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_b_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_368 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_ccMaxTermLength_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_410
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_ccMinSize_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_408
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_coinsPerUTxOByte_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_378
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_collateralPercentage_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_400
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2192 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_420
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_402
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_drepActivity_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_418
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_drepDeposit_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_416
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_406
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_govActionDeposit_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_414
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_govActionLifetime_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_412
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_keyDeposit_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_370
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_maxBlockExUnits_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_358
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxBlockSize_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_350
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxCollateralInputs_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_362
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxHeaderSize_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_354
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxRefScriptSizePerBlock_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_386
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxRefScriptSizePerTx_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_384
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_maxTxExUnits_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_356
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxTxSize_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_352
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_maxValSize_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_360
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_382
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_minUTxOValue_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_392
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_374
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_nopt_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_396
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  Integer
d_poolDeposit_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_372
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_404
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny
d_prices_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_380
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_364 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_390
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_388
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_376
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476 ->
  ()
d_UpdateT_2250 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_applyUpdate_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1492
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1500
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2256 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476 ->
  AgdaAny -> ()
d_ppdWellFormed_2256 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1494
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2262 ::
  T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2262 ~v0 = du__'63''8599'__2262
du__'63''8599'__2262 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2262 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1218
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2264 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1422
      (coe d_epochStructure_1662 (coe v0))
      (coe d_scriptStructure_1910 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2266 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2270 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_applyPParamsUpdate_2270 ~v0 = du_applyPParamsUpdate_2270
du_applyPParamsUpdate_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
du_applyPParamsUpdate_2270
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1266
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2272 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_modifiedUpdateGroups_2272 ~v0 = du_modifiedUpdateGroups_2272
du_modifiedUpdateGroups_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
du_modifiedUpdateGroups_2272
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1202
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2274 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
d_modifiesEconomicGroup_2274 ~v0 = du_modifiesEconomicGroup_2274
du_modifiesEconomicGroup_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
du_modifiesEconomicGroup_2274
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_898
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2276 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
d_modifiesGovernanceGroup_2276 ~v0
  = du_modifiesGovernanceGroup_2276
du_modifiesGovernanceGroup_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
du_modifiesGovernanceGroup_2276
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1050
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2278 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
d_modifiesNetworkGroup_2278 ~v0 = du_modifiesNetworkGroup_2278
du_modifiesNetworkGroup_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
du_modifiesNetworkGroup_2278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_822
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
d_modifiesSecurityGroup_2280 ~v0 = du_modifiesSecurityGroup_2280
du_modifiesSecurityGroup_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
du_modifiesSecurityGroup_2280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1126
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2282 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
d_modifiesTechnicalGroup_2282 ~v0 = du_modifiesTechnicalGroup_2282
du_modifiesTechnicalGroup_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Bool
du_modifiesTechnicalGroup_2282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_974
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2284 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  ()
d_paramsUpdateWellFormed_2284 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2286 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_456
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_664
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_666
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_668
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_670
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_692
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_686
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_714
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_732
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_722
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_724
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_726
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2288 ::
  T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2288 ~v0 = du_'8801''45'update_2288
du_'8801''45'update_2288 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2288 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1232
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe AgdaAny
d_Emax_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_710
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_a_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_680 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_708 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_b_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_682 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_ccMaxTermLength_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_732
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_ccMinSize_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_730
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_coinsPerUTxOByte_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_692
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_collateralPercentage_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_714
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdls_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_716
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe AgdaAny
d_drepActivity_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_728
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_drepDeposit_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_726
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_718
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_govActionDeposit_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_724
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_govActionLifetime_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_722
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_keyDeposit_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_684
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe AgdaAny
d_maxBlockExUnits_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_676
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxBlockSize_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_664
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxCollateralInputs_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_672
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxHeaderSize_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_668
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_700
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_698
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe AgdaAny
d_maxTxExUnits_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_674
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxTxSize_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_666
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_maxValSize_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_670
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_696
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_minUTxOValue_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_706
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_688
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_nopt_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_712
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe Integer
d_poolDeposit_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_686
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_720
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe AgdaAny
d_prices_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_694
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_678 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_704
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_702
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_690
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_264 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_266 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_268 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_270 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_272 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.govParams
d_govParams_2380 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1510
d_govParams_2380 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2384 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1542
      (coe d_govParams_2380 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2386 :: T_TransactionStructure_24 -> ()
d_UpdateT_2386 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2388 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_applyUpdate_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
         (coe d_govParams_2380 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2390 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1476
d_ppUpd_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
      (coe d_govParams_2380 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2392 ::
  T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1500
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
         (coe d_govParams_2380 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2394 :: T_TransactionStructure_24 -> AgdaAny -> ()
d_ppdWellFormed_2394 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2396 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1528
         (coe d_govParams_2380 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2398 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2398 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2402 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2402 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2398 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2404 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2404 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2406 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2406 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2408 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2410 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2412 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2416 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2420 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Value
d_Value_2424 :: T_TransactionStructure_24 -> ()
d_Value_2424 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2426 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2428 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin
d_coin_2430 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_coin_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2432 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2432 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2434 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2436 ::
  T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2436 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.inject
d_inject_2438 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_inject_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2440 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2440 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2398 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.policies
d_policies_2442 ::
  T_TransactionStructure_24 -> AgdaAny -> [AgdaAny]
d_policies_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2444 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2444 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2398 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.size
d_size_2446 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_size_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2448 ::
  T_TransactionStructure_24 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2398 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ε
d_ε_2450 :: T_TransactionStructure_24 -> AgdaAny
d_ε_2450 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2398 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2454 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2460 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2462 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2466 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2472 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2472 ~v0 = du_isMagmaIsomorphism_2472
du_isMagmaIsomorphism_2472 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2472 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2474 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2474 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2474 v2
du_isMagmaMonomorphism_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2482 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2482 ~v0 ~v1 v2 = du_isRelIsomorphism_2482 v2
du_isRelIsomorphism_2482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2484 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2484 ~v0 ~v1 v2 = du_isRelMonomorphism_2484 v2
du_isRelMonomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2484 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2488 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2490 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2494 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2498 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2500 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2500 ~v0 = du_isMagmaMonomorphism_2500
du_isMagmaMonomorphism_2500 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2500 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2506 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2506 ~v0 ~v1 v2 = du_isRelMonomorphism_2506 v2
du_isRelMonomorphism_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2506 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2508 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2510 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2510 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2512 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_txidBytes_2512 v0
  = case coe v0 of
      C_constructor_3612 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2514 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.C_constructor_1392
      (d_DecEq'45'TxId_1278 (coe v0)) (d_cryptoStructure_1328 (coe v0))
      (d_epochStructure_1662 (coe v0)) (d_scriptStructure_1910 (coe v0))
      (d_govParams_2380 (coe v0)) (d_globalConstants_1294 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor
d_Anchor_2518 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DReps
d_DReps_2528 :: T_TransactionStructure_24 -> ()
d_DReps_2528 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DRepsOf
d_DRepsOf_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2532 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2532 ~v0 = du_DecEq'45'GovActionType_2532
du_DecEq'45'GovActionType_2532 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1110
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_2534 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2534 ~v0 = du_DecEq'45'GovRole_2534
du_DecEq'45'GovRole_2534 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1112
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2536 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1118
      (coe d_govStructure_2514 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2538 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1116
      (coe d_govStructure_2514 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_2540 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2540 ~v0 = du_DecEq'45'Vote_2540
du_DecEq'45'Vote_2540 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1114
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction
d_GovAction_2542 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionData
d_GovActionData_2546 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_802 ->
  ()
d_GovActionData_2546 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionID
d_GovActionID_2548 :: T_TransactionStructure_24 -> ()
d_GovActionID_2548 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionOf
d_GovActionOf_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_850 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836
d_GovActionOf_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_856
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState
d_GovActionState_2552 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionType
d_GovActionType_2556 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionTypeOf
d_GovActionTypeOf_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_802
d_GovActionTypeOf_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_826
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal
d_GovProposal_2560 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovRole
d_GovRole_2564 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovRoleCredential
d_GovRoleCredential_2566 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_790 ->
  ()
d_GovRoleCredential_2566 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote
d_GovVote_2568 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVoter
d_GovVoter_2572 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVoterOf
d_GovVoterOf_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1040 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880
d_GovVoterOf_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1048
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVotes
d_GovVotes_2578 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2582 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2582 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2582
du_HasCast'45'GovAction'45'Sigma_2582 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_866
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_2584 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2584 ~v0 = du_HasCast'45'GovVote_2584
du_HasCast'45'GovVote_2584 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1216
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2586 ::
  T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2586 ~v0
  = du_HasCast'45'HashProtected_2586
du_HasCast'45'HashProtected_2586 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_978
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2588 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2588 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2588
du_HasCast'45'HashProtected'45'MaybeScriptHash_2588 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_980
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasDReps
d_HasDReps_2590 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovAction
d_HasGovAction_2594 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2598 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_850
d_HasGovAction'45'GovActionState_2598 ~v0
  = du_HasGovAction'45'GovActionState_2598
du_HasGovAction'45'GovActionState_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_850
du_HasGovAction'45'GovActionState_2598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1104
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2600 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_850
d_HasGovAction'45'GovProposal_2600 ~v0
  = du_HasGovAction'45'GovProposal_2600
du_HasGovAction'45'GovProposal_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_850
du_HasGovAction'45'GovProposal_2600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1102
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovActionType
d_HasGovActionType_2602 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2606 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820
d_HasGovActionType'45'GovAction_2606 ~v0
  = du_HasGovActionType'45'GovAction_2606
du_HasGovActionType'45'GovAction_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820
du_HasGovActionType'45'GovAction_2606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_864
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2608 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820
d_HasGovActionType'45'GovActionState_2608 ~v0
  = du_HasGovActionType'45'GovActionState_2608
du_HasGovActionType'45'GovActionState_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820
du_HasGovActionType'45'GovActionState_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1108
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2610 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820
d_HasGovActionType'45'GovProposal_2610 ~v0
  = du_HasGovActionType'45'GovProposal_2610
du_HasGovActionType'45'GovProposal_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820
du_HasGovActionType'45'GovProposal_2610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1106
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovVoter
d_HasGovVoter_2612 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2616 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1040
d_HasGovVoter'45'GovVote_2616 ~v0 = du_HasGovVoter'45'GovVote_2616
du_HasGovVoter'45'GovVote_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1040
du_HasGovVoter'45'GovVote_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1096
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasPolicy
d_HasPolicy_2618 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2622 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1080
d_HasPolicy'45'GovProposal_2622 ~v0
  = du_HasPolicy'45'GovProposal_2622
du_HasPolicy'45'GovProposal_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1080
du_HasPolicy'45'GovProposal_2622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1100
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasVote
d_HasVote_2624 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_2628 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1060
d_HasVote'45'GovVote_2628 ~v0 = du_HasVote'45'GovVote_2628
du_HasVote'45'GovVote_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1060
du_HasVote'45'GovVote_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1098
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasVoteDelegs
d_HasVoteDelegs_2630 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HashProtected
d_HashProtected_2634 :: T_TransactionStructure_24 -> () -> ()
d_HashProtected_2634 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_2638 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_802 ->
  ()
d_NeedsHash_2638 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Policy
d_Policy_2644 :: T_TransactionStructure_24 -> ()
d_Policy_2644 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.PolicyOf
d_PolicyOf_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1080 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1088
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Show-GovRole
d_Show'45'GovRole_2650 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2650 ~v0 = du_Show'45'GovRole_2650
du_Show'45'GovRole_2650 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_2650
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_798
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Show-VDeleg
d_Show'45'VDeleg_2652 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1218
      (coe d_govStructure_2514 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.VDeleg
d_VDeleg_2660 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Vote
d_Vote_2662 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.VoteDelegs
d_VoteDelegs_2664 :: T_TransactionStructure_24 -> ()
d_VoteDelegs_2664 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.VoteDelegsOf
d_VoteDelegsOf_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_954 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_962
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.VoteOf
d_VoteOf_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1060 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_872
d_VoteOf_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1068
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.activeDRepsOf
d_activeDRepsOf_2672 ::
  T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2672 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1268
      (coe d_govStructure_2514 (coe v0)) v2 v3 v4
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.activeInEpoch
d_activeInEpoch_2674 ::
  T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2674 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.gaData
d_gaData_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836 ->
  AgdaAny
d_gaData_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_844
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.gaType
d_gaType_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_802
d_gaType_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_842
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.govVoterCredential
d_govVoterCredential_2680 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2680 ~v0 = du_govVoterCredential_2680
du_govVoterCredential_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_2680
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1224
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.isGovVoterDRep
d_isGovVoterDRep_2682 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2682 ~v0 = du_isGovVoterDRep_2682
du_isGovVoterDRep_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_2682
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1220
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.proposedCC
d_proposedCC_2686 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2686 ~v0 = du_proposedCC_2686
du_proposedCC_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1232
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor.hash
d_hash_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_892 ->
  AgdaAny
d_hash_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_900
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor.url
d_url_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_892 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_898
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction.gaData
d_gaData_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836 ->
  AgdaAny
d_gaData_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_844
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction.gaType
d_gaType_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_802
d_gaType_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_842
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.action
d_action_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836
d_action_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1030
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.expiresIn
d_expiresIn_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_expiresIn_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1028
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.prevAction
d_prevAction_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_prevAction_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1032
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.returnAddr
d_returnAddr_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1026
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.votes
d_votes_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_924
d_votes_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1024
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.action
d_action_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836
d_action_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_998
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_892
d_anchor_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.policy
d_policy_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.anchor
d_anchor_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_892
d_anchor_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_920
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.gid
d_gid_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_914
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.vote
d_vote_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_872
d_vote_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_918
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.voter
d_voter_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880
d_voter_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_916
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVoter.gvCredential
d_gvCredential_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  AgdaAny
d_gvCredential_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_888
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVoter.gvRole
d_gvRole_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_790
d_gvRole_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_886
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVotes.gvCC
d_gvCC_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_932
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVotes.gvDRep
d_gvDRep_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_934
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVotes.gvSPO
d_gvSPO_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_936
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasDReps.DRepsOf
d_DRepsOf_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1250
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovAction.GovActionOf
d_GovActionOf_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_850 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_836
d_GovActionOf_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_856
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_820 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_802
d_GovActionTypeOf_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_826
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1040 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_880
d_GovVoterOf_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1048
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasPolicy.PolicyOf
d_PolicyOf_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1080 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1088
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasVote.VoteOf
d_VoteOf_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1060 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_872
d_VoteOf_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1068
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_954 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_962
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DCert
d_DCert_2872 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3246 :: T_TransactionStructure_24 -> ()
d_TxIn_3246 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3248 :: T_TransactionStructure_24 -> ()
d_TxOut_3248 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3250 :: T_TransactionStructure_24 -> ()
d_UTxO_3250 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_3252 :: T_TransactionStructure_24 -> ()
d_RdmrPtr_3252 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3254 :: T_TransactionStructure_24 -> ()
d_ProposedPPUpdates_3254 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Update
d_Update_3256 :: T_TransactionStructure_24 -> ()
d_Update_3256 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3262 a0 a1 a2 = ()
newtype T_HasUTxO_3262
  = C_constructor_3272 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3270 ::
  T_HasUTxO_3262 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3270 v0
  = case coe v0 of
      C_constructor_3272 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3276 ::
  T_HasUTxO_3262 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3276 v0 = coe d_UTxOOf_3270 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3278 a0 = ()
data T_TxBody_3278
  = C_constructor_3352 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904]
                       [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txIns
d_txIns_3316 ::
  T_TxBody_3278 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3316 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3318 ::
  T_TxBody_3278 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3318 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_3320 ::
  T_TxBody_3278 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3320 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txOuts
d_txOuts_3322 ::
  T_TxBody_3278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3322 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txId
d_txId_3324 :: T_TxBody_3278 -> AgdaAny
d_txId_3324 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txCerts
d_txCerts_3326 ::
  T_TxBody_3278 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_3326 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txFee
d_txFee_3328 :: T_TxBody_3278 -> Integer
d_txFee_3328 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_3330 ::
  T_TxBody_3278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3330 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txVldt
d_txVldt_3332 ::
  T_TxBody_3278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3332 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3334 :: T_TxBody_3278 -> Maybe AgdaAny
d_txADhash_3334 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txDonation
d_txDonation_3336 :: T_TxBody_3278 -> Integer
d_txDonation_3336 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_3338 ::
  T_TxBody_3278 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904]
d_txGovVotes_3338 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_3340 ::
  T_TxBody_3278 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_3340 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3342 :: T_TxBody_3278 -> Maybe AgdaAny
d_txNetworkId_3342 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_3344 :: T_TxBody_3278 -> Maybe Integer
d_currentTreasury_3344 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3346 :: T_TxBody_3278 -> AgdaAny
d_mint_3346 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.reqSignerHashes
d_reqSignerHashes_3348 :: T_TxBody_3278 -> [AgdaAny]
d_reqSignerHashes_3348 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3350 :: T_TxBody_3278 -> Maybe AgdaAny
d_scriptIntegrityHash_3350 v0
  = case coe v0 of
      C_constructor_3352 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3358 a0 a1 a2 = ()
newtype T_HasTxBody_3358
  = C_constructor_3368 (AgdaAny -> T_TxBody_3278)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3366 :: T_HasTxBody_3358 -> AgdaAny -> T_TxBody_3278
d_TxBodyOf_3366 v0
  = case coe v0 of
      C_constructor_3368 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3372 :: T_HasTxBody_3358 -> AgdaAny -> T_TxBody_3278
d_TxBodyOf_3372 v0 = coe d_TxBodyOf_3366 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasDCerts
d_HasDCerts_3378 a0 a1 a2 = ()
newtype T_HasDCerts_3378
  = C_constructor_3388 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290])
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_3386 ::
  T_HasDCerts_3378 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_DCertsOf_3386 v0
  = case coe v0 of
      C_constructor_3388 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DCertsOf
d_DCertsOf_3392 ::
  T_HasDCerts_3378 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_DCertsOf_3392 v0 = coe d_DCertsOf_3386 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasGovProposals
d_HasGovProposals_3398 a0 a1 a2 = ()
newtype T_HasGovProposals_3398
  = C_constructor_3408 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984])
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_3406 ::
  T_HasGovProposals_3398 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984]
d_GovProposalsOf_3406 v0
  = case coe v0 of
      C_constructor_3408 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovProposalsOf
d_GovProposalsOf_3412 ::
  T_HasGovProposals_3398 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984]
d_GovProposalsOf_3412 v0 = coe d_GovProposalsOf_3406 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxId
d_HasTxId_3418 a0 a1 a2 = ()
newtype T_HasTxId_3418 = C_constructor_3428 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_3426 :: T_HasTxId_3418 -> AgdaAny -> AgdaAny
d_TxIdOf_3426 v0
  = case coe v0 of
      C_constructor_3428 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TxIdOf
d_TxIdOf_3432 :: T_HasTxId_3418 -> AgdaAny -> AgdaAny
d_TxIdOf_3432 v0 = coe d_TxIdOf_3426 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_3434 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_3434 ~v0 = du_HasDonations'45'TxBody_3434
du_HasDonations'45'TxBody_3434 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_3434
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_3336 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3436 a0 = ()
data T_TxWitnesses_3436
  = C_constructor_3456 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3446 ::
  T_TxWitnesses_3436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3446 v0
  = case coe v0 of
      C_constructor_3456 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3448 ::
  T_TxWitnesses_3436 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3448 v0
  = case coe v0 of
      C_constructor_3456 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3450 :: T_TxWitnesses_3436 -> [AgdaAny]
d_txdats_3450 v0
  = case coe v0 of
      C_constructor_3456 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3452 ::
  T_TxWitnesses_3436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3452 v0
  = case coe v0 of
      C_constructor_3456 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3454 ::
  T_TransactionStructure_24 -> T_TxWitnesses_3436 -> [AgdaAny]
d_scriptsP1_3454 ~v0 v1 = du_scriptsP1_3454 v1
du_scriptsP1_3454 :: T_TxWitnesses_3436 -> [AgdaAny]
du_scriptsP1_3454 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412)
      (d_scripts_3448 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx
d_Tx_3458 a0 = ()
data T_Tx_3458
  = C_constructor_3480 T_TxBody_3278 T_TxWitnesses_3436 Integer Bool
                       (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.body
d_body_3470 :: T_Tx_3458 -> T_TxBody_3278
d_body_3470 v0
  = case coe v0 of
      C_constructor_3480 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.wits
d_wits_3472 :: T_Tx_3458 -> T_TxWitnesses_3436
d_wits_3472 v0
  = case coe v0 of
      C_constructor_3480 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.txsize
d_txsize_3474 :: T_Tx_3458 -> Integer
d_txsize_3474 v0
  = case coe v0 of
      C_constructor_3480 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3476 :: T_Tx_3458 -> Bool
d_isValid_3476 v0
  = case coe v0 of
      C_constructor_3480 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.txAD
d_txAD_3478 :: T_Tx_3458 -> Maybe AgdaAny
d_txAD_3478 v0
  = case coe v0 of
      C_constructor_3480 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3482 ::
  T_TransactionStructure_24 -> T_HasTxBody_3358
d_HasTxBody'45'Tx_3482 ~v0 = du_HasTxBody'45'Tx_3482
du_HasTxBody'45'Tx_3482 :: T_HasTxBody_3358
du_HasTxBody'45'Tx_3482
  = coe C_constructor_3368 (coe (\ v0 -> d_body_3470 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasFees-Tx
d_HasFees'45'Tx_3484 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_3484 ~v0 = du_HasFees'45'Tx_3484
du_HasFees'45'Tx_3484 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Tx_3484
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_txFee_3328 (coe d_body_3470 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_3486 ::
  T_TransactionStructure_24 -> T_HasDCerts_3378
d_HasDCerts'45'Tx_3486 ~v0 = du_HasDCerts'45'Tx_3486
du_HasDCerts'45'Tx_3486 :: T_HasDCerts_3378
du_HasDCerts'45'Tx_3486
  = coe
      C_constructor_3388
      (coe (\ v0 -> d_txCerts_3326 (coe d_body_3470 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasGovProposals-Tx
d_HasGovProposals'45'Tx_3488 ::
  T_TransactionStructure_24 -> T_HasGovProposals_3398
d_HasGovProposals'45'Tx_3488 ~v0 = du_HasGovProposals'45'Tx_3488
du_HasGovProposals'45'Tx_3488 :: T_HasGovProposals_3398
du_HasGovProposals'45'Tx_3488
  = coe
      C_constructor_3408
      (coe (\ v0 -> d_txGovProposals_3340 (coe d_body_3470 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3490 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_3490 ~v0
  = du_HasWithdrawals'45'TxBody_3490
du_HasWithdrawals'45'TxBody_3490 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'TxBody_3490
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_152
      (coe (\ v0 -> d_txWithdrawals_3330 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3492 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_3492 ~v0 = du_HasWithdrawals'45'Tx_3492
du_HasWithdrawals'45'Tx_3492 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
du_HasWithdrawals'45'Tx_3492
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_152
      (coe (\ v0 -> d_txWithdrawals_3330 (coe d_body_3470 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_3494 :: T_TransactionStructure_24 -> T_HasTxId_3418
d_HasTxId'45'Tx_3494 ~v0 = du_HasTxId'45'Tx_3494
du_HasTxId'45'Tx_3494 :: T_HasTxId_3418
du_HasTxId'45'Tx_3494
  = coe
      C_constructor_3428
      (coe (\ v0 -> d_txId_3324 (coe d_body_3470 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_3496 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_3496 ~v0 = du_HasDonations'45'Tx_3496
du_HasDonations'45'Tx_3496 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_3496
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_3336 (coe d_body_3470 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.getValue
d_getValue_3498 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3498 ~v0 v1 = du_getValue_3498 v1
du_getValue_3498 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3498 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3502 :: T_TransactionStructure_24 -> ()
d_TxOut'688'_3502 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txOutHash
d_txOutHash_3504 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3504 v0 v1
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
                                    (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
                                          (d_scriptStructure_1910 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                                                (coe d_scriptStructure_1910 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                (coe d_scriptStructure_1910 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3514 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3514 ~v0 v1 = du_getValue'688'_3514 v1
du_getValue'688'_3514 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3514 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txInsVKey
d_txInsVKey_3518 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_3518 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8745'__732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe d_DecEq'45'TxId_1278 (coe v0))
            (coe d_DecEq'45'Ix_1276 (coe v0))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1440
            (coe v2)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_3524 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3524 ~v0 v1 = du_scriptOuts_3524 v1
du_scriptOuts_3524 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3524 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
           (coe
              MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txInsScript
d_txInsScript_3532 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_3532 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8745'__732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe d_DecEq'45'TxId_1278 (coe v0))
            (coe d_DecEq'45'Ix_1276 (coe v0))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_586
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_scriptOuts_3524 (coe v2))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.refScripts
d_refScripts_3538 ::
  T_TransactionStructure_24 ->
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3538 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe d_DecEq'45'TxId_1278 (coe v0))
                  (coe d_DecEq'45'Ix_1276 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txIns_3316 (coe d_body_3470 (coe v1)))
               (coe d_refInputs_3318 (coe d_body_3470 (coe v1))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.collateralInputs
d_collateralInputs_3550 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3550 v0 ~v1 = du_collateralInputs_3550 v0
du_collateralInputs_3550 ::
  T_Tx_3458 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3550 v0
  = coe d_collateralInputs_3320 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.currentTreasury
d_currentTreasury_3552 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_currentTreasury_3552 v0 ~v1 = du_currentTreasury_3552 v0
du_currentTreasury_3552 :: T_Tx_3458 -> Maybe Integer
du_currentTreasury_3552 v0
  = coe d_currentTreasury_3344 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.mint
d_mint_3554 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3554 v0 ~v1 = du_mint_3554 v0
du_mint_3554 :: T_Tx_3458 -> AgdaAny
du_mint_3554 v0 = coe d_mint_3346 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.refInputs
d_refInputs_3556 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3556 v0 ~v1 = du_refInputs_3556 v0
du_refInputs_3556 ::
  T_Tx_3458 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3556 v0
  = coe d_refInputs_3318 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.reqSignerHashes
d_reqSignerHashes_3558 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSignerHashes_3558 v0 ~v1 = du_reqSignerHashes_3558 v0
du_reqSignerHashes_3558 :: T_Tx_3458 -> [AgdaAny]
du_reqSignerHashes_3558 v0
  = coe d_reqSignerHashes_3348 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.scriptIntegrityHash
d_scriptIntegrityHash_3560 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntegrityHash_3560 v0 ~v1 = du_scriptIntegrityHash_3560 v0
du_scriptIntegrityHash_3560 :: T_Tx_3458 -> Maybe AgdaAny
du_scriptIntegrityHash_3560 v0
  = coe d_scriptIntegrityHash_3350 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txADhash
d_txADhash_3562 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3562 v0 ~v1 = du_txADhash_3562 v0
du_txADhash_3562 :: T_Tx_3458 -> Maybe AgdaAny
du_txADhash_3562 v0
  = coe d_txADhash_3334 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txCerts
d_txCerts_3564 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_3564 v0 ~v1 = du_txCerts_3564 v0
du_txCerts_3564 ::
  T_Tx_3458 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
du_txCerts_3564 v0 = coe d_txCerts_3326 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txDonation
d_txDonation_3566 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txDonation_3566 v0 ~v1 = du_txDonation_3566 v0
du_txDonation_3566 :: T_Tx_3458 -> Integer
du_txDonation_3566 v0
  = coe d_txDonation_3336 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txFee
d_txFee_3568 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txFee_3568 v0 ~v1 = du_txFee_3568 v0
du_txFee_3568 :: T_Tx_3458 -> Integer
du_txFee_3568 v0 = coe d_txFee_3328 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txGovProposals
d_txGovProposals_3570 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_3570 v0 ~v1 = du_txGovProposals_3570 v0
du_txGovProposals_3570 ::
  T_Tx_3458 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_984]
du_txGovProposals_3570 v0
  = coe d_txGovProposals_3340 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txGovVotes
d_txGovVotes_3572 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904]
d_txGovVotes_3572 v0 ~v1 = du_txGovVotes_3572 v0
du_txGovVotes_3572 ::
  T_Tx_3458 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904]
du_txGovVotes_3572 v0
  = coe d_txGovVotes_3338 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txId
d_txId_3574 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txId_3574 v0 ~v1 = du_txId_3574 v0
du_txId_3574 :: T_Tx_3458 -> AgdaAny
du_txId_3574 v0 = coe d_txId_3324 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txIns
d_txIns_3576 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3576 v0 ~v1 = du_txIns_3576 v0
du_txIns_3576 ::
  T_Tx_3458 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3576 v0 = coe d_txIns_3316 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3578 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3578 v0 ~v1 = du_txNetworkId_3578 v0
du_txNetworkId_3578 :: T_Tx_3458 -> Maybe AgdaAny
du_txNetworkId_3578 v0
  = coe d_txNetworkId_3342 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txOuts
d_txOuts_3580 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3580 v0 ~v1 = du_txOuts_3580 v0
du_txOuts_3580 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3580 v0 = coe d_txOuts_3322 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txVldt
d_txVldt_3582 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3582 v0 ~v1 = du_txVldt_3582 v0
du_txVldt_3582 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3582 v0 = coe d_txVldt_3332 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txWithdrawals
d_txWithdrawals_3584 ::
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3584 v0 ~v1 = du_txWithdrawals_3584 v0
du_txWithdrawals_3584 ::
  T_Tx_3458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3584 v0
  = coe d_txWithdrawals_3330 (coe d_body_3470 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txscripts
d_txscripts_3586 ::
  T_TransactionStructure_24 ->
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3586 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3448 (coe d_wits_3472 (coe v1)))
      (coe d_refScripts_3538 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3596 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3596 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_m_3608 (coe v0) (coe v2) (coe v3)) (coe v1)
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe d_cryptoStructure_1328 (coe v0))))
         (coe v1)
         (let v4
                = MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v4
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                  (coe du_m_3608 (coe v0) (coe v2) (coe v3))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.m
d_m_3608 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3608 v0 ~v1 v2 v3 = du_m_3608 v0 v2 v3
du_m_3608 ::
  T_TransactionStructure_24 ->
  T_Tx_3458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3608 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
                  (d_scriptStructure_1910 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                        (coe d_scriptStructure_1910 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                        (coe d_scriptStructure_1910 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3586 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3610 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3610 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2398 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
