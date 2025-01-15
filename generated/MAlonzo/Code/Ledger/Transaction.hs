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
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Transaction.TransactionStructure
d_TransactionStructure_20 = ()
data T_TransactionStructure_20
  = C_TransactionStructure'46'constructor_13831 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_1310
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
                                                (AgdaAny -> AgdaAny)
-- Ledger.Transaction._.THash
d_THash_84 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 -> ()
d_THash_84 = erased
-- Ledger.Transaction._.Ser
d_Ser_92 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134 -> ()
d_Ser_92 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_120 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__128 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__128 = erased
-- Ledger.Transaction._.TokenAlgebra.AssetName
d_AssetName_130 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_130 = erased
-- Ledger.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_132 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_134 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.Value
d_Value_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_142 = erased
-- Ledger.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_144 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Transaction._.TokenAlgebra.coin
d_coin_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_148 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_152 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Transaction._.TokenAlgebra.inject
d_inject_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_154 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.policies
d_policies_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_158 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.property
d_property_160 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_160 = erased
-- Ledger.Transaction._.TokenAlgebra.size
d_size_164 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_164 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.specialAsset
d_specialAsset_166 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_166 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_1172 :: T_TransactionStructure_20 -> ()
d_Ix_1172 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_1174 :: T_TransactionStructure_20 -> ()
d_TxId_1174 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1176 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_1176 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1178 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1178 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1180 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1180 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1182 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1182 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1186 :: T_TransactionStructure_20 -> ()
d_THash_1186 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1188 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1188 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe d_adHashingScheme_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1190 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1190 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe d_adHashingScheme_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1192 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1192 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe d_adHashingScheme_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1194 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1194 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe d_adHashingScheme_1182 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1196 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1196 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1200 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1200 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1202 :: T_TransactionStructure_20 -> ()
d_Network_1202 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1204 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1204 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1206 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1208 :: T_TransactionStructure_20 -> Integer
d_Quorum_1208 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1210 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1210 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1212 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1212 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1214 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1214 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1216 ::
  T_TransactionStructure_20 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1216 = erased
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1218 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1220 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1224 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1224 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1226 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_1220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1228 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1228 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1230 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1230 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1232 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1232 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1234 :: T_TransactionStructure_20 -> ()
d_THash_1234 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1236 :: T_TransactionStructure_20 -> ()
d_KeyPair_1236 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1238 :: T_TransactionStructure_20 -> ()
d_SKey_1238 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1240 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1240 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1242 :: T_TransactionStructure_20 -> ()
d_Ser_1242 = erased
-- Ledger.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1244 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1244 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_1220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1246 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1246 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1248 :: T_TransactionStructure_20 -> ()
d_Sig_1248 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1250 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1250 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1252 :: T_TransactionStructure_20 -> ()
d_VKey_1252 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1254 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1254 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1256 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1256 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1258 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1258 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1260 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1260 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1262 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1262 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_1220 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1264 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1264 v0
  = let v1 = d_crypto_1220 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1268 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1268 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1270 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1274 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1274 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1276 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1276 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1278 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1278 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1280 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_1280 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1282 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1282 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1284 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1284 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1286 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1288 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1290 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1292 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1292 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1294 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1294 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1296 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1296 ~v0 = du_addValue_1296
