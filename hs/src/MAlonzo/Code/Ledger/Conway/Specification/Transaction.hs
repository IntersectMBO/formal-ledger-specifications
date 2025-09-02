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
  = C_constructor_3460 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556
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
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
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
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_102 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_130 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__140 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__140 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Value
d_Value_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_158 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coin
d_coin_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_170 = erased
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.inject
d_inject_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.policies
d_policies_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction._.TokenAlgebra.size
d_size_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Ix
d_Ix_1274 :: T_TransactionStructure_24 -> ()
d_Ix_1274 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxId
d_TxId_1276 :: T_TransactionStructure_24 -> ()
d_TxId_1276 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1278 :: T_TransactionStructure_24 -> ()
d_AuxiliaryData_1278 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1280 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1282 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1282 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1284 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1284 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1288 :: T_TransactionStructure_24 -> ()
d_THash_1288 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1290 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1284 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1292 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1284 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1294 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1294 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1284 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1296 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1284 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1298 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260
d_globalConstants_1298 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1302 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1304 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1304 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Network
d_Network_1306 :: T_TransactionStructure_24 -> ()
d_Network_1306 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1308 :: T_TransactionStructure_24 -> AgdaAny
d_NetworkId_1308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1310 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_302
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1312 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1312 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_290
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1314 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_294
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1316 :: T_TransactionStructure_24 -> Integer
d_Quorum_1316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_298
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1318 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_286
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1320 :: T_TransactionStructure_24 -> Integer
d_SlotsPerEpoch'7580'_1320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_288
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1322 ::
  T_TransactionStructure_24 -> Integer
d_StabilityWindow'7580'_1322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_296
      (coe d_globalConstants_1298 (coe v0))
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
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_316
      (coe d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1328 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1328 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v8
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
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
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
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_216
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
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_202
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1514 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_248
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe d_globalConstants_1298 (coe v0)))
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
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_250
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe d_globalConstants_1298 (coe v0)))
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
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe d_cryptoStructure_1328 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1520 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe d_globalConstants_1298 (coe v0)))
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
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1526 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_1526 ~v0
  = du_HasCredential'45'RwdAddr_1526
du_HasCredential'45'RwdAddr_1526 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RwdAddr_1526
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_142
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1528 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1532 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120
d_HasNetworkId'45'BaseAddr_1532 ~v0
  = du_HasNetworkId'45'BaseAddr_1532
du_HasNetworkId'45'BaseAddr_1532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120
du_HasNetworkId'45'BaseAddr_1532
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_136
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1534 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120
d_HasNetworkId'45'BootstrapAddr_1534 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1534
du_HasNetworkId'45'BootstrapAddr_1534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120
du_HasNetworkId'45'BootstrapAddr_1534
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_138
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1536 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120
d_HasNetworkId'45'RwdAddr_1536 ~v0
  = du_HasNetworkId'45'RwdAddr_1536
du_HasNetworkId'45'RwdAddr_1536 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120
du_HasNetworkId'45'RwdAddr_1536
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_140
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1542 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1542 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_128
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1544 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1550 :: T_TransactionStructure_24 -> ()
d_ScriptAddr_1550 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1552 :: T_TransactionStructure_24 -> ()
d_ScriptBaseAddr_1552 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1554 :: T_TransactionStructure_24 -> ()
d_ScriptBootstrapAddr_1554 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1558 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1558 ~v0 = du_Show'45'Credential_1558
du_Show'45'Credential_1558 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1558 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_264
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1560 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1560 ~v0
  = du_Show'45'Credential'215'Coin_1560
