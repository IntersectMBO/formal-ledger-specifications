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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Transaction.TransactionStructure
d_TransactionStructure_20 = ()
data T_TransactionStructure_20
  = C_TransactionStructure'46'constructor_14611 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_134
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_1504
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
                                                (AgdaAny -> AgdaAny)
-- Ledger.Transaction._.THash
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
-- Ledger.Transaction._.Ser
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
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_124 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__132 = erased
-- Ledger.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_134 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_136 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.Value
d_Value_144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_144 = erased
-- Ledger.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_146 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
      (coe v0)
-- Ledger.Transaction._.TokenAlgebra.coin
d_coin_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_150 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_154 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_208
      (coe v0)
-- Ledger.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_156 = erased
-- Ledger.Transaction._.TokenAlgebra.inject
d_inject_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_158 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.policies
d_policies_162 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_162 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200 (coe v0)
-- Ledger.Transaction._.TokenAlgebra.size
d_size_166 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_166 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_202 (coe v0)
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_1236 :: T_TransactionStructure_20 -> ()
d_Ix_1236 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_1238 :: T_TransactionStructure_20 -> ()
d_TxId_1238 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1240 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_1240 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1242 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1242 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1244 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1244 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1246 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1246 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1250 :: T_TransactionStructure_20 -> ()
d_THash_1250 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1252 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1252 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe d_adHashingScheme_1246 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1254 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1254 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe d_adHashingScheme_1246 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1256 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1256 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe d_adHashingScheme_1246 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1258 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1258 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe d_adHashingScheme_1246 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1260 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1260 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1264 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1264 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ActiveSlotCoeff_288
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1266 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1266 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1268 :: T_TransactionStructure_20 -> ()
d_Network_1268 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1270 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1270 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_296
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1272 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1272 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_290
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1274 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1274 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_286
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1276 :: T_TransactionStructure_20 -> Integer
d_Quorum_1276 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_294
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1278 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1278 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_282
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1280 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1280 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_284
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1282 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1282 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_292
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1284 ::
  T_TransactionStructure_20 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1284 = erased
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1286 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1286 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_310
      (coe d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1288 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1288 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1292 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1292 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1294 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1294 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
      (coe d_crypto_1288 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1296 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1296 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1298 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1298 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1300 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1300 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1302 :: T_TransactionStructure_20 -> ()
d_THash_1302 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1304 :: T_TransactionStructure_20 -> ()
d_KeyPair_1304 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1306 :: T_TransactionStructure_20 -> ()
d_SKey_1306 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1308 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1308 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1310 :: T_TransactionStructure_20 -> ()
d_Ser_1310 = erased
-- Ledger.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1312 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1312 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
      (coe d_crypto_1288 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1314 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1314 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1316 :: T_TransactionStructure_20 -> ()
d_Sig_1316 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1318 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1318 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1320 :: T_TransactionStructure_20 -> ()
d_VKey_1320 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1322 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1322 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1324 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1324 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1326 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1326 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1328 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1328 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1288 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1330 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1330 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe d_crypto_1288 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1332 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1332 v0
  = let v1 = d_crypto_1288 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1336 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1336 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1338 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1342 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1342 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1344 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1344 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1346 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1346 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1348 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1348 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1350 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1350 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1352 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1354 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1356 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1358 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_1358 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1360 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1360 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1362 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1362 ~v0 = du_addValue_1362
du_addValue_1362 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1362
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_214
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1364 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_1364 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1366 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1366 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1368 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1368 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_208
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1370 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1370 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1372 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_1372 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1374 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1374 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1376 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [AgdaAny]
d_policies_1376 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1378 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1378 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1380 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_1380 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1382 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1382 ~v0 = du_sum'7515'_1382
du_sum'7515'_1382 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1382
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_232
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1384 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_1384 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1388 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1390 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1394 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1396 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1400 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1406 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1406 ~v0 = du_isMagmaIsomorphism_1406
du_isMagmaIsomorphism_1406 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1406 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1408 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1408 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1408 v2
du_isMagmaMonomorphism_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1408 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1414 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1416 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1416 ~v0 ~v1 v2 = du_isRelIsomorphism_1416 v2
du_isRelIsomorphism_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1418 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1418 ~v0 ~v1 v2 = du_isRelMonomorphism_1418 v2
du_isRelMonomorphism_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1418 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1422 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1424 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1428 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1434 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1434 ~v0 = du_isMagmaMonomorphism_1434
du_isMagmaMonomorphism_1434 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1434 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1440 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1440 ~v0 ~v1 v2 = du_isRelMonomorphism_1440 v2
du_isRelMonomorphism_1440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1442 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1444 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1448 :: T_TransactionStructure_20 -> ()
d_Addr_1448 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1450 a0 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1452 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1454 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1456 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26 ->
  AgdaAny -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_CredentialOf_1456 v0
  = coe MAlonzo.Code.Ledger.Address.d_CredentialOf_34 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1458 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1458 ~v0 = du_Dec'45'isScript_1458
du_Dec'45'isScript_1458 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1458
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1460 ~v0 = du_Dec'45'isVKey_1460
du_Dec'45'isVKey_1460 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1460
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1462 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1462 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_234
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
         (coe d_globalConstants_1260 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1288 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1288 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1464 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1464 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_236
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
         (coe d_globalConstants_1260 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1288 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1288 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1466 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1466 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1288 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1288 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1468 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1468 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_280
         (coe d_globalConstants_1260 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe d_crypto_1288 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1288 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1470 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_1472 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasCredential_26
d_HasCredential'45'RwdAddr_1472 ~v0
  = du_HasCredential'45'RwdAddr_1472
du_HasCredential'45'RwdAddr_1472 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26
du_HasCredential'45'RwdAddr_1472
  = coe MAlonzo.Code.Ledger.Address.du_HasCredential'45'RwdAddr_128
-- Ledger.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1474 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1476 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'BaseAddr_1476 ~v0
  = du_HasNetworkId'45'BaseAddr_1476
du_HasNetworkId'45'BaseAddr_1476 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'BaseAddr_1476
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'BaseAddr_122
-- Ledger.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1478 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'BootstrapAddr_1478 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1478
du_HasNetworkId'45'BootstrapAddr_1478 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'BootstrapAddr_1478
  = coe
      MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'BootstrapAddr_124
-- Ledger.Transaction.TransactionStructure._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_1480 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_1480 ~v0
  = du_HasNetworkId'45'RwdAddr_1480
du_HasNetworkId'45'RwdAddr_1480 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_1480
  = coe MAlonzo.Code.Ledger.Address.du_HasNetworkId'45'RwdAddr_126
-- Ledger.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1486 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1486 v0
  = coe MAlonzo.Code.Ledger.Address.d_NetworkIdOf_116 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1488 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1492 :: T_TransactionStructure_20 -> ()
d_ScriptAddr_1492 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1494 :: T_TransactionStructure_20 -> ()
d_ScriptBaseAddr_1494 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1496 :: T_TransactionStructure_20 -> ()
d_ScriptBootstrapAddr_1496 = erased
-- Ledger.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1500 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1500 ~v0 = du_Show'45'Credential_1500
du_Show'45'Credential_1500 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1500 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_250 v1 v2
-- Ledger.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1502 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1502 ~v0
  = du_Show'45'Credential'215'Coin_1502
du_Show'45'Credential'215'Coin_1502 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1502 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_254 v1
      v2
-- Ledger.Transaction.TransactionStructure._.Show-RwdAddr
d_Show'45'RwdAddr_1504 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1504 ~v0 = du_Show'45'RwdAddr_1504
du_Show'45'RwdAddr_1504 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1504
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_252
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1506 :: T_TransactionStructure_20 -> ()
d_VKeyAddr_1506 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1508 :: T_TransactionStructure_20 -> ()
d_VKeyBaseAddr_1508 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1510 :: T_TransactionStructure_20 -> ()
d_VKeyBootstrapAddr_1510 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1514 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_60 -> AgdaAny
d_getScriptHash_1514 ~v0 = du_getScriptHash_1514
du_getScriptHash_1514 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_60 -> AgdaAny
du_getScriptHash_1514
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_228
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1516 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isBootstrapAddr?
d_isBootstrapAddr'63'_1518 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1518 ~v0 = du_isBootstrapAddr'63'_1518
du_isBootstrapAddr'63'_1518 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1518
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_182
-- Ledger.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1520 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1520 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1522 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_1522 ~v0 = du_isKeyHashObj_1522
du_isKeyHashObj_1522 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_1522
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_40
-- Ledger.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1524 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1524 ~v0 = du_isKeyHashObj'7495'_1524
du_isKeyHashObj'7495'_1524 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1524
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_44
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1526 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1528 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1528 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1530 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_1530 ~v0 = du_isScriptObj_1530
du_isScriptObj_1530 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_1530
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_50
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1532 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> ()
d_isScriptRwdAddr_1532 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1534 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1536 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1536 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1538 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1538 ~v0 = du_netId_1538
du_netId_1538 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1538 = coe MAlonzo.Code.Ledger.Address.du_netId_156
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1540 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1540 ~v0 = du_payCred_1540
du_payCred_1540 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1540 = coe MAlonzo.Code.Ledger.Address.du_payCred_152
-- Ledger.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1542 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1542 ~v0 = du_stakeCred_1542
du_stakeCred_1542 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1542
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_154
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1546 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_66 -> AgdaAny
d_net_1546 v0 = coe MAlonzo.Code.Ledger.Address.d_net_74 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1548 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_66 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1548 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_76 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1550 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_66 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1550 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1554 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 -> Integer
d_attrsSize_1554 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_92 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1556 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 -> AgdaAny
d_net_1556 v0 = coe MAlonzo.Code.Ledger.Address.d_net_88 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1558 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_80 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1558 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_90 (coe v0)
-- Ledger.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1568 ::
  MAlonzo.Code.Ledger.Address.T_HasCredential_26 ->
  AgdaAny -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_CredentialOf_1568 v0
  = coe MAlonzo.Code.Ledger.Address.d_CredentialOf_34 (coe v0)
-- Ledger.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1572 ::
  MAlonzo.Code.Ledger.Address.T_HasNetworkId_108 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1572 v0
  = coe MAlonzo.Code.Ledger.Address.d_NetworkIdOf_116 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1576 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_94 -> AgdaAny
d_net_1576 v0 = coe MAlonzo.Code.Ledger.Address.d_net_100 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1578 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1578 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_102 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1592 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1592 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1596 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1596 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1598 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1598 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1600 ::
  T_TransactionStructure_20 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1600 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1602 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1602 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1604 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1604 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1606 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_1606 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1608 :: T_TransactionStructure_20 -> ()
d_Epoch_1608 = erased
-- Ledger.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1610 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1610 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1612 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1612 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1614 :: T_TransactionStructure_20 -> ()
d_Slot_1614 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1616 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_1616 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1618 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1618 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1620 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1620 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1622 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1622 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1624 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1624 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1626 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1626 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1628 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1628 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1630 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1630 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1632 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1632 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
      (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1636 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1636 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
      (coe d_crypto_1288 (coe v0)) (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1638 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
      (coe d_crypto_1288 (coe v0)) (coe d_epochStructure_1592 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1640 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1642 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1656 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1658 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1672 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1676 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1676 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1678 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1678 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1680 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1680 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1682 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1682 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1684 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1684 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1688 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1688 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1690 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1690 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1692 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1692 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1694 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1694 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1696 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1696 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1698 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1698 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1700 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1700 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1702 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1702 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1704 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1704 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1706 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1706 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1708 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1710 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1710 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1712 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1712 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1714 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1714 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1716 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1716 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1718 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_1718 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1720 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1720 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1722 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_1722 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1724 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_1724 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1726 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_1726 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_1728 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_1728 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_1730 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_1730 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_1732 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_1732 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1734 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_1734 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1736 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_1736 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1738 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1738 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1740 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1740 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_1742 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1742 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_1744 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1744 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1746 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1746 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1748 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1748 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1750 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_1750 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1752 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_1752 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1754 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1754 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1758 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1758 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1760 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_1760 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1762 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_1762 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1764 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_1764 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1766 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1766 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1768 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_1768 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1770 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1770 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1772 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1772 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1774 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1774 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1776 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1776 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1778 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1778 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1780 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1780 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1782 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1782 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1784 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1784 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1786 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1786 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1788 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1788 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1790 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1790 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1792 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_1792 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1794 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1794 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1796 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1796 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1798 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1798 ~v0 = du_Hashable'45'Script_1798
du_Hashable'45'Script_1798 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1798
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1800 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_1800 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1802 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_1802 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1804 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_1804 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1806 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_1806 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_1808 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_1808 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_1810 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_1810 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_1812 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_1812 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1814 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_1814 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1816 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_1816 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1818 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_1818 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1820 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1820 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1822 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1822 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_1824 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1824 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_1826 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1826 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1828 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1828 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1830 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1830 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1832 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1832 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1834 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_1834 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1836 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1836 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_426 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1838 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1838 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1840 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_1840 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_448 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1842 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1842 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1844 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1844 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1874 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1874 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1878 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1878 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1880 :: T_TransactionStructure_20 -> ()
d_CostModel_1880 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1882 :: T_TransactionStructure_20 -> ()
d_T_1882 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1884 :: T_TransactionStructure_20 -> ()
d_THash_1884 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1886 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1886 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1888 :: T_TransactionStructure_20 -> ()
d_Datum_1888 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1890 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1890 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1892 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1892 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1894 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1894 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1896 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1896 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1898 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1898 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1900 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1900 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_1902 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1902 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1904 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1904 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1906 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1906 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1874 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1908 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1908 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1874 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1910 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1910 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1912 :: T_TransactionStructure_20 -> ()
d_ExUnits_1912 = erased
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1914 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1914 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_426
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1916 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1916 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1918 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1918 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_522
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1920 :: T_TransactionStructure_20 -> ()
d_LangDepView_1920 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1922 :: T_TransactionStructure_20 -> ()
d_Language_1922 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1924 :: T_TransactionStructure_20 -> ()
d_P1Script_1924 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1926 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1926 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_1928 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV1_1928 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_1930 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV2_1930 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_1932 :: T_TransactionStructure_20 -> AgdaAny
d_PlutusV3_1932 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1934 :: T_TransactionStructure_20 -> ()
d_Prices_1934 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1936 :: T_TransactionStructure_20 -> ()
d_Redeemer_1936 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1938 :: T_TransactionStructure_20 -> ()
d_Script_1938 = erased
-- Ledger.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_1940 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1940 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_1942 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1942 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_1944 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1944 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1946 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1946 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1874 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1948 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1948 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_448
                 (coe d_scriptStructure_1874 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1950 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1950 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_448
            (coe d_scriptStructure_1874 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1952 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1952 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1954 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1954 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1956 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1956 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_426
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1958 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1958 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_448
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1960 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1960 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_448
         (coe d_scriptStructure_1874 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1962 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1962 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1964 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1964 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1968 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1970 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1970 ~v0
  = du_DecEq'45'DrepThresholds_1970
du_DecEq'45'DrepThresholds_1970 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1970
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_576
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1972 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1972 ~v0 = du_DecEq'45'PParamGroup_1972
du_DecEq'45'PParamGroup_1972 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1972
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_582
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1974 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_580
      (coe d_epochStructure_1592 (coe v0))
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1976 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1976 ~v0
  = du_DecEq'45'PoolThresholds_1976
du_DecEq'45'PoolThresholds_1976 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1976
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_578
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1978 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1982 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_1986 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1986 ~v0 = du_HasCast'45'Acnt_1986
du_HasCast'45'Acnt_1986 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1986
  = coe MAlonzo.Code.Ledger.PParams.du_HasCast'45'Acnt_184
-- Ledger.Transaction.TransactionStructure._.HasPParams
d_HasPParams_1988 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.HasccMaxTermLength
d_HasccMaxTermLength_1990 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.HasgovActionDeposit
d_HasgovActionDeposit_1992 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_1994 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
d_HasgovActionDeposit'45'PParams_1994 ~v0
  = du_HasgovActionDeposit'45'PParams_1994
du_HasgovActionDeposit'45'PParams_1994 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426
du_HasgovActionDeposit'45'PParams_1994
  = coe
      MAlonzo.Code.Ledger.PParams.du_HasgovActionDeposit'45'PParams_458
-- Ledger.Transaction.TransactionStructure._.Hastreasury
d_Hastreasury_1996 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2000 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_2002 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2004 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2006 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_2006 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2008 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_2010 :: T_TransactionStructure_20 -> ()
d_ProtVer_2010 = erased
-- Ledger.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2014 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2014 ~v0 = du_Show'45'DrepThresholds_2014
du_Show'45'DrepThresholds_2014 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2014
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_584
-- Ledger.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2016 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2016 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_588
      (coe d_epochStructure_1592 (coe v0))
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2018 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2018 ~v0 = du_Show'45'PoolThresholds_2018
du_Show'45'PoolThresholds_2018 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2018
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_586
-- Ledger.Transaction.TransactionStructure._.Show-ProtVer
d_Show'45'ProtVer_2020 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_2020 ~v0 = du_Show'45'ProtVer_2020
du_Show'45'ProtVer_2020 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_2020
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Transaction.TransactionStructure._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2028 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.Transaction.TransactionStructure._.govActionDepositOf
d_govActionDepositOf_2030 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_2030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- Ledger.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2032 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2032 ~v0 = du_paramsWF'45'elim_2032
du_paramsWF'45'elim_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2032 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_548 v2
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2034 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> ()
d_paramsWellFormed_2034 = erased
-- Ledger.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2036 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> [Integer]
d_positivePParams_2036 ~v0 = du_positivePParams_2036
du_positivePParams_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> [Integer]
du_positivePParams_2036
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_460
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_2038 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_2040 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_2040 ~v0 = du_pvCanFollow'63'_2040
du_pvCanFollow'63'_2040 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_2040
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1424
-- Ledger.Transaction.TransactionStructure._.refScriptCostStride>0
d_refScriptCostStride'62'0_2042 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_2042 ~v0
  = du_refScriptCostStride'62'0_2042
du_refScriptCostStride'62'0_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_2042 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_570 v0
-- Ledger.Transaction.TransactionStructure._.treasuryOf
d_treasuryOf_2044 ::
  MAlonzo.Code.Ledger.PParams.T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_2044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryOf_168 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2050 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_2050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2052 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_2052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2056 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2056 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2058 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2058 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2060 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2060 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2062 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2062 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2064 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2064 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_228 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2066 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2066 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_230 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2068 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2068 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_232 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2070 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2070 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_234 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2072 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2072 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_236 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2074 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2074 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_238 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2078 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2078 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2080 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 -> ()
d_UpdateT_2080 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2082 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_2082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2084 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_2084 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2086 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2088 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 -> AgdaAny -> ()
d_ppdWellFormed_2088 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2090 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_2090 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1490
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1522 (coe v0))
-- Ledger.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2094 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_PParamsOf_2094 v0
  = coe MAlonzo.Code.Ledger.PParams.d_PParamsOf_416 (coe v0)
-- Ledger.Transaction.TransactionStructure._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_2098 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_444 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_2098 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLengthOf_452 (coe v0)
-- Ledger.Transaction.TransactionStructure._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_2102 ::
  MAlonzo.Code.Ledger.PParams.T_HasgovActionDeposit_426 ->
  AgdaAny -> Integer
d_govActionDepositOf_2102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDepositOf_434 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Hastreasury.treasuryOf
d_treasuryOf_2106 ::
  MAlonzo.Code.Ledger.PParams.T_Hastreasury_160 -> AgdaAny -> Integer
d_treasuryOf_2106 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryOf_168 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2122 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_Emax_2122 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_378 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_2124 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_a_2124 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_350 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_2126 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2126 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_382 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_2128 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_b_2128 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_352 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2130 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMaxTermLength_2130 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_394 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2132 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_ccMinSize_2132 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_392 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2134 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_coinsPerUTxOByte_2134 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_362 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2136 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_collateralPercentage_2136 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_384 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2138 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_costmdls_2138 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_386 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2140 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_drepActivity_2140 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_402 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2142 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_drepDeposit_2142 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_400 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2144 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_2144 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_390 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2146 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionDeposit_2146 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_398 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2148 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_govActionLifetime_2148 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_396 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2150 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_keyDeposit_2150 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_354 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2152 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxBlockExUnits_2152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_342 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2154 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxBlockSize_2154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_334 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2156 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxCollateralInputs_2156 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_346 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2158 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxHeaderSize_2158 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_338 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerBlock_2160 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_370 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2162 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxRefScriptSizePerTx_2162 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_368 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2164 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_maxTxExUnits_2164 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_340 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2166 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxTxSize_2166 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_336 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2168 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_maxValSize_2168 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_344 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2170 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2170 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_366
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2172 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_minUTxOValue_2172 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_376 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2174 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2174 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_358 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2176 :: MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_nopt_2176 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_380 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2178 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_poolDeposit_2178 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_356 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2180 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_2180 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_388 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_2182 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> AgdaAny
d_prices_2182 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_364 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_2184 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2184 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_348 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2186 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2186 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_374 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2188 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 -> Integer
d_refScriptCostStride_2188 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_372 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2190 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_360 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2194 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> ()
d_UpdateT_2194 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2196 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_2196 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2198 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2198 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2200 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 -> AgdaAny -> ()
d_ppdWellFormed_2200 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2202 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_2202 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1490 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2206 ::
  T_TransactionStructure_20 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2206 ~v0 = du__'63''8599'__2206
du__'63''8599'__2206 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2206 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1216 v1 v2
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2208 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1418
      (coe d_epochStructure_1592 (coe v0))
      (coe d_scriptStructure_1874 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2210 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2212 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyPParamsUpdate_2212 ~v0 = du_applyPParamsUpdate_2212
du_applyPParamsUpdate_2212 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
du_applyPParamsUpdate_2212
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1264
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2214 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_modifiedUpdateGroups_2214 ~v0 = du_modifiedUpdateGroups_2214
du_modifiedUpdateGroups_2214 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
du_modifiedUpdateGroups_2214
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1200
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2216 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesEconomicGroup_2216 ~v0 = du_modifiesEconomicGroup_2216
du_modifiesEconomicGroup_2216 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesEconomicGroup_2216
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_896
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesGovernanceGroup_2218 ~v0
  = du_modifiesGovernanceGroup_2218
du_modifiesGovernanceGroup_2218 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesGovernanceGroup_2218
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_1048
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesNetworkGroup_2220 ~v0 = du_modifiesNetworkGroup_2220
du_modifiesNetworkGroup_2220 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesNetworkGroup_2220
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_820
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesSecurityGroup_2222 ~v0 = du_modifiesSecurityGroup_2222
du_modifiesSecurityGroup_2222 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesSecurityGroup_2222
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesSecurityGroup_1124
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2224 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
d_modifiesTechnicalGroup_2224 ~v0 = du_modifiesTechnicalGroup_2224
du_modifiesTechnicalGroup_2224 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Bool
du_modifiesTechnicalGroup_2224
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_972
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> ()
d_paramsUpdateWellFormed_2226 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2228 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2228 ~v0
  = du_paramsUpdateWellFormed'63'_2228
du_paramsUpdateWellFormed'63'_2228 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_2228
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_816
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2230 ::
  T_TransactionStructure_20 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_2230 ~v0 = du_'8801''45'update_2230
du_'8801''45'update_2230 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8801''45'update_2230 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1230 v1
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2234 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_Emax_2234 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2236 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_a_2236 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_680 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2238 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2238 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_708 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2240 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_b_2240 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_682 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2242 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMaxTermLength_2242 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_732 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2244 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_ccMinSize_2244 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_730 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2246 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_coinsPerUTxOByte_2246 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_692 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2248 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_collateralPercentage_2248 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_714 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2250 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_costmdls_2250 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_716 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2252 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_drepActivity_2252 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_728 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2254 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_drepDeposit_2254 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_726 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2256 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_198
d_drepThresholds_2256 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_718 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2258 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionDeposit_2258 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_724 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2260 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_govActionLifetime_2260 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2262 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_keyDeposit_2262 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_684 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2264 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxBlockExUnits_2264 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_676 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2266 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxBlockSize_2266 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_664 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2268 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxCollateralInputs_2268 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_672 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2270 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxHeaderSize_2270 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_668 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2272 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerBlock_2272 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_700 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2274 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxRefScriptSizePerTx_2274 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_698 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2276 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_maxTxExUnits_2276 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_674 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2278 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxTxSize_2278 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_666 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2280 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_maxValSize_2280 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_670 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2282 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2282 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_696
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2284 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_minUTxOValue_2284 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_706 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2286 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2286 v0
  = coe MAlonzo.Code.Ledger.PParams.d_monetaryExpansion_688 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2288 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_nopt_2288 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_712 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2290 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_poolDeposit_2290 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_686 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2292 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240
d_poolThresholds_2292 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_720 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2294 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe AgdaAny
d_prices_2294 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_694 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2296 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2296 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_678 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2298 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2298 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_704 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2300 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 -> Maybe Integer
d_refScriptCostStride_2300 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_702 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2302 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_592 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2302 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasuryCut_690 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2306 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2306 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_252 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2308 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2308 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_254 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2310 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2310 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_256 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2312 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2312 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_258 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2314 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2314 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5_260 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_2322 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1504
d_govParams_2322 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2326 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2326 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1536
      (coe d_govParams_2322 (coe v0))
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2328 :: T_TransactionStructure_20 -> ()
d_UpdateT_2328 = erased
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2330 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_applyUpdate_2330 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1488
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe d_govParams_2322 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2332 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1472
d_ppUpd_2332 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
      (coe d_govParams_2322 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2334 ::
  T_TransactionStructure_20 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2334 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1496
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe d_govParams_2322 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2336 :: T_TransactionStructure_20 -> AgdaAny -> ()
d_ppdWellFormed_2336 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2338 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_186]
d_updateGroups_2338 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1490
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1522
         (coe d_govParams_2322 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2340 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_2340 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__2344 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2344 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe d_tokenAlgebra_2340 (coe v0))))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__2346 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2346 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2348 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2348 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2350 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2350 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_212
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2352 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2352 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_210
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2354 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2356 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2358 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_2360 :: T_TransactionStructure_20 -> ()
d_Value_2360 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2362 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2362 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_2364 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2364 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_214
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_2366 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_2366 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2368 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2368 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2370 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_2370 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_208
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2372 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2372 = erased
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_2374 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_2374 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_198
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_2376 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_2376 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe d_tokenAlgebra_2340 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_2378 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_2378 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_200
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2380 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_2380 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
                 (coe d_tokenAlgebra_2340 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.size
d_size_2382 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_2382 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_202
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2384 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2384 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_232
      (coe d_tokenAlgebra_2340 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_2386 :: T_TransactionStructure_20 -> AgdaAny
d_ε_2386 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_114
            (coe d_tokenAlgebra_2340 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2390 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2392 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2396 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2398 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2398 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2402 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2408 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_2408 ~v0 = du_isMagmaIsomorphism_2408
du_isMagmaIsomorphism_2408 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_2408 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2410 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2410 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2410 v2
du_isMagmaMonomorphism_2410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2410 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2412 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_2414 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2416 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2418 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2418 ~v0 ~v1 v2 = du_isRelIsomorphism_2418 v2
du_isRelIsomorphism_2418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2420 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2420 ~v0 ~v1 v2 = du_isRelMonomorphism_2420 v2
du_isRelMonomorphism_2420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2420 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2424 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2426 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2430 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2436 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2436 ~v0 = du_isMagmaMonomorphism_2436
du_isMagmaMonomorphism_2436 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2436 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2442 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2442 ~v0 ~v1 v2 = du_isRelMonomorphism_2442 v2
du_isRelMonomorphism_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2444 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2446 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_2448 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_2448 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_14611 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_2450 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_2450 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_3123
      (d_DecEq'45'TxId_1244 (coe v0)) (d_crypto_1288 (coe v0))
      (d_epochStructure_1592 (coe v0)) (d_scriptStructure_1874 (coe v0))
      (d_govParams_2322 (coe v0)) (d_globalConstants_1260 (coe v0))
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2454 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2462 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2462 ~v0 = du_DecEq'45'GovActionType_2462
du_DecEq'45'GovActionType_2462 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2462
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovActionType_878
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2464 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2464 ~v0 = du_DecEq'45'GovRole_2464
du_DecEq'45'GovRole_2464 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2464
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_880
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2466 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2466 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_884
      (coe d_govStructure_2450 (coe v0))
-- Ledger.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2468 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2468 ~v0 = du_DecEq'45'Vote_2468
du_DecEq'45'Vote_2468 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2468
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_882
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2470 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2472 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_GovActionData_2472 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2474 :: T_TransactionStructure_20 -> ()
d_GovActionID_2474 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2476 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2478 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2480 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2482 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2484 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2486 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2486 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2486
du_HasCast'45'GovAction'45'Sigma_2486 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2486
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_788
-- Ledger.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2488 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2488 ~v0 = du_HasCast'45'GovVote_2488
du_HasCast'45'GovVote_2488 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2488
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'GovVote_886
-- Ledger.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2490 ::
  T_TransactionStructure_20 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2490 ~v0
  = du_HasCast'45'HashProtected_2490
du_HasCast'45'HashProtected_2490 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2490 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected_800
-- Ledger.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2492 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2492 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2492
du_HasCast'45'HashProtected'45'MaybeScriptHash_2492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2492
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_802
-- Ledger.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2494 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2494 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2498 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758 -> ()
d_NeedsHash_2498 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2512 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2514 a0 = ()
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Voter
d_Voter_2516 :: T_TransactionStructure_20 -> ()
d_Voter_2516 = erased
-- Ledger.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_2524 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 -> AgdaAny
d_gaData_2524 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_784 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_2526 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758
d_gaType_2526 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_782 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.getDRepVote
d_getDRepVote_2528 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2528 ~v0 = du_getDRepVote_2528
du_getDRepVote_2528 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_2528
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_888
-- Ledger.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2534 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_proposedCC_2534 ~v0 = du_proposedCC_2534
du_proposedCC_2534 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_proposedCC_2534
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_892
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_2542 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748 -> AgdaAny
d_hash_2542 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_756 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_2544 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2544 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_754 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_2548 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 -> AgdaAny
d_gaData_2548 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaData_784 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_2550 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_758
d_gaType_2550 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gaType_782 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_2554 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_2554 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_874 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_2556 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  AgdaAny
d_expiresIn_2556 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_872 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_2558 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  AgdaAny
d_prevAction_2558 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_876 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_2560 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_2560 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_870 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_2562 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2562 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_868 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_2582 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_776
d_action_2582 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_844 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_2584 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_2584 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_854 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_2586 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> Integer
d_deposit_2586 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_850 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_2588 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  Maybe AgdaAny
d_policy_2588 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_848 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_2590 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 -> AgdaAny
d_prevAction_2590 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_846 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_2592 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_94
d_returnAddr_2592 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_852 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_2604 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_748
d_anchor_2604 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_828 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_2606 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2606 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_822 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_2608 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_804
d_vote_2608 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_826 (coe v0)
-- Ledger.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_2610 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2610 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_824 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2658 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HasWdrls
d_HasWdrls_2746 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.wdrlsOf
d_wdrlsOf_2790 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2790 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrlsOf_1068 (coe v0)
-- Ledger.Transaction.TransactionStructure._.HasWdrls.wdrlsOf
d_wdrlsOf_2936 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_2936 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrlsOf_1068 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2956 :: T_TransactionStructure_20 -> ()
d_TxIn_2956 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2958 :: T_TransactionStructure_20 -> ()
d_TxOut_2958 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2960 :: T_TransactionStructure_20 -> ()
d_UTxO_2960 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2962 :: T_TransactionStructure_20 -> ()
d_Wdrl_2962 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2964 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2964 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2966 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2966 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2968 :: T_TransactionStructure_20 -> ()
d_Update_2968 = erased
-- Ledger.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_2974 a0 a1 a2 = ()
newtype T_HasUTxO_2974
  = C_HasUTxO'46'constructor_18503 (AgdaAny ->
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_2982 ::
  T_HasUTxO_2974 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2982 v0
  = case coe v0 of
      C_HasUTxO'46'constructor_18503 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_2986 ::
  T_HasUTxO_2974 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2986 v0 = coe d_UTxOOf_2982 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2988 a0 = ()
data T_TxBody_2988
  = C_TxBody'46'constructor_19729 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_998]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) (Maybe Integer) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_3030 ::
  T_TxBody_2988 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3030 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_3032 ::
  T_TxBody_2988 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3032 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_3034 ::
  T_TxBody_2988 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3034 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_3036 :: T_TxBody_2988 -> Integer
d_txfee_3036 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_3038 :: T_TxBody_2988 -> AgdaAny
d_mint_3038 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_3040 ::
  T_TxBody_2988 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3040 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_3042 ::
  T_TxBody_2988 -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_3042 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_3044 ::
  T_TxBody_2988 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3044 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_3046 ::
  T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_txvote_3046 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_3048 ::
  T_TxBody_2988 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txprop_3048 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_3050 :: T_TxBody_2988 -> Integer
d_txdonation_3050 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_3052 ::
  T_TxBody_2988 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3052 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3054 :: T_TxBody_2988 -> Maybe AgdaAny
d_txADhash_3054 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3056 :: T_TxBody_2988 -> Maybe AgdaAny
d_txNetworkId_3056 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.curTreasury
d_curTreasury_3058 :: T_TxBody_2988 -> Maybe Integer
d_curTreasury_3058 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_3060 :: T_TxBody_2988 -> Integer
d_txsize_3060 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_3062 :: T_TxBody_2988 -> AgdaAny
d_txid_3062 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_3064 ::
  T_TxBody_2988 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3064 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_3066 :: T_TxBody_2988 -> [AgdaAny]
d_reqSigHash_3066 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_3068 :: T_TxBody_2988 -> Maybe AgdaAny
d_scriptIntHash_3068 v0
  = case coe v0 of
      C_TxBody'46'constructor_19729 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3074 a0 a1 a2 = ()
newtype T_HasTxBody_3074
  = C_HasTxBody'46'constructor_20215 (AgdaAny -> T_TxBody_2988)
-- Ledger.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3082 :: T_HasTxBody_3074 -> AgdaAny -> T_TxBody_2988
d_TxBodyOf_3082 v0
  = case coe v0 of
      C_HasTxBody'46'constructor_20215 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3086 :: T_HasTxBody_3074 -> AgdaAny -> T_TxBody_2988
d_TxBodyOf_3086 v0 = coe d_TxBodyOf_3082 (coe v0)
-- Ledger.Transaction.TransactionStructure.Hastxfee
d_Hastxfee_3092 a0 a1 a2 = ()
newtype T_Hastxfee_3092
  = C_Hastxfee'46'constructor_20261 (AgdaAny -> Integer)
-- Ledger.Transaction.TransactionStructure.Hastxfee.txfeeOf
d_txfeeOf_3100 :: T_Hastxfee_3092 -> AgdaAny -> Integer
d_txfeeOf_3100 v0
  = case coe v0 of
      C_Hastxfee'46'constructor_20261 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.txfeeOf
d_txfeeOf_3104 :: T_Hastxfee_3092 -> AgdaAny -> Integer
d_txfeeOf_3104 v0 = coe d_txfeeOf_3100 (coe v0)
-- Ledger.Transaction.TransactionStructure.Hastxcerts
d_Hastxcerts_3110 a0 a1 a2 = ()
newtype T_Hastxcerts_3110
  = C_Hastxcerts'46'constructor_20327 (AgdaAny ->
                                       [MAlonzo.Code.Ledger.Certs.T_DCert_998])
-- Ledger.Transaction.TransactionStructure.Hastxcerts.txcertsOf
d_txcertsOf_3118 ::
  T_Hastxcerts_3110 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcertsOf_3118 v0
  = case coe v0 of
      C_Hastxcerts'46'constructor_20327 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.txcertsOf
d_txcertsOf_3122 ::
  T_Hastxcerts_3110 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcertsOf_3122 v0 = coe d_txcertsOf_3118 (coe v0)
-- Ledger.Transaction.TransactionStructure.Hastxprop
d_Hastxprop_3128 a0 a1 a2 = ()
newtype T_Hastxprop_3128
  = C_Hastxprop'46'constructor_20393 (AgdaAny ->
                                      [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830])
-- Ledger.Transaction.TransactionStructure.Hastxprop.txpropOf
d_txpropOf_3136 ::
  T_Hastxprop_3128 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txpropOf_3136 v0
  = case coe v0 of
      C_Hastxprop'46'constructor_20393 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.txpropOf
d_txpropOf_3140 ::
  T_Hastxprop_3128 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txpropOf_3140 v0 = coe d_txpropOf_3136 (coe v0)
-- Ledger.Transaction.TransactionStructure.Hastxid
d_Hastxid_3146 a0 a1 a2 = ()
newtype T_Hastxid_3146
  = C_Hastxid'46'constructor_20439 (AgdaAny -> AgdaAny)
-- Ledger.Transaction.TransactionStructure.Hastxid.txidOf
d_txidOf_3154 :: T_Hastxid_3146 -> AgdaAny -> AgdaAny
d_txidOf_3154 v0
  = case coe v0 of
      C_Hastxid'46'constructor_20439 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.txidOf
d_txidOf_3158 :: T_Hastxid_3146 -> AgdaAny -> AgdaAny
d_txidOf_3158 v0 = coe d_txidOf_3154 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3160 a0 = ()
data T_TxWitnesses_3160
  = C_TxWitnesses'46'constructor_20551 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_3170 ::
  T_TxWitnesses_3160 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3170 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3172 ::
  T_TxWitnesses_3160 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3172 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_3174 ::
  T_TxWitnesses_3160 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_3174 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_3176 ::
  T_TxWitnesses_3160 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3176 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_20551 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3178 ::
  T_TransactionStructure_20 -> T_TxWitnesses_3160 -> [AgdaAny]
d_scriptsP1_3178 ~v0 v1 = du_scriptsP1_3178 v1
du_scriptsP1_3178 :: T_TxWitnesses_3160 -> [AgdaAny]
du_scriptsP1_3178 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3172 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_3180 a0 = ()
data T_Tx_3180
  = C_Tx'46'constructor_20743 T_TxBody_2988 T_TxWitnesses_3160 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_3190 :: T_Tx_3180 -> T_TxBody_2988
d_body_3190 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_3192 :: T_Tx_3180 -> T_TxWitnesses_3160
d_wits_3192 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_3194 :: T_Tx_3180 -> Bool
d_isValid_3194 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_3196 :: T_Tx_3180 -> Maybe AgdaAny
d_txAD_3196 v0
  = case coe v0 of
      C_Tx'46'constructor_20743 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3198 ::
  T_TransactionStructure_20 -> T_HasTxBody_3074
d_HasTxBody'45'Tx_3198 ~v0 = du_HasTxBody'45'Tx_3198
du_HasTxBody'45'Tx_3198 :: T_HasTxBody_3074
du_HasTxBody'45'Tx_3198
  = coe
      C_HasTxBody'46'constructor_20215
      (coe (\ v0 -> d_body_3190 (coe v0)))
-- Ledger.Transaction.TransactionStructure.Hastxfee-Tx
d_Hastxfee'45'Tx_3200 ::
  T_TransactionStructure_20 -> T_Hastxfee_3092
d_Hastxfee'45'Tx_3200 ~v0 = du_Hastxfee'45'Tx_3200
du_Hastxfee'45'Tx_3200 :: T_Hastxfee_3092
du_Hastxfee'45'Tx_3200
  = coe
      C_Hastxfee'46'constructor_20261
      (coe (\ v0 -> d_txfee_3036 (coe d_body_3190 (coe v0))))
-- Ledger.Transaction.TransactionStructure.Hastxcerts-Tx
d_Hastxcerts'45'Tx_3202 ::
  T_TransactionStructure_20 -> T_Hastxcerts_3110
d_Hastxcerts'45'Tx_3202 ~v0 = du_Hastxcerts'45'Tx_3202
du_Hastxcerts'45'Tx_3202 :: T_Hastxcerts_3110
du_Hastxcerts'45'Tx_3202
  = coe
      C_Hastxcerts'46'constructor_20327
      (coe (\ v0 -> d_txcerts_3042 (coe d_body_3190 (coe v0))))
-- Ledger.Transaction.TransactionStructure.Hastxprop-Tx
d_Hastxprop'45'Tx_3204 ::
  T_TransactionStructure_20 -> T_Hastxprop_3128
d_Hastxprop'45'Tx_3204 ~v0 = du_Hastxprop'45'Tx_3204
du_Hastxprop'45'Tx_3204 :: T_Hastxprop_3128
du_Hastxprop'45'Tx_3204
  = coe
      C_Hastxprop'46'constructor_20393
      (coe (\ v0 -> d_txprop_3048 (coe d_body_3190 (coe v0))))
-- Ledger.Transaction.TransactionStructure.HasWdrls-TxBody
d_HasWdrls'45'TxBody_3206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
d_HasWdrls'45'TxBody_3206 ~v0 = du_HasWdrls'45'TxBody_3206
du_HasWdrls'45'TxBody_3206 ::
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
du_HasWdrls'45'TxBody_3206
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasWdrls'46'constructor_18079
      (coe (\ v0 -> d_txwdrls_3044 (coe v0)))
-- Ledger.Transaction.TransactionStructure.HasWdrls-Tx
d_HasWdrls'45'Tx_3208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
d_HasWdrls'45'Tx_3208 ~v0 = du_HasWdrls'45'Tx_3208
du_HasWdrls'45'Tx_3208 :: MAlonzo.Code.Ledger.Certs.T_HasWdrls_1060
du_HasWdrls'45'Tx_3208
  = coe
      MAlonzo.Code.Ledger.Certs.C_HasWdrls'46'constructor_18079
      (coe (\ v0 -> d_txwdrls_3044 (coe d_body_3190 (coe v0))))
-- Ledger.Transaction.TransactionStructure.Hastxid-Tx
d_Hastxid'45'Tx_3210 :: T_TransactionStructure_20 -> T_Hastxid_3146
d_Hastxid'45'Tx_3210 ~v0 = du_Hastxid'45'Tx_3210
du_Hastxid'45'Tx_3210 :: T_Hastxid_3146
du_Hastxid'45'Tx_3210
  = coe
      C_Hastxid'46'constructor_20439
      (coe (\ v0 -> d_txid_3062 (coe d_body_3190 (coe v0))))
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_3212 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3212 ~v0 v1 = du_getValue_3212 v1
du_getValue_3212 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_3212 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_3216 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_3216 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_3218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3218 v0 v1
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
                                          (d_scriptStructure_1874 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_426
                                                (coe d_scriptStructure_1874 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_448
                                                (coe d_scriptStructure_1874 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_3228 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3228 ~v0 v1 = du_getValue'688'_3228 v1
du_getValue'688'_3228 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_3228 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_3232 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_3232 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1244 (coe v0))
               (coe d_DecEq'45'Ix_1242 (coe v0))))
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
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_188
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_152
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_3238 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3238 ~v0 v1 = du_scriptOuts_3238 v1
du_scriptOuts_3238 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_3238 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1168
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_202
           (coe
              MAlonzo.Code.Ledger.Address.du_payCred_152
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_3246 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_3246 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1244 (coe v0))
               (coe d_DecEq'45'Ix_1242 (coe v0))))
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
               (coe du_scriptOuts_3238 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_3252 ::
  T_TransactionStructure_20 ->
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3252 v0 v1 v2
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
                  (coe d_DecEq'45'TxId_1244 (coe v0))
                  (coe d_DecEq'45'Ix_1242 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe d_txins_3030 (coe d_body_3190 (coe v1)))
               (coe d_refInputs_3032 (coe d_body_3190 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_3264 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_3264 v0 ~v1 = du_collateral_3264 v0
du_collateral_3264 ::
  T_Tx_3180 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_3264 v0
  = coe d_collateral_3064 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.curTreasury
d_curTreasury_3266 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_curTreasury_3266 v0 ~v1 = du_curTreasury_3266 v0
du_curTreasury_3266 :: T_Tx_3180 -> Maybe Integer
du_curTreasury_3266 v0
  = coe d_curTreasury_3058 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_3268 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_3268 v0 ~v1 = du_mint_3268 v0
du_mint_3268 :: T_Tx_3180 -> AgdaAny
du_mint_3268 v0 = coe d_mint_3038 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_3270 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3270 v0 ~v1 = du_refInputs_3270 v0
du_refInputs_3270 ::
  T_Tx_3180 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3270 v0
  = coe d_refInputs_3032 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_3272 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_3272 v0 ~v1 = du_reqSigHash_3272 v0
du_reqSigHash_3272 :: T_Tx_3180 -> [AgdaAny]
du_reqSigHash_3272 v0
  = coe d_reqSigHash_3066 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_3274 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_3274 v0 ~v1 = du_scriptIntHash_3274 v0
du_scriptIntHash_3274 :: T_Tx_3180 -> Maybe AgdaAny
du_scriptIntHash_3274 v0
  = coe d_scriptIntHash_3068 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_3276 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_3276 v0 ~v1 = du_txADhash_3276 v0
du_txADhash_3276 :: T_Tx_3180 -> Maybe AgdaAny
du_txADhash_3276 v0
  = coe d_txADhash_3054 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txNetworkId
d_txNetworkId_3278 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txNetworkId_3278 v0 ~v1 = du_txNetworkId_3278 v0
du_txNetworkId_3278 :: T_Tx_3180 -> Maybe AgdaAny
du_txNetworkId_3278 v0
  = coe d_txNetworkId_3056 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_3280 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_998]
d_txcerts_3280 v0 ~v1 = du_txcerts_3280 v0
du_txcerts_3280 ::
  T_Tx_3180 -> [MAlonzo.Code.Ledger.Certs.T_DCert_998]
du_txcerts_3280 v0 = coe d_txcerts_3042 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_3282 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_3282 v0 ~v1 = du_txdonation_3282 v0
du_txdonation_3282 :: T_Tx_3180 -> Integer
du_txdonation_3282 v0
  = coe d_txdonation_3050 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_3284 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_3284 v0 ~v1 = du_txfee_3284 v0
du_txfee_3284 :: T_Tx_3180 -> Integer
du_txfee_3284 v0 = coe d_txfee_3036 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_3286 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_3286 v0 ~v1 = du_txid_3286 v0
du_txid_3286 :: T_Tx_3180 -> AgdaAny
du_txid_3286 v0 = coe d_txid_3062 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_3288 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_3288 v0 ~v1 = du_txins_3288 v0
du_txins_3288 ::
  T_Tx_3180 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_3288 v0 = coe d_txins_3030 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_3290 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_3290 v0 ~v1 = du_txouts_3290 v0
du_txouts_3290 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_3290 v0 = coe d_txouts_3034 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_3292 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
d_txprop_3292 v0 ~v1 = du_txprop_3292 v0
du_txprop_3292 ::
  T_Tx_3180 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_830]
du_txprop_3292 v0 = coe d_txprop_3048 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_3294 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_3294 v0 ~v1 = du_txsize_3294 v0
du_txsize_3294 :: T_Tx_3180 -> Integer
du_txsize_3294 v0 = coe d_txsize_3060 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_3296 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_3296 v0 ~v1 = du_txup_3296 v0
du_txup_3296 ::
  T_Tx_3180 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_3296 v0 = coe d_txup_3052 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_3298 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_3298 v0 ~v1 = du_txvldt_3298 v0
du_txvldt_3298 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_3298 v0 = coe d_txvldt_3040 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_3300 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
d_txvote_3300 v0 ~v1 = du_txvote_3300 v0
du_txvote_3300 ::
  T_Tx_3180 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_812]
du_txvote_3300 v0 = coe d_txvote_3046 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_3302 ::
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_3302 v0 ~v1 = du_txwdrls_3302 v0
du_txwdrls_3302 ::
  T_Tx_3180 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_3302 v0 = coe d_txwdrls_3044 (coe d_body_3190 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_3304 ::
  T_TransactionStructure_20 ->
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3304 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe d_scripts_3172 (coe d_wits_3192 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe d_refScripts_3252 (coe v0) (coe v1) (coe v2)))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3314 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3314 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__42
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe d_crypto_1288 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_550
               (coe du_m_3326 (coe v0) (coe v2) (coe v3)))))
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
                 (coe du_m_3326 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_3326 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_3326 v0 ~v1 v2 v3 = du_m_3326 v0 v2 v3
du_m_3326 ::
  T_TransactionStructure_20 ->
  T_Tx_3180 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_3326 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_70
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe d_crypto_1288 (coe v0)))
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
                  MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_446
                  (d_scriptStructure_1874 (coe v0)) erased erased erased
                  (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                     (coe
                        MAlonzo.Code.Ledger.Script.d_p1s_426
                        (coe d_scriptStructure_1874 (coe v0))))
                  (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                     (coe
                        MAlonzo.Code.Ledger.Script.d_ps_448
                        (coe d_scriptStructure_1874 (coe v0))))))
            (coe (\ v3 -> v3)))
         (d_txscripts_3304 (coe v0) (coe v1) (coe v2)))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_3328 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3328 = erased
-- Ledger.Transaction.TransactionStructure.isP2Script?
d_isP2Script'63'_3332 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3332 ~v0 v1 = du_isP2Script'63'_3332 v1
du_isP2Script'63'_3332 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3332 v0
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
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3338 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3338 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_196
              (d_tokenAlgebra_2340 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