du_addValue_1296 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
du_addValue_1296
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1298 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1298 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1300 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1300 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1302 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1302 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1304 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1304 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1306 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1306 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1308 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1308 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1310 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1310 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1312 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1312 v0
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
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1314 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1314 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1316 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_1316 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1318 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1318 ~v0 = du_sum'7515'_1318
du_sum'7515'_1318 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1318
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1320 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1320 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1324 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1324 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1326 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1326 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1328 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1328 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1330 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1330 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1332 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1332 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1336 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1336 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1338 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1338 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1340 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1340 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1342 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1342 ~v0 = du_isMagmaIsomorphism_1342
du_isMagmaIsomorphism_1342 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1342 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1344 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1344 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1344 v2
du_isMagmaMonomorphism_1344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1344 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1346 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1346 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1348 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1348 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1350 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1350 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1352 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1352 ~v0 ~v1 v2 = du_isRelIsomorphism_1352 v2
du_isRelIsomorphism_1352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1352 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1354 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1354 ~v0 ~v1 v2 = du_isRelMonomorphism_1354 v2
du_isRelMonomorphism_1354 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1354 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1358 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1360 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1364 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1366 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1370 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1370 ~v0 = du_isMagmaMonomorphism_1370
du_isMagmaMonomorphism_1370 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1370 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1372 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1374 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1376 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1376 ~v0 ~v1 v2 = du_isRelMonomorphism_1376 v2
du_isRelMonomorphism_1376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1378 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1380 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1384 :: T_TransactionStructure_20 -> ()
d_Addr_1384 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1386 a0 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1388 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1390 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1392 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1392 ~v0 = du_Dec'45'isScript_1392
du_Dec'45'isScript_1392 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1392
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1394 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1394 ~v0 = du_Dec'45'isVKey_1394
du_Dec'45'isVKey_1394 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1394
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1396 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1396 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1196 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1220 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1398 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1398 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1196 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1220 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1400 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1400 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1220 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1402 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1402 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe d_globalConstants_1196 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1220 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1220 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1408 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1412 :: T_TransactionStructure_20 -> ()
d_ScriptAddr_1412 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1414 :: T_TransactionStructure_20 -> ()
d_ScriptBaseAddr_1414 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1416 :: T_TransactionStructure_20 -> ()
d_ScriptBootstrapAddr_1416 = erased
-- Ledger.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1420 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1420 ~v0 = du_Show'45'Credential_1420
du_Show'45'Credential_1420 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1420 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1422 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1422 ~v0
  = du_Show'45'Credential'215'Coin_1422
du_Show'45'Credential'215'Coin_1422 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1422 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1424 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1424 ~v0 = du_Show'45'RwdAddr_1424
du_Show'45'RwdAddr_1424 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1424
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1426 :: T_TransactionStructure_20 -> ()
d_VKeyAddr_1426 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1428 :: T_TransactionStructure_20 -> ()
d_VKeyBaseAddr_1428 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1430 :: T_TransactionStructure_20 -> ()
d_VKeyBootstrapAddr_1430 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1434 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
d_getScriptHash_1434 ~v0 = du_getScriptHash_1434
du_getScriptHash_1434 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> AgdaAny
du_getScriptHash_1434
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1436 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1438 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1438 ~v0 = du_isBootstrapAddr'63'_1438
du_isBootstrapAddr'63'_1438 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1438
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1440 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1440 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1442 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1442 ~v0 = du_isKeyHashObj_1442
du_isKeyHashObj_1442 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1442
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1444 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1444 ~v0 = du_isKeyHashObj'7495'_1444
du_isKeyHashObj'7495'_1444 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1444
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1446 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1448 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1448 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1450 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1450 ~v0 = du_isScriptObj_1450
du_isScriptObj_1450 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1450
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1452 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1452 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1454 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1456 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1456 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1458 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1458 ~v0 = du_netId_1458
du_netId_1458 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1458 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1460 ~v0 = du_payCred_1460
du_payCred_1460 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1460 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1462 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1462 ~v0 = du_stakeCred_1462
du_stakeCred_1462 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1462
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1466 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> AgdaAny
d_net_1466 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1468 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1468 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1470 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1470 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1474 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1474 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1476 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> AgdaAny
d_net_1476 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1478 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1478 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1488 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1488 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1490 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1490 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1504 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1504 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1508 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1508 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1510 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1510 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1512 ::
  T_TransactionStructure_20 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1512 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1514 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1514 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1516 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1516 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1518 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_1518 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1520 :: T_TransactionStructure_20 -> ()