du_Show'45'Credential'215'Coin_1560 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1560 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_268
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1562 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1562 ~v0 = du_Show'45'RwdAddr_1562
du_Show'45'RwdAddr_1562 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1562
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_266
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1564 :: T_TransactionStructure_24 -> ()
d_VKeyAddr_1564 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1566 :: T_TransactionStructure_24 -> ()
d_VKeyBaseAddr_1566 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1568 :: T_TransactionStructure_24 -> ()
d_VKeyBootstrapAddr_1568 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1572 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_1572 ~v0 = du_getScriptHash_1572
du_getScriptHash_1572 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_1572
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_242
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1574 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1576 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1576 ~v0 = du_isBootstrapAddr'63'_1576
du_isBootstrapAddr'63'_1576 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1576
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_196
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1578 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1578 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1580 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1580 ~v0 = du_isKeyHashObj_1580
du_isKeyHashObj_1580 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1580
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1582 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1582 ~v0 = du_isKeyHashObj'7495'_1582
du_isKeyHashObj'7495'_1582 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1582
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1584 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1586 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1586 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1588 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1588 ~v0 = du_isScriptObj_1588
du_isScriptObj_1588 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1588
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1590 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1590 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1592 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1594 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1594 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.netId
d_netId_1596 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1596 ~v0 = du_netId_1596
du_netId_1596 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1596
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_170
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1598 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1598 ~v0 = du_payCred_1598
du_payCred_1598 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1598
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_166
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1600 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1600 ~v0 = du_stakeCred_1600
du_stakeCred_1600 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1600
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_168
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1604 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_1604 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1606 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1608 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1612 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1612 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1614 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_1614 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1616 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1616 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1626 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1626 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_120 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_128
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RwdAddr.net
d_net_1634 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_1634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1636 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1650 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1650 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1654 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__78
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1656 ::
  T_TransactionStructure_24 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__80
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1658 ::
  T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1658 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1660 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1662 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1662 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_68
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1664 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1666 :: T_TransactionStructure_24 -> ()
d_Epoch_1666 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1668 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1670 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_62
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1672 :: T_TransactionStructure_24 -> ()
d_Slot_1672 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1674 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_56
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1676 :: T_TransactionStructure_24 -> AgdaAny
d_StabilityWindow_1676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_74
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1678 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1680 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1680 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_246
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1682 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_epoch_1682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1684 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_firstSlot_1684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1686 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_88
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1688 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_suc'7497'_1688 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_76
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1690 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_ℕtoEpoch_1690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_242
      (coe d_epochStructure_1650 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1694 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1698 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1702 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  ()
d_P1Script_1714 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1716 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1720 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_CostModel_1722 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_T_1724 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_THash_1726 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1730 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Datum_1730 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1744 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1746 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_ExUnits_1750 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_LangDepView_1754 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Language_1756 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_PlutusScript_1758 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny
d_PlutusV1_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny
d_PlutusV2_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny
d_PlutusV3_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Prices_1766 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1768 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Redeemer_1768 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1776 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1778 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1780 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny -> AgdaAny
d_language_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  () -> AgdaAny -> AgdaAny
d_toData_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1786 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1790 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_CostModel_1792 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_T_1794 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_THash_1796 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1800 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Datum_1800 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1818 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1820 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_ExUnits_1824 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1830 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1830 ~v0 = du_Hashable'45'Script_1830
du_Hashable'45'Script_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_LangDepView_1832 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Language_1834 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_P1Script_1836 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_PlutusScript_1838 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny
d_PlutusV1_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny
d_PlutusV2_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny
d_PlutusV3_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Prices_1846 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1848 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Redeemer_1848 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1850 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Script_1850 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1858 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1860 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1862 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_1866 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1866 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_1868 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1868 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_1870 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1870 ~v0 = du_isP1Script'63'_1870
du_isP1Script'63'_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1870 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_402
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_1872 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1872 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_1874 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1874 ~v0 = du_isP2Script'63'_1874
du_isP2Script'63'_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1874 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_416
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny -> AgdaAny
d_language_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122
d_ps_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  () -> AgdaAny -> AgdaAny
d_toData_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_1884 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1884 ~v0 = du_toP1Script_1884
du_toP1Script_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_1886 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1886 ~v0 = du_toP2Script_1886
du_toP2Script_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_422
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1888 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1890 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1892 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274
d_scriptStructure_1892 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1896 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1896 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_1898 :: T_TransactionStructure_24 -> ()
d_CostModel_1898 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T
d_T_1900 :: T_TransactionStructure_24 -> ()
d_T_1900 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.THash
d_THash_1902 :: T_TransactionStructure_24 -> ()
d_THash_1902 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1904 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Datum
d_Datum_1906 :: T_TransactionStructure_24 -> ()
d_Datum_1906 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1908 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1910 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1912 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1914 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1916 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1918 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1920 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1922 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1924 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1924 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_1892 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1926 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1926 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_1892 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1928 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1930 :: T_TransactionStructure_24 -> ()
d_ExUnits_1930 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1932 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1934 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1936 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1938 :: T_TransactionStructure_24 -> ()
d_LangDepView_1938 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Language
d_Language_1940 :: T_TransactionStructure_24 -> ()
d_Language_1940 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_1942 :: T_TransactionStructure_24 -> ()
d_P1Script_1942 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1944 :: T_TransactionStructure_24 -> ()
d_PlutusScript_1944 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1946 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV1_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1948 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV2_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1950 :: T_TransactionStructure_24 -> AgdaAny
d_PlutusV3_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Prices
d_Prices_1952 :: T_TransactionStructure_24 -> ()
d_Prices_1952 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1954 :: T_TransactionStructure_24 -> ()
d_Redeemer_1954 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Script
d_Script_1956 :: T_TransactionStructure_24 -> ()
d_Script_1956 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1958 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1960 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1962 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1964 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1964 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_1892 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1966 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1966 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe d_scriptStructure_1892 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1968 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1968 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
            (coe d_scriptStructure_1892 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1970 ::
  T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_1972 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1972 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_1974 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1974 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_1976 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1976 ~v0 = du_isP1Script'63'_1976
du_isP1Script'63'_1976 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1976
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_402
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_1978 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1978 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_1980 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1980 ~v0 = du_isP2Script'63'_1980
du_isP2Script'63'_1980 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_416
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.language
d_language_1982 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_language_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.p1s
d_p1s_1984 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ps
d_ps_1986 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122
d_ps_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toData
d_toData_1988 ::
  T_TransactionStructure_24 -> () -> AgdaAny -> AgdaAny
d_toData_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe d_scriptStructure_1892 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_1990 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1990 ~v0 = du_toP1Script_1990
du_toP1Script_1990 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_1990
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_1992 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1992 ~v0 = du_toP2Script_1992
du_toP2Script_1992 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_1992
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_422
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1994 ::
  T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1994 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1996 ::
  T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1996 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2000 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2004 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2004 ~v0
  = du_DecEq'45'DrepThresholds_2004
du_DecEq'45'DrepThresholds_2004 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2004
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_624
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2006 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2006 ~v0 = du_DecEq'45'PParamGroup_2006
du_DecEq'45'PParamGroup_2006 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2006
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_630
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2008 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_628
      (coe d_epochStructure_1650 (coe v0))
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2010 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2010 ~v0
  = du_DecEq'45'PoolThresholds_2010
du_DecEq'45'PoolThresholds_2010 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_626
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2012 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2018 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2024 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2024 ~v0 = du_HasCast'45'Acnt_2024
du_HasCast'45'Acnt_2024 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2024
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_228
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2026 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_2030 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_2034 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_2038 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_478
d_HasgovActionDeposit'45'PParams_2038 ~v0
  = du_HasgovActionDeposit'45'PParams_2038
du_HasgovActionDeposit'45'PParams_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_478
du_HasgovActionDeposit'45'PParams_2038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasgovActionDeposit'45'PParams_514
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hasreserves
d_Hasreserves_2040 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hasreserves-Acnt
d_Hasreserves'45'Acnt_2044 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198
d_Hasreserves'45'Acnt_2044 ~v0 = du_Hasreserves'45'Acnt_2044
du_Hasreserves'45'Acnt_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198
du_Hasreserves'45'Acnt_2044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Hasreserves'45'Acnt_216
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_2046 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hastreasury-Acnt
d_Hastreasury'45'Acnt_2050 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
d_Hastreasury'45'Acnt_2050 ~v0 = du_Hastreasury'45'Acnt_2050
du_Hastreasury'45'Acnt_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178
du_Hastreasury'45'Acnt_2050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Hastreasury'45'Acnt_214
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2054 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2056 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2060 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_PParamsOf_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2066 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2070 :: T_TransactionStructure_24 -> ()
d_ProtVer_2070 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2074 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2074 ~v0 = du_Show'45'DrepThresholds_2074
du_Show'45'DrepThresholds_2074 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2074
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_632
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2076 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_636
      (coe d_epochStructure_1650 (coe v0))
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2078 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2078 ~v0 = du_Show'45'PoolThresholds_2078
du_Show'45'PoolThresholds_2078 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_634
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2080 ::
  T_TransactionStructure_24 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2080 ~v0 = du_Show'45'ProtVer_2080
du_Show'45'ProtVer_2080 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2080
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasccMaxTermLength_498 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLengthOf_506
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_478 ->
  AgdaAny -> Integer
d_govActionDepositOf_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDepositOf_486
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2092 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2092 ~v0 = du_paramsWF'45'elim_2092
du_paramsWF'45'elim_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2092 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_604
      v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2094 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  ()
d_paramsWellFormed_2094 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2096 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  [Integer]
d_positivePParams_2096 ~v0 = du_positivePParams_2096
du_positivePParams_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  [Integer]
du_positivePParams_2096
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_516
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2098 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2100 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2100 ~v0 = du_pvCanFollow'63'_2100
du_pvCanFollow'63'_2100 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1474
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.reservesOf
d_reservesOf_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198 ->
  AgdaAny -> Integer
d_reservesOf_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reservesOf_206
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178 ->
  AgdaAny -> Integer
d_treasuryOf_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryOf_186
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_264 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_266 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_268 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_270 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_272 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_274 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_276 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_278 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_280 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_282 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1588
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  ()
d_UpdateT_2140 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_applyUpdate_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1538
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522
d_ppUpd_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1546
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2148 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  AgdaAny -> ()
d_ppdWellFormed_2148 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_230]
d_updateGroups_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1540
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_PParamsOf_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_466
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasccMaxTermLength_498 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLengthOf_506
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasgovActionDeposit_478 ->
  AgdaAny -> Integer
d_govActionDepositOf_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDepositOf_486
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hasreserves.reservesOf
d_reservesOf_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hasreserves_198 ->
  AgdaAny -> Integer
d_reservesOf_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reservesOf_206
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Hastreasury_178 ->
  AgdaAny -> Integer
d_treasuryOf_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryOf_186
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_Emax_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_426
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_a_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_398 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_430 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_b_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_400 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_ccMaxTermLength_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_442
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_ccMinSize_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_440
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_coinsPerUTxOByte_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_410
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_collateralPercentage_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_432
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_costmdls_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_434
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_drepActivity_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_450
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_drepDeposit_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_448
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242
d_drepThresholds_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_438
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_govActionDeposit_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_446
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_govActionLifetime_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_444
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_keyDeposit_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_402
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_maxBlockExUnits_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_390
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxBlockSize_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_382
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxCollateralInputs_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_394
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxHeaderSize_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_386
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxRefScriptSizePerBlock_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_418
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxRefScriptSizePerTx_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_416
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_maxTxExUnits_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_388
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxTxSize_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_384
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_maxValSize_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_392
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_414
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_minUTxOValue_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_424
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_406
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_nopt_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_428
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Integer
d_poolDeposit_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_404
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286
d_poolThresholds_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_436
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny
d_prices_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_412
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_396 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_422
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_420
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_408
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522 ->
  ()
d_UpdateT_2258 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_applyUpdate_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1538
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1546
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2264 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522 ->
  AgdaAny -> ()
d_ppdWellFormed_2264 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_230]
d_updateGroups_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1540
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2270 ::
  T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2270 ~v0 = du__'63''8599'__2270
du__'63''8599'__2270 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2270 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1266
      v1 v2
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2272 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1468
      (coe d_epochStructure_1650 (coe v0))
      (coe d_scriptStructure_1892 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2274 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2278 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_applyPParamsUpdate_2278 ~v0 = du_applyPParamsUpdate_2278
du_applyPParamsUpdate_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_applyPParamsUpdate_2278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1314
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2280 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_230]
d_modifiedUpdateGroups_2280 ~v0 = du_modifiedUpdateGroups_2280
du_modifiedUpdateGroups_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_230]
du_modifiedUpdateGroups_2280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1250
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2282 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
d_modifiesEconomicGroup_2282 ~v0 = du_modifiesEconomicGroup_2282
du_modifiesEconomicGroup_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
du_modifiesEconomicGroup_2282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_946
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2284 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
d_modifiesGovernanceGroup_2284 ~v0
  = du_modifiesGovernanceGroup_2284
du_modifiesGovernanceGroup_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
du_modifiesGovernanceGroup_2284
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1098
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2286 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
d_modifiesNetworkGroup_2286 ~v0 = du_modifiesNetworkGroup_2286
du_modifiesNetworkGroup_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
du_modifiesNetworkGroup_2286
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_870
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2288 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
d_modifiesSecurityGroup_2288 ~v0 = du_modifiesSecurityGroup_2288
du_modifiesSecurityGroup_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
du_modifiesSecurityGroup_2288
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1174
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2290 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
d_modifiesTechnicalGroup_2290 ~v0 = du_modifiesTechnicalGroup_2290
du_modifiesTechnicalGroup_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Bool
du_modifiesTechnicalGroup_2290
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2292 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  ()
d_paramsUpdateWellFormed_2292 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2294 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_430
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_712
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_714
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_716
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_718
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_740
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_734
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_762
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_780
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_770
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_772
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_774
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2296 ::
  T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2296 ~v0 = du_'8801''45'update_2296