d_Epoch_1520 = erased
-- Ledger.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1522 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1522 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1524 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1524 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1526 :: T_TransactionStructure_20 -> ()
d_Slot_1526 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1528 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1528 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1530 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1530 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1532 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1532 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1534 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1534 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1536 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1536 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1538 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1538 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1540 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1540 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1542 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1542 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1544 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1544 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1548 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1548 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
      (coe d_crypto_1220 (coe v0)) (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1550 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1550 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
      (coe d_crypto_1220 (coe v0)) (coe d_epochStructure_1504 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1552 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1554 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1568 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1570 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1584 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1588 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1588 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1590 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1590 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1592 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1592 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1594 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1594 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1596 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1596 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1600 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1600 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1602 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1602 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1604 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1604 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1606 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1606 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1608 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1608 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1610 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1610 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1612 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1612 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1614 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1614 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1616 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1616 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1618 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1618 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1620 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1620 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1622 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1622 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1624 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1624 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1626 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1626 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1628 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1628 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1630 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1630 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1632 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1632 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1634 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1634 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1636 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1636 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1638 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1638 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1640 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1640 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1642 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1642 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1644 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1644 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1646 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1646 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1648 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1648 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1650 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1650 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1652 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1652 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1654 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1654 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1656 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1656 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1658 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1658 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1660 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1660 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1662 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1662 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1664 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1664 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1666 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1666 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1670 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1670 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1672 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_1672 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1674 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_1674 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1676 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_1676 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1678 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1678 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1680 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_1680 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1682 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1682 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1684 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1684 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1686 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1686 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1688 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1688 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1690 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1690 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1692 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1692 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1694 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1694 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1696 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1696 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1698 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1698 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1700 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1700 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1702 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1704 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_1704 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1706 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1708 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1710 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1710 ~v0 = du_Hashable'45'Script_1710
du_Hashable'45'Script_1710 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1710
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1712 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_1712 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1714 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_1714 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1716 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_1716 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1718 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_1718 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1720 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_1720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1722 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_1722 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1724 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_1724 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1726 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_1726 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1728 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_1728 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1730 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_1730 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1732 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1732 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1734 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1734 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1736 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1736 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1738 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1738 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1740 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1740 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1742 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1742 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1744 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1744 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1746 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_1746 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1748 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1748 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1750 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1750 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1752 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_1752 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1754 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1754 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1756 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1756 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1786 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1786 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1790 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1790 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1792 :: T_TransactionStructure_20 -> ()
d_CostModel_1792 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1794 :: T_TransactionStructure_20 -> ()
d_T_1794 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1796 :: T_TransactionStructure_20 -> ()
d_THash_1796 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1798 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1798 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1800 :: T_TransactionStructure_20 -> ()
d_Datum_1800 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1802 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1802 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1804 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1804 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1806 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1806 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1808 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1808 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1810 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1810 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1812 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1812 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1814 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1814 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1816 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1816 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1818 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1818 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1786 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1820 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1820 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1786 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1822 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1822 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1824 :: T_TransactionStructure_20 -> ()
d_ExUnits_1824 = erased
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1826 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1826 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1828 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1828 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1830 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1830 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1832 :: T_TransactionStructure_20 -> ()
d_LangDepView_1832 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1834 :: T_TransactionStructure_20 -> ()
d_Language_1834 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1836 :: T_TransactionStructure_20 -> ()
d_P1Script_1836 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1838 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1838 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1840 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV1_1840 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1842 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV2_1842 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1844 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV3_1844 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1846 :: T_TransactionStructure_20 -> ()
d_Prices_1846 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1848 :: T_TransactionStructure_20 -> ()
d_Redeemer_1848 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1850 :: T_TransactionStructure_20 -> ()
d_Script_1850 = erased
-- Ledger.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1852 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1852 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1854 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1854 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1856 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1856 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1858 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1858 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1786 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1860 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1860 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1786 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1862 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1862 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe d_scriptStructure_1786 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1864 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1864 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1866 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1868 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1868 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_426
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1870 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1870 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_448
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1872 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1872 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1786 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1874 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1874 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1876 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1876 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1880 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1882 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1882 ~v0
  = du_DecEq'45'DrepThresholds_1882
du_DecEq'45'DrepThresholds_1882 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1882
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_494
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1884 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1884 ~v0 = du_DecEq'45'PParamGroup_1884
du_DecEq'45'PParamGroup_1884 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1884
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_500
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1886 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1886 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_498
      (coe d_epochStructure_1504 (coe v0))
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1888 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1888 ~v0
  = du_DecEq'45'PoolThresholds_1888
du_DecEq'45'PoolThresholds_1888 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1888
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_496
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1890 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1894 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1900 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1902 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1904 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1906 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1908 :: T_TransactionStructure_20 -> ()
d_ProtVer_1908 = erased
-- Ledger.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_1912 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1912 ~v0 = du_Show'45'DrepThresholds_1912
du_Show'45'DrepThresholds_1912 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1912
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_502
-- Ledger.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_1914 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1914 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_506
      (coe d_epochStructure_1504 (coe v0))
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_1916 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1916 ~v0 = du_Show'45'PoolThresholds_1916
du_Show'45'PoolThresholds_1916 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1916
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_504
-- Ledger.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_1918 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1918 ~v0 = du_Show'45'ProtVer_1918
du_Show'45'ProtVer_1918 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1918
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Transaction.TransactionStructure._.Show-ℚ
d_Show'45'ℚ_1920 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1920 ~v0 = du_Show'45'ℚ_1920
du_Show'45'ℚ_1920 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_1920
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_1928 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1928 ~v0 = du_paramsWF'45'elim_1928
du_paramsWF'45'elim_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1928 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_460 v2
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1930 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> ()
d_paramsWellFormed_1930 = erased
-- Ledger.Transaction.TransactionStructure._.positivePParams
d_positivePParams_1932 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> [Integer]
d_positivePParams_1932 ~v0 = du_positivePParams_1932
du_positivePParams_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> [Integer]
du_positivePParams_1932
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_376
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1934 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1936 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1936 ~v0 = du_pvCanFollow'63'_1936
du_pvCanFollow'63'_1936 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1936
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1230
-- Ledger.Transaction.TransactionStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_1938 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1938 ~v0
  = du_refScriptCostStride'62'0_1938
du_refScriptCostStride'62'0_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_1938 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_482 v0
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1944 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1946 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_1946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1950 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1950 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1952 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1952 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1954 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1954 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1956 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1956 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1958 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1958 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1960 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1960 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1962 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1962 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1964 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1964 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1966 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1966 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1968 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1968 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1972 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1342 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1974 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 -> ()
d_UpdateT_1974 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1976 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1976 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1294
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1978 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278
d_ppUpd_1978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_1980 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1980 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1302
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1982 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 -> AgdaAny -> ()
d_ppdWellFormed_1982 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1984 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1296
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1328 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2000 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_Emax_2000 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_350 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_2002 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_2002 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_2004 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2004 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_354 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_2006 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_2006 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2008 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_2008 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_366 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2010 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_2010 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_364 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2012 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_2012 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_334 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2014 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_2014 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_356 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2016 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_costmdls_2016 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_358 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2018 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_drepActivity_2018 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_374 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2020 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_2020 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_372 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2022 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_2022 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_362 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2024 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_2024 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2026 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_2026 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2028 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2030 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxBlockExUnits_2030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_2032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2034 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_2034 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_2036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerBlock_2038 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_342 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2040 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxRefScriptSizePerTx_2040 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_340 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_maxTxExUnits_2042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_316 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2044 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_2044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_2046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2048 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_338
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_2050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_348 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2052 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_2052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_352 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_2054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_332 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_2056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_360 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_2058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> AgdaAny
d_prices_2058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_336 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_2060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2060 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2062 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_346 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2064 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_refScriptCostStride_2064 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_344 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2068 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 -> ()
d_UpdateT_2068 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2070 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_2070 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2072 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2074 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 -> AgdaAny -> ()
d_ppdWellFormed_2074 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2076 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_2076 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2080 ::
  T_TransactionStructure_20 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2080 ~v0 = du__'63''8599'__2080
du__'63''8599'__2080 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2080 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1030 v1 v2
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2082 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1224
      (coe d_epochStructure_1504 (coe v0))
      (coe d_scriptStructure_1786 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2084 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2086 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyPParamsUpdate_2086 ~v0 = du_applyPParamsUpdate_2086
du_applyPParamsUpdate_2086 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
du_applyPParamsUpdate_2086
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1078
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2088 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_modifiedUpdateGroups_2088 ~v0 = du_modifiedUpdateGroups_2088
du_modifiedUpdateGroups_2088 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
du_modifiedUpdateGroups_2088
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1014
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2090 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesEconomicGroup_2090 ~v0 = du_modifiesEconomicGroup_2090
du_modifiesEconomicGroup_2090 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesEconomicGroup_2090
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_798
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2092 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesGovernanceGroup_2092 ~v0
  = du_modifiesGovernanceGroup_2092
du_modifiesGovernanceGroup_2092 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesGovernanceGroup_2092
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_942
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2094 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesNetworkGroup_2094 ~v0 = du_modifiesNetworkGroup_2094
du_modifiesNetworkGroup_2094 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesNetworkGroup_2094
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_726
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2096 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
d_modifiesTechnicalGroup_2096 ~v0 = du_modifiesTechnicalGroup_2096
du_modifiesTechnicalGroup_2096 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Bool
du_modifiesTechnicalGroup_2096
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_870
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2098 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> ()
d_paramsUpdateWellFormed_2098 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2100 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2100 ~v0
  = du_paramsUpdateWellFormed'63'_2100
du_paramsUpdateWellFormed'63'_2100 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2100
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_722
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2102 ::
  T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2102 ~v0 = du_'8801''45'update_2102
du_'8801''45'update_2102 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_2102 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1044 v1
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2106 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_Emax_2106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_620 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2108 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_a_2108 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_594 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2110 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2110 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_618 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2112 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_b_2112 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_596 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2114 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMaxTermLength_2114 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_642 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2116 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_ccMinSize_2116 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_640 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2118 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_coinsPerUTxOByte_2118 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_602 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2120 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_collateralPercentage_2120 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_624 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2122 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_costmdls_2122 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_626 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2124 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_drepActivity_2124 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_638 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2126 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_drepDeposit_2126 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_636 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2128 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_2128 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_628 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2130 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionDeposit_2130 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_634 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2132 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_govActionLifetime_2132 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_632 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2134 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_keyDeposit_2134 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_598 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2136 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_maxBlockExUnits_2136 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_590 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2138 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxBlockSize_2138 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_578 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2140 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxCollateralInputs_2140 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_586 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2142 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxHeaderSize_2142 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_582 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2144 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerBlock_2144 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_610 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2146 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxRefScriptSizePerTx_2146 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_608 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2148 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_maxTxExUnits_2148 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_588 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2150 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxTxSize_2150 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_580 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2152 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_maxValSize_2152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_584 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2154 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2154 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_606
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2156 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_minUTxOValue_2156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_616 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2158 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_nopt_2158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_622 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2160 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_poolDeposit_2160 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_600 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2162 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_2162 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_630 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2164 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe AgdaAny
d_prices_2164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_604 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2166 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2166 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_592 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2168 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2168 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_614 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2170 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_510 -> Maybe Integer
d_refScriptCostStride_2170 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_612 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2174 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2174 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_232 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2176 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2176 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_234 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2178 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2178 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_236 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2180 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2180 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_238 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_2182 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2182 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_240 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_2190 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1310
d_govParams_2190 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2194 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2194 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1342
      (coe d_govParams_2190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2196 :: T_TransactionStructure_20 -> ()
d_UpdateT_2196 = erased
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_2198 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1294
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2200 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1278
d_ppUpd_2200 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
      (coe d_govParams_2190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2202 ::
  T_TransactionStructure_20 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2202 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1302
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2204 :: T_TransactionStructure_20 -> AgdaAny -> ()
d_ppdWellFormed_2204 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2206 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_2206 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1296
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1328
         (coe d_govParams_2190 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2208 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__2212 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2212 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2208 (coe v0))))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__2214 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2214 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2216 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2216 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_2218 :: T_TransactionStructure_20 -> ()
d_AssetName_2218 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2220 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2220 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2222 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2224 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2226 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2228 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_2230 :: T_TransactionStructure_20 -> ()
d_Value_2230 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2232 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2232 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_2234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_2234 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_2236 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_2236 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2238 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2238 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2240 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2240 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_2242 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_2242 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_2244 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2244 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2208 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_2246 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_2246 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_2248 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2248 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2250 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2250 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                 (coe d_tokenAlgebra_2208 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.size
d_size_2252 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_2252 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_2254 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_2254 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2256 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2256 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
      (coe d_tokenAlgebra_2208 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_2258 :: T_TransactionStructure_20 -> AgdaAny
d_ε_2258 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe d_tokenAlgebra_2208 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2262 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2264 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2266 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2268 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2270 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2274 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2276 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2280 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2280 ~v0 = du_isMagmaIsomorphism_2280
du_isMagmaIsomorphism_2280 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2280 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2282 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2282 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2282 v2
du_isMagmaMonomorphism_2282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2284 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2288 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2290 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2290 ~v0 ~v1 v2 = du_isRelIsomorphism_2290 v2
du_isRelIsomorphism_2290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2290 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2292 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2292 ~v0 ~v1 v2 = du_isRelMonomorphism_2292 v2
du_isRelMonomorphism_2292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2292 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2296 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2296 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2298 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2302 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2304 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2308 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2308 ~v0 = du_isMagmaMonomorphism_2308
du_isMagmaMonomorphism_2308 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2308 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2310 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2312 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2312 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2314 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2314 ~v0 ~v1 v2 = du_isRelMonomorphism_2314 v2
du_isRelMonomorphism_2314 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2314 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2316 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2316 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2318 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_2320 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_2320 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_13831 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_2322 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_2322 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2741
      (d_DecEq'45'TxId_1180 (coe v0)) (d_crypto_1220 (coe v0))
      (d_epochStructure_1504 (coe v0)) (d_scriptStructure_1786 (coe v0))
      (d_govParams_2190 (coe v0)) (d_globalConstants_1196 (coe v0))
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2326 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2334 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2334 ~v0 = du_DecEq'45'GovRole_2334
du_DecEq'45'GovRole_2334 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2334
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_798
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2336 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2336 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_802
      (coe d_govStructure_2322 (coe v0))
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2338 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2338 ~v0 = du_DecEq'45'Vote_2338
du_DecEq'45'Vote_2338 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2338
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_800
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2340 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2342 :: T_TransactionStructure_20 -> ()
d_GovActionID_2342 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2344 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2346 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2348 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2350 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2352 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2352 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2356 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_NeedsHash_2356 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2370 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2372 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2374 :: T_TransactionStructure_20 -> ()
d_Voter_2374 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.actionWellFormed
d_actionWellFormed_2380 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 -> ()
d_actionWellFormed_2380 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_2382 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2382 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_716
      (coe d_govStructure_2322 (coe v0))
-- Ledger.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2386 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2386 ~v0 = du_getDRepVote_2386
du_getDRepVote_2386 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2386
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_804
-- Ledger.Transaction.TransactionStructure.GovernanceActions.maximum
d_maximum_2388 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2388 ~v0 = du_maximum_2388
du_maximum_2388 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2388
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_656
-- Ledger.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2394 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_proposedCC_2394 ~v0 = du_proposedCC_2394
du_proposedCC_2394 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_proposedCC_2394
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_808
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2400 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 -> AgdaAny
d_hash_2400 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_688 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2402 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2402 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_686 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2422 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_2422 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_794 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2424 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_expiresIn_2424 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_792 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2426 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  AgdaAny
d_prevAction_2426 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_796 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2428 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2428 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2430 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_776 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2430 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_788 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2434 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_690
d_action_2434 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_764 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2436 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_2436 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2438 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> Integer
d_deposit_2438 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_770 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2440 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  Maybe AgdaAny
d_policy_2440 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_768 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2442 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 -> AgdaAny
d_prevAction_2442 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_766 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2444 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_2444 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_772 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2456 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_680
d_anchor_2456 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_748 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2458 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2458 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_742 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2460 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_724
d_vote_2460 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_746 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2462 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2462 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_744 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2482 a0 = ()
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2502 :: T_TransactionStructure_20 -> ()
d_TxIn_2502 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2504 :: T_TransactionStructure_20 -> ()
d_TxOut_2504 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2506 :: T_TransactionStructure_20 -> ()
d_UTxO_2506 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2508 :: T_TransactionStructure_20 -> ()
d_Wdrl_2508 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2510 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2510 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2512 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2512 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2514 :: T_TransactionStructure_20 -> ()
d_Update_2514 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2516 a0 = ()
data T_TxBody_2516
  = C_TxBody'46'constructor_17569 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2558 ::
  T_TxBody_2516 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2558 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2560 ::
  T_TxBody_2516 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2560 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2562 ::
  T_TxBody_2516 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2562 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2564 :: T_TxBody_2516 -> Integer
d_txfee_2564 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2566 :: T_TxBody_2516 -> AgdaAny
d_mint_2566 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2568 ::
  T_TxBody_2516 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2568 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2570 ::
  T_TxBody_2516 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2570 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2572 ::
  T_TxBody_2516 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2572 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2574 ::
  T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_2574 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2576 ::
  T_TxBody_2516 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_2576 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2578 :: T_TxBody_2516 -> Integer
d_txdonation_2578 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2580 ::
  T_TxBody_2516 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2580 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2582 :: T_TxBody_2516 -> Maybe AgdaAny
d_txADhash_2582 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_2584 :: T_TxBody_2516 -> Maybe AgdaAny
d_txNetworkId_2584 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_2586 :: T_TxBody_2516 -> Maybe Integer
d_curTreasury_2586 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2588 :: T_TxBody_2516 -> Integer
d_txsize_2588 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2590 :: T_TxBody_2516 -> AgdaAny
d_txid_2590 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2592 ::
  T_TxBody_2516 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2592 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2594 :: T_TxBody_2516 -> [AgdaAny]
d_reqSigHash_2594 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2596 :: T_TxBody_2516 -> Maybe AgdaAny
d_scriptIntHash_2596 v0
  = case coe v0 of
      C_TxBody'46'constructor_17569 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2598 a0 = ()
data T_TxWitnesses_2598
  = C_TxWitnesses'46'constructor_18121 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2608 ::
  T_TxWitnesses_2598 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2608 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18121 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2610 ::
  T_TxWitnesses_2598 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2610 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18121 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2612 ::
  T_TxWitnesses_2598 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2612 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18121 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2614 ::
  T_TxWitnesses_2598 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2614 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_18121 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2616 ::
  T_TransactionStructure_20 -> T_TxWitnesses_2598 -> [AgdaAny]
d_scriptsP1_2616 ~v0 v1 = du_scriptsP1_2616 v1
du_scriptsP1_2616 :: T_TxWitnesses_2598 -> [AgdaAny]
du_scriptsP1_2616 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2610 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2618 a0 = ()
data T_Tx_2618
  = C_Tx'46'constructor_18313 T_TxBody_2516 T_TxWitnesses_2598 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2628 :: T_Tx_2618 -> T_TxBody_2516
d_body_2628 v0
  = case coe v0 of
      C_Tx'46'constructor_18313 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2630 :: T_Tx_2618 -> T_TxWitnesses_2598
d_wits_2630 v0
  = case coe v0 of
      C_Tx'46'constructor_18313 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2632 :: T_Tx_2618 -> Bool
d_isValid_2632 v0
  = case coe v0 of
      C_Tx'46'constructor_18313 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2634 :: T_Tx_2618 -> Maybe AgdaAny
d_txAD_2634 v0
  = case coe v0 of
      C_Tx'46'constructor_18313 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2636 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2636 ~v0 v1 = du_getValue_2636 v1
du_getValue_2636 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2636 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2640 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_2640 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_2642 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2642 v0 v1
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
                                          MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
                                          (d_scriptStructure_1786 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_426
                                                (coe d_scriptStructure_1786 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe d_scriptStructure_1786 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2652 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2652 ~v0 v1 = du_getValue'688'_2652 v1
du_getValue'688'_2652 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2652 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2656 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2656 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1180 (coe v0))
               (coe d_DecEq'45'Ix_1178 (coe v0))))
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
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2662 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2662 ~v0 v1 = du_scriptOuts_2662 v1
du_scriptOuts_2662 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2662 v0
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
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2670 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2670 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1180 (coe v0))
               (coe d_DecEq'45'Ix_1178 (coe v0))))
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
               (coe du_scriptOuts_2662 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2676 ::
  T_TransactionStructure_20 ->
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2676 v0 v1 v2
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
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe d_DecEq'45'TxId_1180 (coe v0))
                  (coe d_DecEq'45'Ix_1178 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_2558 (coe d_body_2628 (coe v1)))
               (coe d_refInputs_2560 (coe d_body_2628 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2688 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2688 v0 ~v1 = du_collateral_2688 v0
du_collateral_2688 ::
  T_Tx_2618 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2688 v0
  = coe d_collateral_2592 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_2690 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_2690 v0 ~v1 = du_curTreasury_2690 v0
du_curTreasury_2690 :: T_Tx_2618 -> Maybe Integer
du_curTreasury_2690 v0
  = coe d_curTreasury_2586 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2692 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2692 v0 ~v1 = du_mint_2692 v0
du_mint_2692 :: T_Tx_2618 -> AgdaAny
du_mint_2692 v0 = coe d_mint_2566 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2694 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2694 v0 ~v1 = du_refInputs_2694 v0
du_refInputs_2694 ::
  T_Tx_2618 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2694 v0
  = coe d_refInputs_2560 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2696 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2696 v0 ~v1 = du_reqSigHash_2696 v0
du_reqSigHash_2696 :: T_Tx_2618 -> [AgdaAny]
du_reqSigHash_2696 v0
  = coe d_reqSigHash_2594 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2698 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2698 v0 ~v1 = du_scriptIntHash_2698 v0
du_scriptIntHash_2698 :: T_Tx_2618 -> Maybe AgdaAny
du_scriptIntHash_2698 v0
  = coe d_scriptIntHash_2596 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2700 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2700 v0 ~v1 = du_txADhash_2700 v0
du_txADhash_2700 :: T_Tx_2618 -> Maybe AgdaAny
du_txADhash_2700 v0
  = coe d_txADhash_2582 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_2702 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_2702 v0 ~v1 = du_txNetworkId_2702 v0
du_txNetworkId_2702 :: T_Tx_2618 -> Maybe AgdaAny
du_txNetworkId_2702 v0
  = coe d_txNetworkId_2584 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2704 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2704 v0 ~v1 = du_txcerts_2704 v0
du_txcerts_2704 ::
  T_Tx_2618 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2704 v0 = coe d_txcerts_2570 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2706 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2706 v0 ~v1 = du_txdonation_2706 v0
du_txdonation_2706 :: T_Tx_2618 -> Integer
du_txdonation_2706 v0
  = coe d_txdonation_2578 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2708 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2708 v0 ~v1 = du_txfee_2708 v0
du_txfee_2708 :: T_Tx_2618 -> Integer
du_txfee_2708 v0 = coe d_txfee_2564 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2710 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2710 v0 ~v1 = du_txid_2710 v0
du_txid_2710 :: T_Tx_2618 -> AgdaAny
du_txid_2710 v0 = coe d_txid_2590 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2712 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2712 v0 ~v1 = du_txins_2712 v0
du_txins_2712 ::
  T_Tx_2618 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2712 v0 = coe d_txins_2558 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2714 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2714 v0 ~v1 = du_txouts_2714 v0
du_txouts_2714 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2714 v0 = coe d_txouts_2562 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2716 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
d_txprop_2716 v0 ~v1 = du_txprop_2716 v0
du_txprop_2716 ::
  T_Tx_2618 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_750]
du_txprop_2716 v0 = coe d_txprop_2576 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2718 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2718 v0 ~v1 = du_txsize_2718 v0
du_txsize_2718 :: T_Tx_2618 -> Integer
du_txsize_2718 v0 = coe d_txsize_2588 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2720 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2720 v0 ~v1 = du_txup_2720 v0
du_txup_2720 ::
  T_Tx_2618 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2720 v0 = coe d_txup_2580 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2722 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2722 v0 ~v1 = du_txvldt_2722 v0
du_txvldt_2722 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2722 v0 = coe d_txvldt_2568 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2724 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
d_txvote_2724 v0 ~v1 = du_txvote_2724 v0
du_txvote_2724 ::
  T_Tx_2618 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_732]
du_txvote_2724 v0 = coe d_txvote_2574 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2726 ::
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2726 v0 ~v1 = du_txwdrls_2726 v0
du_txwdrls_2726 ::
  T_Tx_2618 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2726 v0 = coe d_txwdrls_2572 (coe d_body_2628 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2728 ::
  T_TransactionStructure_20 ->
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2728 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_2610 (coe d_wits_2630 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe d_refScripts_2676 (coe v0) (coe v1) (coe v2)))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2738 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2738 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe d_crypto_1220 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_2750 (coe v0) (coe v2) (coe v3)))))
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
                 (coe du_m_2750 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2750 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2750 v0 ~v1 v2 v3 = du_m_2750 v0 v2 v3
du_m_2750 ::
  T_TransactionStructure_20 ->
  T_Tx_2618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2750 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
         (d_scriptStructure_1786 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_426
               (coe d_scriptStructure_1786 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_448
               (coe d_scriptStructure_1786 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1220 (coe v0)))
      (coe d_txscripts_2728 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2752 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2752 ~v0 v1 = du_isP2Script_2752 v1
du_isP2Script_2752 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2752 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2754 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2754 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
              (d_tokenAlgebra_2208 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