du_'8801''45'update_2296 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1280
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe AgdaAny
d_Emax_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_758
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_a_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_728 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_756 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_b_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_730 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_ccMaxTermLength_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_780
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_ccMinSize_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_778
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_coinsPerUTxOByte_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_740
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_collateralPercentage_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_762
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe AgdaAny
d_costmdls_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_764
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe AgdaAny
d_drepActivity_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_776
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_drepDeposit_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_774
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_242
d_drepThresholds_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_766
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_govActionDeposit_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_772
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_govActionLifetime_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_770
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_keyDeposit_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_732
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe AgdaAny
d_maxBlockExUnits_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_724
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxBlockSize_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_712
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxCollateralInputs_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_720
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxHeaderSize_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_716
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_748
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_746
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe AgdaAny
d_maxTxExUnits_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_722
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxTxSize_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_714
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_maxValSize_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_718
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_744
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_minUTxOValue_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_754
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_736
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_nopt_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_760
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe Integer
d_poolDeposit_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_734
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286
d_poolThresholds_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_768
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe AgdaAny
d_prices_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_742
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_726 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_752
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_750
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_640 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_738
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_298 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_300 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_302 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_304 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_306 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.govParams
d_govParams_2388 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1556
d_govParams_2388 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2392 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1588
      (coe d_govParams_2388 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2394 :: T_TransactionStructure_24 -> ()
d_UpdateT_2394 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2396 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_applyUpdate_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1538
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
         (coe d_govParams_2388 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2398 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1522
d_ppUpd_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
      (coe d_govParams_2388 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2400 ::
  T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1546
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
         (coe d_govParams_2388 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2402 :: T_TransactionStructure_24 -> AgdaAny -> ()
d_ppdWellFormed_2402 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2404 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_230]
d_updateGroups_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1540
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1574
         (coe d_govParams_2388 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2406 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2406 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2410 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2410 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2406 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2412 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2412 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2414 ::
  T_TransactionStructure_24 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2414 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2416 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2418 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2420 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2424 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2428 a0 a1 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Value
d_Value_2432 :: T_TransactionStructure_24 -> ()
d_Value_2432 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2434 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2436 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin
d_coin_2438 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_coin_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2440 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2440 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2442 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2444 ::
  T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2444 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.inject
d_inject_2446 :: T_TransactionStructure_24 -> Integer -> AgdaAny
d_inject_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2448 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2448 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2406 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.policies
d_policies_2450 ::
  T_TransactionStructure_24 -> AgdaAny -> [AgdaAny]
d_policies_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2452 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2452 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2406 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.size
d_size_2454 :: T_TransactionStructure_24 -> AgdaAny -> Integer
d_size_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2456 ::
  T_TransactionStructure_24 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2406 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.ε
d_ε_2458 :: T_TransactionStructure_24 -> AgdaAny
d_ε_2458 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2406 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2462 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2468 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2470 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2474 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2480 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2480 ~v0 = du_isMagmaIsomorphism_2480
du_isMagmaIsomorphism_2480 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2480 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2482 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2482 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2482 v2
du_isMagmaMonomorphism_2482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2488 v0
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
d_isRelIsomorphism_2490 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2490 ~v0 ~v1 v2 = du_isRelIsomorphism_2490 v2
du_isRelIsomorphism_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2490 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2492 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2492 ~v0 ~v1 v2 = du_isRelMonomorphism_2492 v2
du_isRelMonomorphism_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2492 v0
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
d_surjective_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2494 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2496 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2498 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2502 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2506 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2508 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2508 ~v0 = du_isMagmaMonomorphism_2508
du_isMagmaMonomorphism_2508 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2508 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2510 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2510 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2512 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2514 ::
  T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2514 ~v0 ~v1 v2 = du_isRelMonomorphism_2514 v2
du_isRelMonomorphism_2514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2514 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2516 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2518 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2520 :: T_TransactionStructure_24 -> AgdaAny -> AgdaAny
d_txidBytes_2520 v0
  = case coe v0 of
      C_constructor_3460 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2522 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.C_constructor_1416
      (d_DecEq'45'TxId_1282 (coe v0)) (d_cryptoStructure_1328 (coe v0))
      (d_epochStructure_1650 (coe v0)) (d_scriptStructure_1892 (coe v0))
      (d_govParams_2388 (coe v0)) (d_globalConstants_1298 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor
d_Anchor_2526 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2536 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2536 ~v0 = du_DecEq'45'GovActionType_2536
du_DecEq'45'GovActionType_2536 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_952
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_2538 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2538 ~v0 = du_DecEq'45'GovRole_2538
du_DecEq'45'GovRole_2538 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_954
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2540 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
      (coe d_govStructure_2522 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_2542 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2542 ~v0 = du_DecEq'45'Vote_2542
du_DecEq'45'Vote_2542 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_956
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction
d_GovAction_2544 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionData
d_GovActionData_2548 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  ()
d_GovActionData_2548 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionID
d_GovActionID_2550 :: T_TransactionStructure_24 -> ()
d_GovActionID_2550 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState
d_GovActionState_2552 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionType
d_GovActionType_2556 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal
d_GovProposal_2558 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovRole
d_GovRole_2562 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote
d_GovVote_2564 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2568 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2568 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2568
du_HasCast'45'GovAction'45'Sigma_2568 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2568
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_856
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_2570 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2570 ~v0 = du_HasCast'45'GovVote_2570
du_HasCast'45'GovVote_2570 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_960
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2572 ::
  T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2572 ~v0
  = du_HasCast'45'HashProtected_2572
du_HasCast'45'HashProtected_2572 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_868
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2574 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2574 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2574
du_HasCast'45'HashProtected'45'MaybeScriptHash_2574 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_870
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.HashProtected
d_HashProtected_2576 :: T_TransactionStructure_24 -> () -> ()
d_HashProtected_2576 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_2580 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  ()
d_NeedsHash_2580 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.VDeleg
d_VDeleg_2594 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Vote
d_Vote_2596 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Voter
d_Voter_2598 :: T_TransactionStructure_24 -> ()
d_Voter_2598 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.gaData
d_gaData_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  AgdaAny
d_gaData_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_852
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.gaType
d_gaType_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826
d_gaType_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.getDRepVote
d_getDRepVote_2610 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getDRepVote_2610 ~v0 = du_getDRepVote_2610
du_getDRepVote_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_getDRepVote_2610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_getDRepVote_962
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.proposedCC
d_proposedCC_2616 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2616 ~v0 = du_proposedCC_2616
du_proposedCC_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_966
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor.hash
d_hash_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814 ->
  AgdaAny
d_hash_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_822
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.Anchor.url
d_url_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_820
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction.gaData
d_gaData_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  AgdaAny
d_gaData_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_852
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovAction.gaType
d_gaType_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826
d_gaType_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.action
d_action_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844
d_action_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.expiresIn
d_expiresIn_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  AgdaAny
d_expiresIn_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_944
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.prevAction
d_prevAction_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  AgdaAny
d_prevAction_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_948
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.returnAddr
d_returnAddr_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_942
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovActionState.votes
d_votes_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.action
d_action_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844
d_action_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_914
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_924
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  Integer
d_deposit_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_920
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.policy
d_policy_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  Maybe AgdaAny
d_policy_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_918
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  AgdaAny
d_prevAction_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_916
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_922
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.anchor
d_anchor_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_896
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.gid
d_gid_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_890
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.vote
d_vote_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_872
d_vote_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_894
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.GovActions.GovVote.voter
d_voter_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_892
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.DCert
d_DCert_2744 a0 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2854 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrlsOf_1152
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrlsOf_1152
      (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3070 :: T_TransactionStructure_24 -> ()
d_TxIn_3070 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3072 :: T_TransactionStructure_24 -> ()
d_TxOut_3072 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3074 :: T_TransactionStructure_24 -> ()
d_UTxO_3074 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Wdrl
d_Wdrl_3076 :: T_TransactionStructure_24 -> ()
d_Wdrl_3076 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_3078 :: T_TransactionStructure_24 -> ()
d_RdmrPtr_3078 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3080 :: T_TransactionStructure_24 -> ()
d_ProposedPPUpdates_3080 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Update
d_Update_3082 :: T_TransactionStructure_24 -> ()
d_Update_3082 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3088 a0 a1 a2 = ()
newtype T_HasUTxO_3088
  = C_constructor_3098 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3096 ::
  T_HasUTxO_3088 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3096 v0
  = case coe v0 of
      C_constructor_3098 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3102 ::
  T_HasUTxO_3088 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3102 v0 = coe d_UTxOOf_3096 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3104 a0 = ()
data T_TxBody_3104
  = C_constructor_3182 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
                       [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900]
                       Integer (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                       (Maybe AgdaAny) (Maybe AgdaAny) (Maybe Integer) AgdaAny
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txins
d_txins_3144 ::
  T_TxBody_3104 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3144 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3146 ::
  T_TxBody_3104 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3146 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txouts
d_txouts_3148 ::
  T_TxBody_3104 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3148 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txfee
d_txfee_3150 :: T_TxBody_3104 -> Integer
d_txfee_3150 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3152 :: T_TxBody_3104 -> AgdaAny
d_mint_3152 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3154 ::
  T_TxBody_3104 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3154 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3156 ::
  T_TxBody_3104 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
d_txcerts_3156 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3158 ::
  T_TxBody_3104 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3158 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3160 ::
  T_TxBody_3104 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
d_txvote_3160 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3162 ::
  T_TxBody_3104 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900]
d_txprop_3162 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3164 :: T_TxBody_3104 -> Integer
d_txdonation_3164 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txup
d_txup_3166 ::
  T_TxBody_3104 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3166 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3168 :: T_TxBody_3104 -> Maybe AgdaAny
d_txADhash_3168 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3170 :: T_TxBody_3104 -> Maybe AgdaAny
d_txNetworkId_3170 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3172 :: T_TxBody_3104 -> Maybe Integer
d_curTreasury_3172 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.txid
d_txid_3174 :: T_TxBody_3104 -> AgdaAny
d_txid_3174 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3176 ::
  T_TxBody_3104 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3176 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3178 :: T_TxBody_3104 -> [AgdaAny]
d_reqSigHash_3178 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3180 :: T_TxBody_3104 -> Maybe AgdaAny
d_scriptIntHash_3180 v0
  = case coe v0 of
      C_constructor_3182 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3188 a0 a1 a2 = ()
newtype T_HasTxBody_3188
  = C_constructor_3198 (AgdaAny -> T_TxBody_3104)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3196 :: T_HasTxBody_3188 -> AgdaAny -> T_TxBody_3104
d_TxBodyOf_3196 v0
  = case coe v0 of
      C_constructor_3198 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3202 :: T_HasTxBody_3188 -> AgdaAny -> T_TxBody_3104
d_TxBodyOf_3202 v0 = coe d_TxBodyOf_3196 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3208 a0 a1 a2 = ()
newtype T_Hastxfee_3208 = C_constructor_3218 (AgdaAny -> Integer)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3216 :: T_Hastxfee_3208 -> AgdaAny -> Integer
d_txfeeOf_3216 v0
  = case coe v0 of
      C_constructor_3218 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3222 :: T_Hastxfee_3208 -> AgdaAny -> Integer
d_txfeeOf_3222 v0 = coe d_txfeeOf_3216 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3228 a0 a1 a2 = ()
newtype T_Hastxcerts_3228
  = C_constructor_3238 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080])
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3236 ::
  T_Hastxcerts_3228 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
d_txcertsOf_3236 v0
  = case coe v0 of
      C_constructor_3238 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3242 ::
  T_Hastxcerts_3228 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
d_txcertsOf_3242 v0 = coe d_txcertsOf_3236 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3248 a0 a1 a2 = ()
newtype T_Hastxprop_3248
  = C_constructor_3258 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900])
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3256 ::
  T_Hastxprop_3248 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900]
d_txpropOf_3256 v0
  = case coe v0 of
      C_constructor_3258 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3262 ::
  T_Hastxprop_3248 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900]
d_txpropOf_3262 v0 = coe d_txpropOf_3256 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxid
d_Hastxid_3268 a0 a1 a2 = ()
newtype T_Hastxid_3268 = C_constructor_3278 (AgdaAny -> AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3276 :: T_Hastxid_3268 -> AgdaAny -> AgdaAny
d_txidOf_3276 v0
  = case coe v0 of
      C_constructor_3278 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.txidOf
d_txidOf_3282 :: T_Hastxid_3268 -> AgdaAny -> AgdaAny
d_txidOf_3282 v0 = coe d_txidOf_3276 (coe v0)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3284 a0 = ()
data T_TxWitnesses_3284
  = C_constructor_3304 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3294 ::
  T_TxWitnesses_3284 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3294 v0
  = case coe v0 of
      C_constructor_3304 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3296 ::
  T_TxWitnesses_3284 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3296 v0
  = case coe v0 of
      C_constructor_3304 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3298 :: T_TxWitnesses_3284 -> [AgdaAny]
d_txdats_3298 v0
  = case coe v0 of
      C_constructor_3304 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3300 ::
  T_TxWitnesses_3284 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3300 v0
  = case coe v0 of
      C_constructor_3304 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3302 ::
  T_TransactionStructure_24 -> T_TxWitnesses_3284 -> [AgdaAny]
d_scriptsP1_3302 ~v0 v1 = du_scriptsP1_3302 v1
du_scriptsP1_3302 :: T_TxWitnesses_3284 -> [AgdaAny]
du_scriptsP1_3302 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_578
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410)
      (d_scripts_3296 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx
d_Tx_3306 a0 = ()
data T_Tx_3306
  = C_constructor_3328 T_TxBody_3104 T_TxWitnesses_3284 Integer Bool
                       (Maybe AgdaAny)
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.body
d_body_3318 :: T_Tx_3306 -> T_TxBody_3104
d_body_3318 v0
  = case coe v0 of
      C_constructor_3328 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.wits
d_wits_3320 :: T_Tx_3306 -> T_TxWitnesses_3284
d_wits_3320 v0
  = case coe v0 of
      C_constructor_3328 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.txsize
d_txsize_3322 :: T_Tx_3306 -> Integer
d_txsize_3322 v0
  = case coe v0 of
      C_constructor_3328 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3324 :: T_Tx_3306 -> Bool
d_isValid_3324 v0
  = case coe v0 of
      C_constructor_3328 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Tx.txAD
d_txAD_3326 :: T_Tx_3306 -> Maybe AgdaAny
d_txAD_3326 v0
  = case coe v0 of
      C_constructor_3328 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3330 ::
  T_TransactionStructure_24 -> T_HasTxBody_3188
d_HasTxBody'45'Tx_3330 ~v0 = du_HasTxBody'45'Tx_3330
du_HasTxBody'45'Tx_3330 :: T_HasTxBody_3188
du_HasTxBody'45'Tx_3330
  = coe C_constructor_3198 (coe (\ v0 -> d_body_3318 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3332 ::
  T_TransactionStructure_24 -> T_Hastxfee_3208
d_Hastxfee'45'Tx_3332 ~v0 = du_Hastxfee'45'Tx_3332
du_Hastxfee'45'Tx_3332 :: T_Hastxfee_3208
du_Hastxfee'45'Tx_3332
  = coe
      C_constructor_3218
      (coe (\ v0 -> d_txfee_3150 (coe d_body_3318 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3334 ::
  T_TransactionStructure_24 -> T_Hastxcerts_3228
d_Hastxcerts'45'Tx_3334 ~v0 = du_Hastxcerts'45'Tx_3334
du_Hastxcerts'45'Tx_3334 :: T_Hastxcerts_3228
du_Hastxcerts'45'Tx_3334
  = coe
      C_constructor_3238
      (coe (\ v0 -> d_txcerts_3156 (coe d_body_3318 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3336 ::
  T_TransactionStructure_24 -> T_Hastxprop_3248
d_Hastxprop'45'Tx_3336 ~v0 = du_Hastxprop'45'Tx_3336
du_Hastxprop'45'Tx_3336 :: T_Hastxprop_3248
du_Hastxprop'45'Tx_3336
  = coe
      C_constructor_3258
      (coe (\ v0 -> d_txprop_3162 (coe d_body_3318 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3338 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144
d_HasWdrls'45'TxBody_3338 ~v0 = du_HasWdrls'45'TxBody_3338
du_HasWdrls'45'TxBody_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144
du_HasWdrls'45'TxBody_3338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1154
      (coe (\ v0 -> d_txwdrls_3158 (coe v0)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3340 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144
d_HasWdrls'45'Tx_3340 ~v0 = du_HasWdrls'45'Tx_3340
du_HasWdrls'45'Tx_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144
du_HasWdrls'45'Tx_3340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1154
      (coe (\ v0 -> d_txwdrls_3158 (coe d_body_3318 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3342 :: T_TransactionStructure_24 -> T_Hastxid_3268
d_Hastxid'45'Tx_3342 ~v0 = du_Hastxid'45'Tx_3342
du_Hastxid'45'Tx_3342 :: T_Hastxid_3268
du_Hastxid'45'Tx_3342
  = coe
      C_constructor_3278
      (coe (\ v0 -> d_txid_3174 (coe d_body_3318 (coe v0))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.getValue
d_getValue_3344 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3344 ~v0 v1 = du_getValue_3344 v1
du_getValue_3344 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3344 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3348 :: T_TransactionStructure_24 -> ()
d_TxOut'688'_3348 = erased
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txOutHash
d_txOutHash_3350 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3350 v0 v1
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
                                          (d_scriptStructure_1892 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
                                                (coe d_scriptStructure_1892 (coe v0))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                (coe d_scriptStructure_1892 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3360 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3360 ~v0 v1 = du_getValue'688'_3360 v1
du_getValue'688'_3360 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3360 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3364 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3364 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8745'__706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe d_DecEq'45'TxId_1282 (coe v0))
            (coe d_DecEq'45'Ix_1280 (coe v0))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1216
            (coe v2)
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_202
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_166
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_3370 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3370 ~v0 v1 = du_scriptOuts_3370 v1
du_scriptOuts_3370 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3370 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_216
           (coe
              MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_166
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txinsScript
d_txinsScript_3378 ::
  T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3378 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8745'__706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe d_DecEq'45'TxId_1282 (coe v0))
            (coe d_DecEq'45'Ix_1280 (coe v0))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_scriptOuts_3370 (coe v2))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.refScripts
d_refScripts_3384 ::
  T_TransactionStructure_24 ->
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3384 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_578
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                  (coe d_DecEq'45'TxId_1282 (coe v0))
                  (coe d_DecEq'45'Ix_1280 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__682
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_3144 (coe d_body_3318 (coe v1)))
               (coe d_refInputs_3146 (coe d_body_3318 (coe v1))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.collateral
d_collateral_3396 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3396 v0 ~v1 = du_collateral_3396 v0
du_collateral_3396 ::
  T_Tx_3306 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3396 v0
  = coe d_collateral_3176 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3398 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3398 v0 ~v1 = du_curTreasury_3398 v0
du_curTreasury_3398 :: T_Tx_3306 -> Maybe Integer
du_curTreasury_3398 v0
  = coe d_curTreasury_3172 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.mint
d_mint_3400 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3400 v0 ~v1 = du_mint_3400 v0
du_mint_3400 :: T_Tx_3306 -> AgdaAny
du_mint_3400 v0 = coe d_mint_3152 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.refInputs
d_refInputs_3402 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3402 v0 ~v1 = du_refInputs_3402 v0
du_refInputs_3402 ::
  T_Tx_3306 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3402 v0
  = coe d_refInputs_3146 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3404 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3404 v0 ~v1 = du_reqSigHash_3404 v0
du_reqSigHash_3404 :: T_Tx_3306 -> [AgdaAny]
du_reqSigHash_3404 v0
  = coe d_reqSigHash_3178 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3406 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3406 v0 ~v1 = du_scriptIntHash_3406 v0
du_scriptIntHash_3406 :: T_Tx_3306 -> Maybe AgdaAny
du_scriptIntHash_3406 v0
  = coe d_scriptIntHash_3180 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txADhash
d_txADhash_3408 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3408 v0 ~v1 = du_txADhash_3408 v0
du_txADhash_3408 :: T_Tx_3306 -> Maybe AgdaAny
du_txADhash_3408 v0
  = coe d_txADhash_3168 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3410 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3410 v0 ~v1 = du_txNetworkId_3410 v0
du_txNetworkId_3410 :: T_Tx_3306 -> Maybe AgdaAny
du_txNetworkId_3410 v0
  = coe d_txNetworkId_3170 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txcerts
d_txcerts_3412 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
d_txcerts_3412 v0 ~v1 = du_txcerts_3412 v0
du_txcerts_3412 ::
  T_Tx_3306 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
du_txcerts_3412 v0 = coe d_txcerts_3156 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txdonation
d_txdonation_3414 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3414 v0 ~v1 = du_txdonation_3414 v0
du_txdonation_3414 :: T_Tx_3306 -> Integer
du_txdonation_3414 v0
  = coe d_txdonation_3164 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txfee
d_txfee_3416 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3416 v0 ~v1 = du_txfee_3416 v0
du_txfee_3416 :: T_Tx_3306 -> Integer
du_txfee_3416 v0 = coe d_txfee_3150 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txid
d_txid_3418 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3418 v0 ~v1 = du_txid_3418 v0
du_txid_3418 :: T_Tx_3306 -> AgdaAny
du_txid_3418 v0 = coe d_txid_3174 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txins
d_txins_3420 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3420 v0 ~v1 = du_txins_3420 v0
du_txins_3420 ::
  T_Tx_3306 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3420 v0 = coe d_txins_3144 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txouts
d_txouts_3422 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3422 v0 ~v1 = du_txouts_3422 v0
du_txouts_3422 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3422 v0 = coe d_txouts_3148 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txprop
d_txprop_3424 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900]
d_txprop_3424 v0 ~v1 = du_txprop_3424 v0
du_txprop_3424 ::
  T_Tx_3306 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_900]
du_txprop_3424 v0 = coe d_txprop_3162 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txup
d_txup_3426 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3426 v0 ~v1 = du_txup_3426 v0
du_txup_3426 ::
  T_Tx_3306 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3426 v0 = coe d_txup_3166 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txvldt
d_txvldt_3428 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3428 v0 ~v1 = du_txvldt_3428 v0
du_txvldt_3428 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3428 v0 = coe d_txvldt_3154 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txvote
d_txvote_3430 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
d_txvote_3430 v0 ~v1 = du_txvote_3430 v0
du_txvote_3430 ::
  T_Tx_3306 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
du_txvote_3430 v0 = coe d_txvote_3160 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3432 ::
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3432 v0 ~v1 = du_txwdrls_3432 v0
du_txwdrls_3432 ::
  T_Tx_3306 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3432 v0 = coe d_txwdrls_3158 (coe d_body_3318 (coe v0))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.txscripts
d_txscripts_3434 ::
  T_TransactionStructure_24 ->
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3434 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3296 (coe d_wits_3320 (coe v1)))
      (coe d_refScripts_3384 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3444 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3444 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_m_3456 (coe v0) (coe v2) (coe v3)) (coe v1)
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe d_cryptoStructure_1328 (coe v0))))
         (coe v1)
         (let v4
                = MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                  (coe du_m_3456 (coe v0) (coe v2) (coe v3))))))
-- Ledger.Conway.Specification.Transaction.TransactionStructure._.m
d_m_3456 ::
  T_TransactionStructure_24 ->
  AgdaAny ->
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3456 v0 ~v1 v2 v3 = du_m_3456 v0 v2 v3
du_m_3456 ::
  T_TransactionStructure_24 ->
  T_Tx_3306 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3456 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe d_cryptoStructure_1328 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400
         (MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.Hashable.d_hash_16
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
                  (d_scriptStructure_1892 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
                        (coe d_scriptStructure_1892 (coe v0))))
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                        (coe d_scriptStructure_1892 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3434 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3458 ::
  T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3458 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2406 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
