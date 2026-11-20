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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction where

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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Dijkstra.Specification.Transaction.TxLevel
d_TxLevel_8 = ()
data T_TxLevel_8 = C_TxLevelTop_10 | C_TxLevelSub_12
-- Ledger.Dijkstra.Specification.Transaction.InLevel
d_InLevel_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_TxLevel_8 -> AgdaAny -> AgdaAny -> AgdaAny
d_InLevel_18 ~v0 ~v1 v2 v3 v4 = du_InLevel_18 v2 v3 v4
du_InLevel_18 :: T_TxLevel_8 -> AgdaAny -> AgdaAny -> AgdaAny
du_InLevel_18 v0 v1 v2
  = case coe v0 of
      C_TxLevelTop_10 -> coe v1
      C_TxLevelSub_12 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.InTopLevel
d_InTopLevel_24 :: T_TxLevel_8 -> () -> ()
d_InTopLevel_24 = erased
-- Ledger.Dijkstra.Specification.Transaction.InSubLevel
d_InSubLevel_30 :: T_TxLevel_8 -> () -> ()
d_InSubLevel_30 = erased
-- Ledger.Dijkstra.Specification.Transaction.DecEq-TxLevel
d_DecEq'45'TxLevel_36 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxLevel_36
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_TxLevelTop_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_TxLevelTop_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TxLevelSub_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TxLevelSub_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_TxLevelTop_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TxLevelSub_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Transaction.Tag
d_Tag_40 = ()
data T_Tag_40
  = C_Spend_42 | C_Mint_44 | C_Cert_46 | C_Reward_48 | C_Vote_50 |
    C_Propose_52 | C_Guard_54
-- Ledger.Dijkstra.Specification.Transaction.DecEq-Tag
d_DecEq'45'Tag_56 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_56
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_42
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Mint_44
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Cert_46
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Reward_48
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Vote_50
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Propose_52
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Guard_54
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_42
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_44
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_46
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Reward_48
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_50
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_52
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Guard_54
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure
d_TransactionStructure_58 = ()
data T_TransactionStructure_58
  = C_constructor_4830 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
                       (AgdaAny -> AgdaAny)
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
-- Ledger.Dijkstra.Specification.Transaction._.Network
d_Network_102 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Network_102 = erased
-- Ledger.Dijkstra.Specification.Transaction._.THash
d_THash_146 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_THash_146 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptHash
d_ScriptHash_152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptHash_152 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Ser
d_Ser_154 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Ser_154 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_184 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__194 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__194 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value
d_Value_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_212 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin
d_coin_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_222 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_224 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.inject
d_inject_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.policies
d_policies_230 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.size
d_size_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure
d_ScriptStructure_590 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Datum
d_Datum_764 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Datum_764 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Redeemer
d_Redeemer_822 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Redeemer_822 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.p1s
d_p1s_862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.ps
d_ps_864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.Datum
d_Datum_896 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Datum_896 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Redeemer
d_Redeemer_954 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Redeemer_954 = erased
-- Ledger.Dijkstra.Specification.Transaction._.GovParams
d_GovParams_1036 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1926
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.ppUpd
d_ppUpd_1132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860
d_ppUpd_1132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Ix
d_Ix_1418 :: T_TransactionStructure_58 -> ()
d_Ix_1418 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxId
d_TxId_1420 :: T_TransactionStructure_58 -> ()
d_TxId_1420 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1422 :: T_TransactionStructure_58 -> ()
d_AuxiliaryData_1422 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1424 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1424 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1426 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_1426 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1428 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1428 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.leiosCryptoStructure
d_leiosCryptoStructure_1430 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1430 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1432 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1432 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1434 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1434 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1436 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1436 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1440 :: T_TransactionStructure_58 -> ()
d_THash_1440 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1442 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1424 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1444 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1424 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1446 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1446 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1424 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1448 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1424 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1452 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1454 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_1456 :: T_TransactionStructure_58 -> Integer
d_MaxKESEvo'7580'_1456 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1458 ::
  T_TransactionStructure_58 -> Integer
d_MaxLovelaceSupply'7580'_1458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Network
d_Network_1460 :: T_TransactionStructure_58 -> ()
d_Network_1460 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1462 :: T_TransactionStructure_58 -> AgdaAny
d_NetworkId_1462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1464 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_1466 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_1466 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1468 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1468 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1470 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1470 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1472 :: T_TransactionStructure_58 -> Integer
d_Quorum_1472 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1474 ::
  T_TransactionStructure_58 -> Integer
d_RandomnessStabilisationWindow'7580'_1474 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1476 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1476 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotLengthᶜ
d_SlotLength'7580'_1478 :: T_TransactionStructure_58 -> Integer
d_SlotLength'7580'_1478 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1480 :: T_TransactionStructure_58 -> Integer
d_SlotsPerEpoch'7580'_1480 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_1482 ::
  T_TransactionStructure_58 -> Integer
d_SlotsPerKESPeriod'7580'_1482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1484 ::
  T_TransactionStructure_58 -> Integer
d_StabilityWindow'7580'_1484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1486 ::
  T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1486 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1488 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1488 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
      (coe d_globalConstants_1426 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1492 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1492 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1494 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1494 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d_cryptoStructure_1428 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1496 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1496 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1498 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1498 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1500 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1500 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-VRF
d_DecEq'45'VRF_1502 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1502 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d_cryptoStructure_1428 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1504 :: T_TransactionStructure_58 -> ()
d_THash_1504 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1506 :: T_TransactionStructure_58 -> ()
d_KeyPair_1506 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1508 :: T_TransactionStructure_58 -> ()
d_SKey_1508 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1510 :: T_TransactionStructure_58 -> ()
d_ScriptHash_1510 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1512 :: T_TransactionStructure_58 -> ()
d_Ser_1512 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1514 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d_cryptoStructure_1428 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1516 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1516 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1518 :: T_TransactionStructure_58 -> ()
d_Sig_1518 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1520 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1520 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1522 :: T_TransactionStructure_58 -> ()
d_VKey_1522 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VRF
d_VRF_1524 :: T_TransactionStructure_58 -> ()
d_VRF_1524 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1526 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1526 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1528 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1528 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1530 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1530 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.khs
d_khs_1532 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d_cryptoStructure_1428 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1534 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1534 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d_cryptoStructure_1428 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sign
d_sign_1536 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1536 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1540 :: T_TransactionStructure_58 -> ()
d_MemoryEstimate_1540 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1542 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1548 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1550 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1552 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1558 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1562 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1566 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1570 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1574 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1574 ~v0 = du_addValue_1574
du_addValue_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1578 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1578 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1580 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1582 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1582 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1586 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1586 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1588 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1590 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1590 v0
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
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1594 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1594 ~v0 = du_sum'7515'_1594
du_sum'7515'_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1596 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1600 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1600 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1602 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1602 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1604 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1604 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1606 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1606 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1608 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1608 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1612 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1612 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1614 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1614 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1616 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1616 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1618 ~v0 = du_isMagmaIsomorphism_1618
du_isMagmaIsomorphism_1618 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1618 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1620 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1620 v2
du_isMagmaMonomorphism_1620 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1620 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1622 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1624 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1626 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1628 ~v0 ~v1 v2 = du_isRelIsomorphism_1628 v2
du_isRelIsomorphism_1628 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1628 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1630 ~v0 ~v1 v2 = du_isRelMonomorphism_1630 v2
du_isRelMonomorphism_1630 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1630 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1632 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1632 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1634 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1636 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1640 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1640 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1642 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1644 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1644 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1646 ~v0 = du_isMagmaMonomorphism_1646
du_isMagmaMonomorphism_1646 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1646 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1648 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1652 ~v0 ~v1 v2 = du_isRelMonomorphism_1652 v2
du_isRelMonomorphism_1652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1652 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1654 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1656 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1660 :: T_TransactionStructure_58 -> ()
d_Addr_1660 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AttrSizeOf
d_AttrSizeOf_1664 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1666 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1670 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1674 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1676 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1678 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1678 ~v0 = du_Dec'45'isScript_1678
du_Dec'45'isScript_1678 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1678
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_300
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1680 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1680 ~v0 = du_Dec'45'isVKey_1680
du_Dec'45'isVKey_1680 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1680
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1682 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_336
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe d_globalConstants_1426 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1428 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1428 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1684 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_338
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe d_globalConstants_1426 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1428 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1686 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1428 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1428 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1688 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1688 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe d_globalConstants_1426 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1428 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1428 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize
d_HasAttrSize_1690 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1694 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1694 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1694
du_HasAttrSize'45'BootstrapAddr_1694 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1694
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1696 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1700 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1700 ~v0
  = du_HasCredential'45'RewardAddress_1700
du_HasCredential'45'RewardAddress_1700 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1700
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1702 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1706 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1710 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1710 ~v0
  = du_HasNetworkId'45'BaseAddr_1710
du_HasNetworkId'45'BaseAddr_1710 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1710
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1712 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1712 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1712
du_HasNetworkId'45'BootstrapAddr_1712 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1712
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1714 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1714 ~v0
  = du_HasNetworkId'45'RewardAddress_1714
du_HasNetworkId'45'RewardAddress_1714 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1714
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress
d_HasRewardAddress_1716 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals
d_HasWithdrawals_1720 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1724 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1726 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1726 ~v0 = du_IsBootstrapAddr'63'_1726
du_IsBootstrapAddr'63'_1726 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1726
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_314
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj
d_IsKeyHashObj_1730 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1732 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1732 ~v0 = du_IsKeyHashObj'63'_1732
du_IsKeyHashObj'63'_1732 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1732
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1736 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1738 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1738 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress
d_RewardAddress_1740 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddressOf
d_RewardAddressOf_1744 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1744 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1748 :: T_TransactionStructure_58 -> ()
d_ScriptAddr_1748 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1750 :: T_TransactionStructure_58 -> ()
d_ScriptBaseAddr_1750 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1754 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1754 ~v0 = du_Show'45'Credential_1754
du_Show'45'Credential_1754 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1754 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_352
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1756 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1756 ~v0
  = du_Show'45'Credential'215'Coin_1756
du_Show'45'Credential'215'Coin_1756 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1756 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_356
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1758 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1758 ~v0 = du_Show'45'RewardAddress_1758
du_Show'45'RewardAddress_1758 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1758
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_354
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1760 :: T_TransactionStructure_58 -> ()
d_VKeyAddr_1760 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1762 :: T_TransactionStructure_58 -> ()
d_VKeyBaseAddr_1762 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Withdrawals
d_Withdrawals_1766 :: T_TransactionStructure_58 -> ()
d_Withdrawals_1766 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.WithdrawalsOf
d_WithdrawalsOf_1768 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1770 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1770 ~v0 = du_getScriptHash_1770
du_getScriptHash_1770 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1770
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_332
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1772 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1772 ~v0 = du_isBootstrapAddr_1772
du_isBootstrapAddr_1772 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1772
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_282
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1774 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1774 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1776 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1776 ~v0 = du_isKeyHashObj_1776
du_isKeyHashObj_1776 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1776
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1778 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1778 ~v0 = du_isKeyHashObj'7495'_1778
du_isKeyHashObj'7495'_1778 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1778
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1780 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1782 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1782 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1784 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1784 ~v0 = du_isScriptObj_1784
du_isScriptObj_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1784
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1786 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1786 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1788 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1790 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1790 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.netId
d_netId_1792 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1792 ~v0 = du_netId_1792
du_netId_1792 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1792
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1794 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1794 ~v0 = du_payCred_1794
du_payCred_1794 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1794
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_254
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1796 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1796 ~v0 = du_stakeCred_1796
du_stakeCred_1796 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1796
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_256
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1800 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1802 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1802 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1804 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1804 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1808 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1810 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1810 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1812 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_pay_1812 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1822 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1822 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1826 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1826 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1830 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1834 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1834 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1838 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1838 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1842 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1842 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.net
d_net_1854 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1854 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.stake
d_stake_1856 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1856 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1868 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1870 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1870 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1872 ::
  T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1872 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1874 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1874 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1876 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1876 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1878 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1878 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1880 :: T_TransactionStructure_58 -> ()
d_Epoch_1880 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1882 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1884 ::
  T_TransactionStructure_58 -> AgdaAny
d_RandomnessStabilisationWindow_1884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1886 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1888 :: T_TransactionStructure_58 -> ()
d_Slot_1888 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1890 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1890 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1892 :: T_TransactionStructure_58 -> AgdaAny
d_StabilityWindow_1892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1894 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1896 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1896 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.e<sucᵉ
d_e'60'suc'7497'_1898 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_1898 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1900 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_epoch_1900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1902 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_firstSlot_1902 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1904 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1904 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.slotsFromDuration
d_slotsFromDuration_1906 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny
d_slotsFromDuration_1906 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1908 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_suc'7497'_1908 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1910 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_ℕtoEpoch_1910 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≤-predᵉ
d_'8804''45'pred'7497'_1912 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
      (coe d_epochStructure_1432 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_1916 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_324 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_1916 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (let v2 = d_epochStructure_1432 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                    (coe d_globalConstants_1426 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_394
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-NativeScript
d_DecEq'45'NativeScript_1918 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_1918 v0
  = let v1 = d_cryptoStructure_1428 (coe v0) in
    coe
      (let v2 = d_epochStructure_1432 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                    (coe d_globalConstants_1426 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_340
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.EvalNativeScript
d_EvalNativeScript_1920 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NativeScript
d_NativeScript_1922 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1924 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusLanguage
d_PlutusLanguage_1928 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1930 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1948 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  ()
d_P1Script_2014 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2016 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure._≤ᵉᵘ_
d__'8804''7497''7512'__2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__2030 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.0ᵉᵘ
d_0'7497''7512'_2032 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_0'7497''7512'_2032 ~v0 = du_0'7497''7512'_2032
du_0'7497''7512'_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_0'7497''7512'_2032
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_CostModel_2034 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_T_2036 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_THash_2038 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_2042 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Datum_2042 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2056 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2058 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_ExUnits_2062 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_2064 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_2064 ~v0 = du_HasAdd'45'ExUnits_2064
du_HasAdd'45'ExUnits_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_HasAdd'45'ExUnits_2064
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_LangDepView_2068 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Language_2070 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_PlutusScript_2072 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_2074 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV1_2074 ~v0 = du_PlutusV1_2074
du_PlutusV1_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV1_2074
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_2076 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV2_2076 ~v0 = du_PlutusV2_2076
du_PlutusV2_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV2_2076
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_2078 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV3_2078 ~v0 = du_PlutusV3_2078
du_PlutusV3_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV3_2078
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV4
d_PlutusV4_2080 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
d_PlutusV4_2080 ~v0 = du_PlutusV4_2080
du_PlutusV4_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny
du_PlutusV4_2080
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Prices_2082 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_2084 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  ()
d_Redeemer_2084 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Language
d_Show'45'Language_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_2094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2094 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2096 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2098 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_2102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> AgdaAny
d_language_2102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_2104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2104 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure._≤ᵉᵘ_
d__'8804''7497''7512'__2110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__2110 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.0ᵉᵘ
d_0'7497''7512'_2112 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_0'7497''7512'_2112 ~v0 v1 = du_0'7497''7512'_2112 v1
du_0'7497''7512'_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_0'7497''7512'_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_CostModel_2114 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_T_2116 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_THash_2118 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_2122 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Datum_2122 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2138 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2138 ~v0
  = du_DecEq'45'LanguageCostModels_2138
du_DecEq'45'LanguageCostModels_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2138
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2142 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2144 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_ExUnits_2148 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.HasAdd-ExUnits
d_HasAdd'45'ExUnits_2150 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_2150 ~v0 v1 = du_HasAdd'45'ExUnits_2150 v1
du_HasAdd'45'ExUnits_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_HasAdd'45'ExUnits_2150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2156 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2156 ~v0 = du_Hashable'45'Script_2156
du_Hashable'45'Script_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2156
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_662
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_LangDepView_2158 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Language_2160 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2162 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_P1Script_2166 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_2168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_PlutusScript_2168 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_2170 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV1_2170 ~v0 v1 = du_PlutusV1_2170 v1
du_PlutusV1_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV1_2170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_2172 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV2_2172 ~v0 v1 = du_PlutusV2_2172 v1
du_PlutusV2_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV2_2172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_2174 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV3_2174 ~v0 v1 = du_PlutusV3_2174 v1
du_PlutusV3_2174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV3_2174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV4
d_PlutusV4_2176 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
d_PlutusV4_2176 ~v0 v1 = du_PlutusV4_2176 v1
du_PlutusV4_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny
du_PlutusV4_2176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Prices_2178 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_2180 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Redeemer_2180 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_2182 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  ()
d_Script_2182 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Language
d_Show'45'Language_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2190 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2190 ~v0
  = du_Show'45'LanguageCostModels_2190
du_Show'45'LanguageCostModels_2190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_704
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_2194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2194 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_2196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2196 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_2204 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2204 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_2206 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2206 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_2208 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2208 ~v0 = du_isP1Script'63'_2208
du_isP1Script'63'_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2208 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_668
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_2210 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2210 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_2212 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2212 ~v0 = du_isP2Script'63'_2212
du_isP2Script'63'_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2212 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_682
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_2214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> AgdaAny
d_language_2214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.languageCostModels
d_languageCostModels_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_2220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_2220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_2222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_2224 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2224 ~v0 = du_toP1Script_2224
du_toP1Script_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_676
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_2226 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2226 ~v0 = du_toP2Script_2226
du_toP2Script_2226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_688
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2228 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2230 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_2232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_2232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_2238 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_530
d_scriptStructure_2238 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≤ᵉᵘ_
d__'8804''7497''7512'__2242 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__2242 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.0ᵉᵘ
d_0'7497''7512'_2244 :: T_TransactionStructure_58 -> AgdaAny
d_0'7497''7512'_2244 v0
  = let v1 = d_scriptStructure_2238 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_0'7497''7512'_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_2246 :: T_TransactionStructure_58 -> ()
d_CostModel_2246 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T
d_T_2248 :: T_TransactionStructure_58 -> ()
d_T_2248 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_2250 :: T_TransactionStructure_58 -> ()
d_THash_2250 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_2252 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Datum
d_Datum_2254 :: T_TransactionStructure_58 -> ()
d_Datum_2254 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_2256 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2258 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_2260 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_2262 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_2264 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_2266 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_2268 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2270 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_698
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_2272 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2274 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2274 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe d_scriptStructure_2238 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2276 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2276 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe d_scriptStructure_2238 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2278 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_2280 :: T_TransactionStructure_58 -> ()
d_ExUnits_2280 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAdd-ExUnits
d_HasAdd'45'ExUnits_2282 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_HasAdd'45'ExUnits_2282 v0
  = let v1 = d_scriptStructure_2238 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_HasAdd'45'ExUnits_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_2284 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2286 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_2288 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_662
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_2290 :: T_TransactionStructure_58 -> ()
d_LangDepView_2290 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Language
d_Language_2292 :: T_TransactionStructure_58 -> ()
d_Language_2292 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels
d_LanguageCostModels_2294 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_2298 :: T_TransactionStructure_58 -> ()
d_P1Script_2298 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_2300 :: T_TransactionStructure_58 -> ()
d_PlutusScript_2300 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_2302 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV1_2302 v0
  = let v1 = d_scriptStructure_2238 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_2304 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV2_2304 v0
  = let v1 = d_scriptStructure_2238 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_494
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_2306 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV3_2306 v0
  = let v1 = d_scriptStructure_2238 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_496
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV4
d_PlutusV4_2308 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV4_2308 v0
  = let v1 = d_scriptStructure_2238 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_498
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Prices
d_Prices_2310 :: T_TransactionStructure_58 -> ()
d_Prices_2310 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_2312 :: T_TransactionStructure_58 -> ()
d_Redeemer_2312 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Script
d_Script_2314 :: T_TransactionStructure_58 -> ()
d_Script_2314 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_2316 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_2318 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Language
d_Show'45'Language_2320 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2322 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_704
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_2324 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2326 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2326 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe d_scriptStructure_2238 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2328 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2328 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                 (coe d_scriptStructure_2238 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_2330 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
            (coe d_scriptStructure_2238 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.fromPlutusLanguage
d_fromPlutusLanguage_2332 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_2334 ::
  T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_576
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_2336 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2336 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_2338 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2338 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_2340 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2340 ~v0 = du_isP1Script'63'_2340
du_isP1Script'63'_2340 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2340
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_668
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_2342 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2342 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_2344 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2344 ~v0 = du_isP2Script'63'_2344
du_isP2Script'63'_2344 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2344
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_682
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.language
d_language_2346 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_language_2346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.languageCostModels
d_languageCostModels_2348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.p1s
d_p1s_2352 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_324
d_p1s_2352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_556
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ps
d_ps_2354 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_362
d_ps_2354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_2356 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2356 ~v0 = du_toP1Script_2356
du_toP1Script_2356 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2356
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_676
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_2358 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2358 ~v0 = du_toP2Script_2358
du_toP2Script_2358 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_688
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2360 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2360 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2362 ::
  T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2362 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≤ᵉᵘ-Dec
d_'8804''7497''7512''45'Dec_2364 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8804''7497''7512''45'Dec_2364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
         (coe d_scriptStructure_2238 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_2368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountOf
d_AccountOf_2372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
d_AccountOf_2372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2374 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_766 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_774
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2380 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2380 ~v0
  = du_DecEq'45'DrepThresholds_2380
du_DecEq'45'DrepThresholds_2380 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2380
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_782
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2382 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2382 ~v0 = du_DecEq'45'PParamGroup_2382
du_DecEq'45'PParamGroup_2382 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2382
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_788
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2384 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_786
      (coe d_epochStructure_1432 (coe v0))
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2386 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2386 ~v0
  = du_DecEq'45'PoolThresholds_2386
du_DecEq'45'PoolThresholds_2386 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2386
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_784
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2388 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2394 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount
d_HasAccount_2400 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_2404 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2408 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2408 ~v0 = du_HasCast'45'Acnt_2408
du_HasCast'45'Acnt_2408 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2408
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_238
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2410 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_2414 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_2414 ~v0 = du_HasReserves'45'Acnt_2414
du_HasReserves'45'Acnt_2414 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
du_HasReserves'45'Acnt_2414
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_236
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2416 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_2416 ~v0 = du_HasTreasury'45'Acnt_2416
du_HasTreasury'45'Acnt_2416 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_2416
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_234
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2420 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2422 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2426 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_2430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_754
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2432 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2438 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2438 ~v0 = du_Show'45'DrepThresholds_2438
du_Show'45'DrepThresholds_2438 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_790
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2440 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_794
      (coe d_epochStructure_1432 (coe v0))
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2442 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2442 ~v0 = du_Show'45'PoolThresholds_2442
du_Show'45'PoolThresholds_2442 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2442
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_792
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2446 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2446 ~v0 = du_paramsWF'45'elim_2446
du_paramsWF'45'elim_2446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2446 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_722
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2448 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  ()
d_paramsWellFormed_2448 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2450 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  [Integer]
d_positivePParams_2450 ~v0 = du_positivePParams_2450
du_positivePParams_2450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  [Integer]
du_positivePParams_2450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_510
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202 ->
  Integer
d_reserves_2456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_210
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202 ->
  Integer
d_treasury_2458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_208
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_286
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_288
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_290
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_292
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1926
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  ()
d_UpdateT_2486 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_applyUpdate_2488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1876
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860
d_ppUpd_2490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1884
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2494 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  AgdaAny -> ()
d_ppdWellFormed_2494 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_240]
d_updateGroups_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1878
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount.AccountOf
d_AccountOf_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_202
d_AccountOf_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_766 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_774
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_746 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_PParamsOf_2508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_754
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_Emax_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_a_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_b_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_450 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_ccMaxTermLength_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_496
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_ccMinSize_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_494
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_coinsPerUTxOByte_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_collateralPercentage_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_486
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2540 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_506
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_488
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_drepActivity_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_504
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_drepDeposit_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_502
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252
d_drepThresholds_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_492
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_govActionDeposit_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_500
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_govActionLifetime_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_498
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_keyDeposit_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosCommitteeSize_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosDiffusionPeriod_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosHeaderPeriod_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_leiosMaxEBExUnits_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosMaxEBSize_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosMaxEBTxsSize_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_leiosVotingPeriod_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_maxBlockExUnits_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxBlockSize_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxCollateralInputs_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxHeaderSize_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxPledgeLeverage
d_maxPledgeLeverage_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_maxPledgeLeverage_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxPledgeLeverage_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxRefScriptSizePerBlock_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxRefScriptSizePerTx_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_maxTxExUnits_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxTxSize_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_maxValSize_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minPoolCost
d_minPoolCost_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_minPoolCost_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_minUTxOValue_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_nopt_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  Integer
d_poolDeposit_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296
d_poolThresholds_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_490
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_prices_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_474
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860 ->
  ()
d_UpdateT_2620 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_applyUpdate_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1876
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1884
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2626 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860 ->
  AgdaAny -> ()
d_ppdWellFormed_2626 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_240]
d_updateGroups_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1878
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2632 ::
  T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2632 ~v0 = du__'63''8599'__2632
du__'63''8599'__2632 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2632 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1602
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2634 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d__'8746''737''7580''7504'__2634 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_696
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_472
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe d_scriptStructure_2238 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_694
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2636 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1858
      (coe d_epochStructure_1432 (coe v0))
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2638 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2642 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_applyPParamsUpdate_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1656
      (coe d_scriptStructure_2238 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2644 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_240]
d_modifiedUpdateGroups_2644 ~v0 = du_modifiedUpdateGroups_2644
du_modifiedUpdateGroups_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_240]
du_modifiedUpdateGroups_2644
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1586
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2646 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
d_modifiesEconomicGroup_2646 ~v0 = du_modifiesEconomicGroup_2646
du_modifiesEconomicGroup_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
du_modifiesEconomicGroup_2646
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1194
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2648 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
d_modifiesGovernanceGroup_2648 ~v0
  = du_modifiesGovernanceGroup_2648
du_modifiesGovernanceGroup_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
du_modifiesGovernanceGroup_2648
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1390
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2650 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
d_modifiesNetworkGroup_2650 ~v0 = du_modifiesNetworkGroup_2650
du_modifiesNetworkGroup_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
du_modifiesNetworkGroup_2650
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_1096
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2652 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
d_modifiesSecurityGroup_2652 ~v0 = du_modifiesSecurityGroup_2652
du_modifiesSecurityGroup_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
du_modifiesSecurityGroup_2652
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1488
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2654 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
d_modifiesTechnicalGroup_2654 ~v0 = du_modifiesTechnicalGroup_2654
du_modifiesTechnicalGroup_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Bool
du_modifiesTechnicalGroup_2654
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1292
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2656 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  ()
d_paramsUpdateWellFormed_2656 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2658 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_892
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_894
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_896
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_898
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_940
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_932
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_964
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_982
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_972
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_974
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_976
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''60'_44
                    MAlonzo.Code.Data.Rational.Base.d_'189'_182
                    (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                       (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_920
               (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2660 ::
  T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2660 ~v0 = du_'8801''45'update_2660
du_'8801''45'update_2660 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2660 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1616
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe AgdaAny
d_Emax_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_960
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_a_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_926 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_956
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_b_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_928 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_ccMaxTermLength_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_982
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_ccMinSize_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_980
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_coinsPerUTxOByte_2676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_940
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_collateralPercentage_2678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_964
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdls_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_966
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe AgdaAny
d_drepActivity_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_978
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_drepDeposit_2684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_976
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_252
d_drepThresholds_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_968
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_govActionDeposit_2688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_974
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_govActionLifetime_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_972
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_keyDeposit_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_930
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosCommitteeSize_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_918
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosDiffusionPeriod_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_912
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosHeaderPeriod_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_908
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_922
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosMaxEBSize_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_914
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_916
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_924
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_920
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_leiosVotingPeriod_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_910
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe AgdaAny
d_maxBlockExUnits_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_904
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxBlockSize_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_892
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxCollateralInputs_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_900
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxHeaderSize_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_896
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxPledgeLeverage
d_maxPledgeLeverage_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe (Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28)
d_maxPledgeLeverage_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxPledgeLeverage_958
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_948
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_946
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe AgdaAny
d_maxTxExUnits_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_902
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxTxSize_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_894
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_maxValSize_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_898
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_944
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_minPoolCost_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_934
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_minUTxOValue_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_954
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_936
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_nopt_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_962
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe Integer
d_poolDeposit_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_932
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296
d_poolThresholds_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_970
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe AgdaAny
d_prices_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_942
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_906
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_952
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_950
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_798 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_938
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_310
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_312
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_314
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_316
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govParams
d_govParams_2768 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1894
d_govParams_2768 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2770 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2770 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2772 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_txidBytes_2772 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_2774 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_2774 v0
  = case coe v0 of
      C_constructor_4830 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2778 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1926
      (coe d_govParams_2768 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2780 :: T_TransactionStructure_58 -> ()
d_UpdateT_2780 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2782 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320
d_applyUpdate_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1876
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
         (coe d_govParams_2768 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2784 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1860
d_ppUpd_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
      (coe d_govParams_2768 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2786 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1884
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
         (coe d_govParams_2768 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2788 :: T_TransactionStructure_58 -> AgdaAny -> ()
d_ppdWellFormed_2788 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2790 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_240]
d_updateGroups_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1878
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1912
         (coe d_govParams_2768 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2794 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2794 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2770 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2796 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2796 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2798 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2798 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2800 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2802 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2804 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2808 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2812 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value
d_Value_2816 :: T_TransactionStructure_58 -> ()
d_Value_2816 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2818 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2820 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin
d_coin_2822 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_coin_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2824 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2824 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2826 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2828 ::
  T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2828 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.inject
d_inject_2830 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_inject_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2832 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2832 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2770 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.policies
d_policies_2834 ::
  T_TransactionStructure_58 -> AgdaAny -> [AgdaAny]
d_policies_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2836 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2836 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2770 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.size
d_size_2838 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_size_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2840 ::
  T_TransactionStructure_58 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2770 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ε
d_ε_2842 :: T_TransactionStructure_58 -> AgdaAny
d_ε_2842 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2770 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2846 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2848 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2852 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2854 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2858 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2860 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2862 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2864 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2864 ~v0 = du_isMagmaIsomorphism_2864
du_isMagmaIsomorphism_2864 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2864 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2866 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2866 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2866 v2
du_isMagmaMonomorphism_2866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2866 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2868 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2870 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2872 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2872 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2874 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2874 ~v0 ~v1 v2 = du_isRelIsomorphism_2874 v2
du_isRelIsomorphism_2874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2874 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2876 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2876 ~v0 ~v1 v2 = du_isRelMonomorphism_2876 v2
du_isRelMonomorphism_2876 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2876 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_2878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2878 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2880 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2882 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2886 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2886 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2888 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2892 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2892 ~v0 = du_isMagmaMonomorphism_2892
du_isMagmaMonomorphism_2892 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2892 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2894 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2896 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2898 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2898 ~v0 ~v1 v2 = du_isRelMonomorphism_2898 v2
du_isRelMonomorphism_2898 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2898 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2900 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2902 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2904 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.C_constructor_1692
      (d_DecEq'45'TxId_1436 (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe d_adHashingScheme_1424 (coe v0)))
      (d_cryptoStructure_1428 (coe v0))
      (d_leiosCryptoStructure_1430 (coe v0))
      (d_epochStructure_1432 (coe v0)) (d_globalConstants_1426 (coe v0))
      (d_scriptStructure_2238 (coe v0)) (d_govParams_2768 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2908 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  Bool
d_'61''61''45'GovAction_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1528
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2910 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1510
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2912 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  Bool
d_'61''61''45'GovProposal_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1562
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_2914 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2914 ~v0 = du_'61''61''45'Set_2914
du_'61''61''45'Set_2914 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2914 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1498
      v1 v2 v3
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2916 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1308 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012
d_AnchorOf_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1316
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DReps
d_DReps_2928 :: T_TransactionStructure_58 -> ()
d_DReps_2928 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1296
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2932 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1492
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2934 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2934 ~v0 = du_DecEq'45'GovActionType_2934
du_DecEq'45'GovActionType_2934 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2934
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1382
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2936 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2936 ~v0 = du_DecEq'45'GovRole_2936
du_DecEq'45'GovRole_2936 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2936
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1384
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2938 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1390
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2940 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1560
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2942 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1388
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2944 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2944 ~v0 = du_DecEq'45'Vote_2944
du_DecEq'45'Vote_2944 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1386
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1328 ->
  AgdaAny -> Integer
d_DepositOf_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1336
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2948 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2952 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960 ->
  ()
d_GovActionData_2952 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2954 :: T_TransactionStructure_58 -> ()
d_GovActionID_2954 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1190 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978
d_GovActionOf_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1196
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2958 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2962 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960
d_GovActionTypeOf_2964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1160
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2966 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2970 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2972 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_950 ->
  ()
d_GovRoleCredential_2972 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2974 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_2978 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1208 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000
d_GovVoterOf_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_2984 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1228 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1044
d_GovVotesOf_2988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1236
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_2990 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2994 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1308
d_HasAnchor'45'GovProposal_2994 ~v0
  = du_HasAnchor'45'GovProposal_2994
du_HasAnchor'45'GovProposal_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1308
du_HasAnchor'45'GovProposal_2994
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1362
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2996 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2996 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2996
du_HasCast'45'GovAction'45'Sigma_2996 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1346
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2998 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2998 ~v0 = du_HasCast'45'GovVote_2998
du_HasCast'45'GovVote_2998 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1488
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_3000 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3000 ~v0
  = du_HasCast'45'HashProtected_3000
du_HasCast'45'HashProtected_3000 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1352
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3002 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3002 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3002
du_HasCast'45'HashProtected'45'MaybeScriptHash_3002 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3002
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1354
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_3004 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_3008 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_3012 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1328
d_HasDeposit'45'GovProposal_3012 ~v0
  = du_HasDeposit'45'GovProposal_3012
du_HasDeposit'45'GovProposal_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1328
du_HasDeposit'45'GovProposal_3012
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_3014 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3018 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1190
d_HasGovAction'45'GovActionState_3018 ~v0
  = du_HasGovAction'45'GovActionState_3018
du_HasGovAction'45'GovActionState_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1190
du_HasGovAction'45'GovActionState_3018
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1368
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3020 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1190
d_HasGovAction'45'GovProposal_3020 ~v0
  = du_HasGovAction'45'GovProposal_3020
du_HasGovAction'45'GovProposal_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1190
du_HasGovAction'45'GovProposal_3020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1366
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_3022 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3026 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154
d_HasGovActionType'45'GovAction_3026 ~v0
  = du_HasGovActionType'45'GovAction_3026
du_HasGovActionType'45'GovAction_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154
du_HasGovActionType'45'GovAction_3026
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1344
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3028 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154
d_HasGovActionType'45'GovActionState_3028 ~v0
  = du_HasGovActionType'45'GovActionState_3028
du_HasGovActionType'45'GovActionState_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154
du_HasGovActionType'45'GovActionState_3028
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1372
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3030 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154
d_HasGovActionType'45'GovProposal_3030 ~v0
  = du_HasGovActionType'45'GovProposal_3030
du_HasGovActionType'45'GovProposal_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154
du_HasGovActionType'45'GovProposal_3030
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1370
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_3032 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3036 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1208
d_HasGovVoter'45'GovVote_3036 ~v0 = du_HasGovVoter'45'GovVote_3036
du_HasGovVoter'45'GovVote_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1208
du_HasGovVoter'45'GovVote_3036
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1356
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_3038 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3042 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1228
d_HasGovVotes'45'GovActionState_3042 ~v0
  = du_HasGovVotes'45'GovActionState_3042
du_HasGovVotes'45'GovActionState_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1228
du_HasGovVotes'45'GovActionState_3042
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1374
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_3044 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3048 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1268
d_HasPolicy'45'GovProposal_3048 ~v0
  = du_HasPolicy'45'GovProposal_3048
du_HasPolicy'45'GovProposal_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1268
du_HasPolicy'45'GovProposal_3048
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1360
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3050 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3050 ~v0
  = du_HasRewardAddress'45'GovActionState_3050
du_HasRewardAddress'45'GovActionState_3050 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3050
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1376
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3052 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3052 ~v0
  = du_HasRewardAddress'45'GovProposal_3052
du_HasRewardAddress'45'GovProposal_3052 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3052
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1378
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote
d_HasVote_3054 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_3058 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1248
d_HasVote'45'GovVote_3058 ~v0 = du_HasVote'45'GovVote_3058
du_HasVote'45'GovVote_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1248
du_HasVote'45'GovVote_3058
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1358
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_3060 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_3064 :: T_TransactionStructure_58 -> () -> ()
d_HashProtected_3064 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_3068 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960 ->
  ()
d_NeedsHash_3068 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Policy
d_Policy_3074 :: T_TransactionStructure_58 -> ()
d_Policy_3074 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1268 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_3080 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3080 ~v0 = du_Show'45'GovRole_3080
du_Show'45'GovRole_3080 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3080
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1380
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_3082 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1490
      (coe d_govStructure_2904 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_3090 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_3092 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_3094 :: T_TransactionStructure_58 -> ()
d_VoteDelegs_3094 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1172 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1180
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_3098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_992
d_VoteOf_3098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1256
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_3102 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1288 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3102 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1668
      (coe d_govStructure_2904 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_3104 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3104 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  AgdaAny
d_gaData_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_986
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960
d_gaType_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_984
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_3110 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3110 ~v0 = du_govVoterCredential_3110
du_govVoterCredential_3110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1138
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_3112 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3112 ~v0 = du_isGovVoterDRep_3112
du_isGovVoterDRep_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1134
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_3116 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3116 ~v0 = du_proposedCC_3116
du_proposedCC_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3116
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1146
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012 ->
  AgdaAny
d_hash_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1020
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1018
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  AgdaAny
d_gaData_3138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_986
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_3140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960
d_gaType_3140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_984
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978
d_action_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.deposit
d_deposit_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1106 ->
  Integer
d_deposit_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1130
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1106 ->
  AgdaAny
d_expiresIn_3148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1124
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1106 ->
  AgdaAny
d_prevAction_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1128
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1106 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1122
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1044
d_votes_3154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1120
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978
d_action_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1092
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012
d_anchor_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1102
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  Integer
d_deposit_3178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1098
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  Maybe AgdaAny
d_policy_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1096
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  AgdaAny
d_prevAction_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1094
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1100
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012
d_anchor_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1040
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1034
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_992
d_vote_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1038
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000
d_voter_3202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1036
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvCredential
d_gvCredential_3206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000 ->
  AgdaAny
d_gvCredential_3206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1008
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvRole
d_gvRole_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_950
d_gvRole_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1006
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvCC
d_gvCC_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1052
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvDRep
d_gvDRep_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1054
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvSPO
d_gvSPO_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1056
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1308 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1012
d_AnchorOf_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1316
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1296
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1328 ->
  AgdaAny -> Integer
d_DepositOf_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1336
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1190 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_978
d_GovActionOf_3232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1196
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1154 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_960
d_GovActionTypeOf_3236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1160
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1208 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_1000
d_GovVoterOf_3240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1228 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1044
d_GovVotesOf_3244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1236
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1268 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_3252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_992
d_VoteOf_3252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1256
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1172 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1180
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCert
d_DCert_3308 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountBalanceIntervals
d_AccountBalanceIntervals_3796 :: T_TransactionStructure_58 -> ()
d_AccountBalanceIntervals_3796 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceInterval
d_BalanceInterval_3798 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3800 ::
  T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_950 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3800 ~v0
  = du_Dec'45'InBalanceInterval_3800
du_Dec'45'InBalanceInterval_3800 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_950 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3800
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_984
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3802 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3802 ~v0
  = du_DecEq'45'BalanceInterval_3802
du_DecEq'45'BalanceInterval_3802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3802
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1108
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDeposits
d_DirectDeposits_3804 :: T_TransactionStructure_58 -> ()
d_DirectDeposits_3804 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.InBalanceInterval
d_InBalanceInterval_3808 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3844 :: T_TransactionStructure_58 -> ()
d_TxIn_3844 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3846 :: T_TransactionStructure_58 -> ()
d_TxOut_3846 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3848 :: T_TransactionStructure_58 -> ()
d_UTxO_3848 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.RedeemerPtr
d_RedeemerPtr_3850 :: T_TransactionStructure_58 -> ()
d_RedeemerPtr_3850 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3852 :: T_TransactionStructure_58 -> ()
d_ProposedPPUpdates_3852 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Update
d_Update_3854 :: T_TransactionStructure_58 -> ()
d_Update_3854 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3860 a0 a1 a2 = ()
newtype T_HasUTxO_3860
  = C_constructor_3870 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3868 ::
  T_HasUTxO_3860 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3868 v0
  = case coe v0 of
      C_constructor_3870 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3874 ::
  T_HasUTxO_3860 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3874 v0 = coe d_UTxOOf_3868 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx
d_Tx_3878 a0 a1 = ()
data T_Tx_3878
  = C_constructor_3908 T_TxBody_3882 T_TxWitnesses_3884 Integer
                       AgdaAny (Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3882 a0 a1 = ()
data T_TxBody_3882
  = C_constructor_4006 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
                       AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024]
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny (Maybe AgdaAny) AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3884 a0 = ()
data T_TxWitnesses_3884
  = C_constructor_4026 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txBody
d_txBody_3898 :: T_Tx_3878 -> T_TxBody_3882
d_txBody_3898 v0
  = case coe v0 of
      C_constructor_3908 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txWitnesses
d_txWitnesses_3900 :: T_Tx_3878 -> T_TxWitnesses_3884
d_txWitnesses_3900 v0
  = case coe v0 of
      C_constructor_3908 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txSize
d_txSize_3902 :: T_Tx_3878 -> Integer
d_txSize_3902 v0
  = case coe v0 of
      C_constructor_3908 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3904 :: T_Tx_3878 -> AgdaAny
d_isValid_3904 v0
  = case coe v0 of
      C_constructor_3908 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txAuxData
d_txAuxData_3906 :: T_Tx_3878 -> Maybe AgdaAny
d_txAuxData_3906 v0
  = case coe v0 of
      C_constructor_3908 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txIns
d_txIns_3958 ::
  T_TxBody_3882 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3958 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_3960 ::
  T_TxBody_3882 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3960 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_3962 :: T_TxBody_3882 -> AgdaAny
d_collateralInputs_3962 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txOuts
d_txOuts_3964 ::
  T_TxBody_3882 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3964 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txId
d_txId_3966 :: T_TxBody_3882 -> AgdaAny
d_txId_3966 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txCerts
d_txCerts_3968 ::
  T_TxBody_3882 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_txCerts_3968 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txFee
d_txFee_3970 :: T_TxBody_3882 -> AgdaAny
d_txFee_3970 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_3972 ::
  T_TxBody_3882 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3972 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txVldt
d_txVldt_3974 ::
  T_TxBody_3882 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3974 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3976 :: T_TxBody_3882 -> Maybe AgdaAny
d_txADhash_3976 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDonation
d_txDonation_3978 :: T_TxBody_3882 -> Integer
d_txDonation_3978 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_3980 ::
  T_TxBody_3882 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024]
d_txGovVotes_3980 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_3982 ::
  T_TxBody_3882 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078]
d_txGovProposals_3982 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3984 :: T_TxBody_3882 -> Maybe AgdaAny
d_txNetworkId_3984 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_3986 :: T_TxBody_3882 -> Maybe Integer
d_currentTreasury_3986 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3988 :: T_TxBody_3882 -> AgdaAny
d_mint_3988 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3990 :: T_TxBody_3882 -> Maybe AgdaAny
d_scriptIntegrityHash_3990 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_3992 :: T_TxBody_3882 -> AgdaAny
d_txSubTransactions_3992 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGuards
d_txGuards_3994 ::
  T_TxBody_3882 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3994 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3996 ::
  T_TxBody_3882 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3996 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_3998 ::
  T_TxBody_3882 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3998 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_4000 ::
  T_TxBody_3882 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_4000 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_4002 :: T_TxBody_3882 -> AgdaAny
d_txStartingBalanceIntervals_4002 v0
  = case coe v0 of
      C_constructor_4006 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_4004 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_TxBody_3882 -> [AgdaAny]
d_requiredSignerHashes_4004 ~v0 ~v1 v2
  = du_requiredSignerHashes_4004 v2
du_requiredSignerHashes_4004 :: T_TxBody_3882 -> [AgdaAny]
du_requiredSignerHashes_4004 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
      (d_txGuards_3994 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_4016 ::
  T_TxWitnesses_3884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_4016 v0
  = case coe v0 of
      C_constructor_4026 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_4018 ::
  T_TxWitnesses_3884 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_4018 v0
  = case coe v0 of
      C_constructor_4026 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txData
d_txData_4020 :: T_TxWitnesses_3884 -> [AgdaAny]
d_txData_4020 v0
  = case coe v0 of
      C_constructor_4026 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_4022 ::
  T_TxWitnesses_3884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_4022 v0
  = case coe v0 of
      C_constructor_4026 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_4024 ::
  T_TransactionStructure_58 -> T_TxWitnesses_3884 -> [AgdaAny]
d_scriptsP1_4024 ~v0 v1 = du_scriptsP1_4024 v1
du_scriptsP1_4024 :: T_TxWitnesses_3884 -> [AgdaAny]
du_scriptsP1_4024 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_4018 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TopLevelTx
d_TopLevelTx_4028 :: T_TransactionStructure_58 -> ()
d_TopLevelTx_4028 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.SubLevelTx
d_SubLevelTx_4030 :: T_TransactionStructure_58 -> ()
d_SubLevelTx_4030 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AnyLevelTx
d_AnyLevelTx_4032 :: T_TransactionStructure_58 -> ()
d_AnyLevelTx_4032 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_4040 a0 a1 a2 a3 = ()
newtype T_HasTxBody_4040
  = C_constructor_4052 (AgdaAny -> T_TxBody_3882)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_4050 :: T_HasTxBody_4040 -> AgdaAny -> T_TxBody_3882
d_TxBodyOf_4050 v0
  = case coe v0 of
      C_constructor_4052 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_4056 :: T_HasTxBody_4040 -> AgdaAny -> T_TxBody_3882
d_TxBodyOf_4056 v0 = coe d_TxBodyOf_4050 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_4062 a0 a1 a2 = ()
newtype T_HasTxWitnesses_4062
  = C_constructor_4072 (AgdaAny -> T_TxWitnesses_3884)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_4070 ::
  T_HasTxWitnesses_4062 -> AgdaAny -> T_TxWitnesses_3884
d_TxWitnessesOf_4070 v0
  = case coe v0 of
      C_constructor_4072 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxWitnessesOf
d_TxWitnessesOf_4076 ::
  T_HasTxWitnesses_4062 -> AgdaAny -> T_TxWitnesses_3884
d_TxWitnessesOf_4076 v0 = coe d_TxWitnessesOf_4070 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers
d_HasRedeemers_4082 a0 a1 a2 = ()
newtype T_HasRedeemers_4082
  = C_constructor_4092 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_4090 ::
  T_HasRedeemers_4082 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4090 v0
  = case coe v0 of
      C_constructor_4092 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RedeemersOf
d_RedeemersOf_4096 ::
  T_HasRedeemers_4082 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4096 v0 = coe d_RedeemersOf_4090 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_4104 a0 a1 a2 a3 = ()
newtype T_HasCollateralInputs_4104
  = C_constructor_4116 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_4114 ::
  T_HasCollateralInputs_4104 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4114 v0
  = case coe v0 of
      C_constructor_4116 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CollateralInputsOf
d_CollateralInputsOf_4120 ::
  T_HasCollateralInputs_4104 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4120 v0
  = coe d_CollateralInputsOf_4114 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees
d_HasTxFees_4128 a0 a1 a2 a3 = ()
newtype T_HasTxFees_4128 = C_constructor_4140 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_4138 :: T_HasTxFees_4128 -> AgdaAny -> AgdaAny
d_TxFeesOf_4138 v0
  = case coe v0 of
      C_constructor_4140 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxFeesOf
d_TxFeesOf_4144 :: T_HasTxFees_4128 -> AgdaAny -> AgdaAny
d_TxFeesOf_4144 v0 = coe d_TxFeesOf_4138 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions
d_HasSubTransactions_4152 a0 a1 a2 a3 = ()
newtype T_HasSubTransactions_4152
  = C_constructor_4164 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_4162 ::
  T_HasSubTransactions_4152 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4162 v0
  = case coe v0 of
      C_constructor_4164 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SubTransactionsOf
d_SubTransactionsOf_4168 ::
  T_HasSubTransactions_4152 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4168 v0 = coe d_SubTransactionsOf_4162 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId
d_HasTxId_4174 a0 a1 a2 = ()
newtype T_HasTxId_4174 = C_constructor_4184 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_4182 :: T_HasTxId_4174 -> AgdaAny -> AgdaAny
d_TxIdOf_4182 v0
  = case coe v0 of
      C_constructor_4184 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxIdOf
d_TxIdOf_4188 :: T_HasTxId_4174 -> AgdaAny -> AgdaAny
d_TxIdOf_4188 v0 = coe d_TxIdOf_4182 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize
d_HasSize_4194 a0 a1 a2 = ()
newtype T_HasSize_4194 = C_constructor_4204 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize.SizeOf
d_SizeOf_4202 :: T_HasSize_4194 -> AgdaAny -> Integer
d_SizeOf_4202 v0
  = case coe v0 of
      C_constructor_4204 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SizeOf
d_SizeOf_4208 :: T_HasSize_4194 -> AgdaAny -> Integer
d_SizeOf_4208 v0 = coe d_SizeOf_4202 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_4214 a0 a1 a2 = ()
newtype T_HasTopLevelGuards_4214
  = C_constructor_4224 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_4222 ::
  T_HasTopLevelGuards_4214 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4222 v0
  = case coe v0 of
      C_constructor_4224 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TopLevelGuardsOf
d_TopLevelGuardsOf_4228 ::
  T_HasTopLevelGuards_4214 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4228 v0 = coe d_TopLevelGuardsOf_4222 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval
d_HasValidInterval_4234 a0 a1 a2 = ()
newtype T_HasValidInterval_4234
  = C_constructor_4244 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_4242 ::
  T_HasValidInterval_4234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4242 v0
  = case coe v0 of
      C_constructor_4244 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ValidIntervalOf
d_ValidIntervalOf_4248 ::
  T_HasValidInterval_4234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4248 v0 = coe d_ValidIntervalOf_4242 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs
d_HasSpendInputs_4254 a0 a1 a2 = ()
newtype T_HasSpendInputs_4254
  = C_constructor_4264 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_4262 ::
  T_HasSpendInputs_4254 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4262 v0
  = case coe v0 of
      C_constructor_4264 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SpendInputsOf
d_SpendInputsOf_4268 ::
  T_HasSpendInputs_4254 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4268 v0 = coe d_SpendInputsOf_4262 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_4274 a0 a1 a2 = ()
newtype T_HasReferenceInputs_4274
  = C_constructor_4284 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_4282 ::
  T_HasReferenceInputs_4274 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4282 v0
  = case coe v0 of
      C_constructor_4284 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ReferenceInputsOf
d_ReferenceInputsOf_4288 ::
  T_HasReferenceInputs_4274 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4288 v0 = coe d_ReferenceInputsOf_4282 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue
d_HasMintedValue_4294 a0 a1 a2 = ()
newtype T_HasMintedValue_4294
  = C_constructor_4304 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_4302 :: T_HasMintedValue_4294 -> AgdaAny -> AgdaAny
d_MintedValueOf_4302 v0
  = case coe v0 of
      C_constructor_4304 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MintedValueOf
d_MintedValueOf_4308 :: T_HasMintedValue_4294 -> AgdaAny -> AgdaAny
d_MintedValueOf_4308 v0 = coe d_MintedValueOf_4302 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?
d_HasFees'63'_4314 a0 a1 a2 = ()
newtype T_HasFees'63'_4314
  = C_constructor_4324 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_4322 :: T_HasFees'63'_4314 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4322 v0
  = case coe v0 of
      C_constructor_4324 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.FeesOf?
d_FeesOf'63'_4328 :: T_HasFees'63'_4314 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4328 v0 = coe d_FeesOf'63'_4322 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts
d_HasDCerts_4334 a0 a1 a2 = ()
newtype T_HasDCerts_4334
  = C_constructor_4344 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_4342 ::
  T_HasDCerts_4334 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_DCertsOf_4342 v0
  = case coe v0 of
      C_constructor_4344 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCertsOf
d_DCertsOf_4348 ::
  T_HasDCerts_4334 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_DCertsOf_4348 v0 = coe d_DCertsOf_4342 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals
d_HasGovProposals_4354 a0 a1 a2 = ()
newtype T_HasGovProposals_4354
  = C_constructor_4364 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_4362 ::
  T_HasGovProposals_4354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078]
d_GovProposalsOf_4362 v0
  = case coe v0 of
      C_constructor_4364 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovProposalsOf
d_GovProposalsOf_4368 ::
  T_HasGovProposals_4354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078]
d_GovProposalsOf_4368 v0 = coe d_GovProposalsOf_4362 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData
d_HasData_4374 a0 a1 a2 = ()
newtype T_HasData_4374 = C_constructor_4384 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData.DataOf
d_DataOf_4382 :: T_HasData_4374 -> AgdaAny -> [AgdaAny]
d_DataOf_4382 v0
  = case coe v0 of
      C_constructor_4384 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DataOf
d_DataOf_4388 :: T_HasData_4374 -> AgdaAny -> [AgdaAny]
d_DataOf_4388 v0 = coe d_DataOf_4382 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_4394 a0 a1 a2 = ()
newtype T_HasListOfGovProposals_4394
  = C_constructor_4404 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4402 ::
  T_HasListOfGovProposals_4394 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078]
d_ListOfGovProposalsOf_4402 v0
  = case coe v0 of
      C_constructor_4404 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4408 ::
  T_HasListOfGovProposals_4394 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1078]
d_ListOfGovProposalsOf_4408 v0
  = coe d_ListOfGovProposalsOf_4402 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_4414 a0 a1 a2 = ()
newtype T_HasListOfGovVotes_4414
  = C_constructor_4424 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_4422 ::
  T_HasListOfGovVotes_4414 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024]
d_ListOfGovVotesOf_4422 v0
  = case coe v0 of
      C_constructor_4424 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovVotesOf
d_ListOfGovVotesOf_4428 ::
  T_HasListOfGovVotes_4414 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1024]
d_ListOfGovVotesOf_4428 v0 = coe d_ListOfGovVotesOf_4422 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards
d_HasGuards_4434 a0 a1 a2 = ()
newtype T_HasGuards_4434
  = C_constructor_4444 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_4442 ::
  T_HasGuards_4434 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4442 v0
  = case coe v0 of
      C_constructor_4444 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GuardsOf
d_GuardsOf_4448 ::
  T_HasGuards_4434 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4448 v0 = coe d_GuardsOf_4442 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts
d_HasScripts_4454 a0 a1 a2 = ()
newtype T_HasScripts_4454
  = C_constructor_4464 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_4462 ::
  T_HasScripts_4454 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4462 v0
  = case coe v0 of
      C_constructor_4464 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptsOf
d_ScriptsOf_4468 ::
  T_HasScripts_4454 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4468 v0 = coe d_ScriptsOf_4462 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts
d_HasTxOuts_4474 a0 a1 a2 = ()
newtype T_HasTxOuts_4474
  = C_constructor_4484 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_4482 ::
  T_HasTxOuts_4474 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4482 v0
  = case coe v0 of
      C_constructor_4484 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxOutsOf
d_TxOutsOf_4488 ::
  T_HasTxOuts_4474 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4488 v0 = coe d_TxOutsOf_4482 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_4494 a0 a1 a2 = ()
newtype T_HasRequiredSingerHashes_4494
  = C_constructor_4504 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4502 ::
  T_HasRequiredSingerHashes_4494 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4502 v0
  = case coe v0 of
      C_constructor_4504 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4508 ::
  T_HasRequiredSingerHashes_4494 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4508 v0
  = coe d_RequiredSignerHashesOf_4502 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_4514 a0 a1 a2 = ()
newtype T_HasCurrentTreasury_4514
  = C_constructor_4524 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_4522 ::
  T_HasCurrentTreasury_4514 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4522 v0
  = case coe v0 of
      C_constructor_4524 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CurrentTreasuryOf
d_CurrentTreasuryOf_4528 ::
  T_HasCurrentTreasury_4514 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4528 v0 = coe d_CurrentTreasuryOf_4522 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_4534 a0 a1 a2 = ()
newtype T_HasDirectDeposits_4534
  = C_constructor_4544 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_4542 ::
  T_HasDirectDeposits_4534 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4542 v0
  = case coe v0 of
      C_constructor_4544 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDepositsOf
d_DirectDepositsOf_4548 ::
  T_HasDirectDeposits_4534 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4548 v0 = coe d_DirectDepositsOf_4542 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_4554 a0 a1 a2 = ()
newtype T_HasBalanceIntervals_4554
  = C_constructor_4564 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_4562 ::
  T_HasBalanceIntervals_4554 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4562 v0
  = case coe v0 of
      C_constructor_4564 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceIntervalsOf
d_BalanceIntervalsOf_4568 ::
  T_HasBalanceIntervals_4554 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4568 v0
  = coe d_BalanceIntervalsOf_4562 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_4574 a0 a1 a2 = ()
newtype T_HasStartingBalanceIntervals_4574
  = C_constructor_4584 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4582 ::
  T_HasStartingBalanceIntervals_4574 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4582 v0
  = case coe v0 of
      C_constructor_4584 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4588 ::
  T_HasStartingBalanceIntervals_4574 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4588 v0
  = coe d_StartingBalanceIntervalsOf_4582 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_4594 a0 a1 a2 = ()
newtype T_HasIsValidFlag_4594
  = C_constructor_4604 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_4602 :: T_HasIsValidFlag_4594 -> AgdaAny -> Bool
d_IsValidFlagOf_4602 v0
  = case coe v0 of
      C_constructor_4604 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsValidFlagOf
d_IsValidFlagOf_4608 :: T_HasIsValidFlag_4594 -> AgdaAny -> Bool
d_IsValidFlagOf_4608 v0 = coe d_IsValidFlagOf_4602 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_4610 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxBody_4040
d_HasTxBody'45'Tx_4610 ~v0 ~v1 = du_HasTxBody'45'Tx_4610
du_HasTxBody'45'Tx_4610 :: T_HasTxBody_4040
du_HasTxBody'45'Tx_4610
  = coe C_constructor_4052 (coe (\ v0 -> d_txBody_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_4612 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSize_4194
d_HasSize'45'Tx_4612 ~v0 ~v1 = du_HasSize'45'Tx_4612
du_HasSize'45'Tx_4612 :: T_HasSize_4194
du_HasSize'45'Tx_4612
  = coe C_constructor_4204 (coe (\ v0 -> d_txSize_3902 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_4614 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxWitnesses_4062
d_HasTxWitnesses'45'Tx_4614 ~v0 ~v1 = du_HasTxWitnesses'45'Tx_4614
du_HasTxWitnesses'45'Tx_4614 :: T_HasTxWitnesses_4062
du_HasTxWitnesses'45'Tx_4614
  = coe
      C_constructor_4072 (coe (\ v0 -> d_txWitnesses_3900 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_4616 ::
  T_TransactionStructure_58 -> T_HasIsValidFlag_4594
d_HasIsValidFlag'45'Tx_4616 ~v0 = du_HasIsValidFlag'45'Tx_4616
du_HasIsValidFlag'45'Tx_4616 :: T_HasIsValidFlag_4594
du_HasIsValidFlag'45'Tx_4616
  = coe C_constructor_4604 (coe (\ v0 -> d_isValid_3904 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_4618 ::
  T_TransactionStructure_58 -> T_HasRedeemers_4082
d_HasRedeemers'45'TxWitnesses_4618 ~v0
  = du_HasRedeemers'45'TxWitnesses_4618
du_HasRedeemers'45'TxWitnesses_4618 :: T_HasRedeemers_4082
du_HasRedeemers'45'TxWitnesses_4618
  = coe
      C_constructor_4092 (coe (\ v0 -> d_txRedeemers_4022 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_4620 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasRedeemers_4082
d_HasRedeemers'45'Tx_4620 ~v0 ~v1 = du_HasRedeemers'45'Tx_4620
du_HasRedeemers'45'Tx_4620 :: T_HasRedeemers_4082
du_HasRedeemers'45'Tx_4620
  = coe
      C_constructor_4092
      (coe
         (\ v0 -> d_txRedeemers_4022 (coe d_txWitnesses_3900 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_4622 ::
  T_TransactionStructure_58 -> T_HasCollateralInputs_4104
d_HasCollateralInputs'45'TopLevelTx_4622 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_4622
du_HasCollateralInputs'45'TopLevelTx_4622 ::
  T_HasCollateralInputs_4104
du_HasCollateralInputs'45'TopLevelTx_4622
  = coe
      C_constructor_4116
      (coe
         (\ v0 -> d_collateralInputs_3962 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_4624 ::
  T_TransactionStructure_58 -> T_HasTxFees_4128
d_HasTxFees'45'TopLevelTx_4624 ~v0
  = du_HasTxFees'45'TopLevelTx_4624
du_HasTxFees'45'TopLevelTx_4624 :: T_HasTxFees_4128
du_HasTxFees'45'TopLevelTx_4624
  = coe
      C_constructor_4140
      (coe (\ v0 -> d_txFee_3970 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_4626 ::
  T_TransactionStructure_58 -> T_HasSubTransactions_4152
d_HasSubTransactions'45'TopLevelTx_4626 ~v0
  = du_HasSubTransactions'45'TopLevelTx_4626
du_HasSubTransactions'45'TopLevelTx_4626 ::
  T_HasSubTransactions_4152
du_HasSubTransactions'45'TopLevelTx_4626
  = coe
      C_constructor_4164
      (coe
         (\ v0 -> d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_4628 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4214
d_HasTopLevelGuards'45'TxBody_4628 ~v0 ~v1
  = du_HasTopLevelGuards'45'TxBody_4628
du_HasTopLevelGuards'45'TxBody_4628 :: T_HasTopLevelGuards_4214
du_HasTopLevelGuards'45'TxBody_4628
  = coe
      C_constructor_4224
      (coe (\ v0 -> d_txRequiredTopLevelGuards_3996 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_4630 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4214
d_HasTopLevelGuards'45'Tx_4630 ~v0 ~v1
  = du_HasTopLevelGuards'45'Tx_4630
du_HasTopLevelGuards'45'Tx_4630 :: T_HasTopLevelGuards_4214
du_HasTopLevelGuards'45'Tx_4630
  = coe
      C_constructor_4224
      (coe
         (\ v0 ->
            d_txRequiredTopLevelGuards_3996 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_4632 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4334
d_HasDCerts'45'TxBody_4632 ~v0 ~v1 = du_HasDCerts'45'TxBody_4632
du_HasDCerts'45'TxBody_4632 :: T_HasDCerts_4334
du_HasDCerts'45'TxBody_4632
  = coe C_constructor_4344 (coe (\ v0 -> d_txCerts_3968 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_4634 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4334
d_HasDCerts'45'Tx_4634 ~v0 ~v1 = du_HasDCerts'45'Tx_4634
du_HasDCerts'45'Tx_4634 :: T_HasDCerts_4334
du_HasDCerts'45'Tx_4634
  = coe
      C_constructor_4344
      (coe (\ v0 -> d_txCerts_3968 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_4636 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_4636 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_4636
du_HasWithdrawals'45'TxBody_4636 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_4636
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3972 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_4638 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_4638 ~v0 ~v1 = du_HasWithdrawals'45'Tx_4638
du_HasWithdrawals'45'Tx_4638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_4638
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3972 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_4640 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4534
d_HasDirectDeposits'45'TxBody_4640 ~v0 ~v1
  = du_HasDirectDeposits'45'TxBody_4640
du_HasDirectDeposits'45'TxBody_4640 :: T_HasDirectDeposits_4534
du_HasDirectDeposits'45'TxBody_4640
  = coe
      C_constructor_4544 (coe (\ v0 -> d_txDirectDeposits_3998 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_4642 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4534
d_HasDirectDeposits'45'Tx_4642 ~v0 ~v1
  = du_HasDirectDeposits'45'Tx_4642
du_HasDirectDeposits'45'Tx_4642 :: T_HasDirectDeposits_4534
du_HasDirectDeposits'45'Tx_4642
  = coe
      C_constructor_4544
      (coe
         (\ v0 -> d_txDirectDeposits_3998 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_4644 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4554
d_HasBalanceIntervals'45'TxBody_4644 ~v0 ~v1
  = du_HasBalanceIntervals'45'TxBody_4644
du_HasBalanceIntervals'45'TxBody_4644 :: T_HasBalanceIntervals_4554
du_HasBalanceIntervals'45'TxBody_4644
  = coe
      C_constructor_4564
      (coe (\ v0 -> d_txBalanceIntervals_4000 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_4646 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4554
d_HasBalanceIntervals'45'Tx_4646 ~v0 ~v1
  = du_HasBalanceIntervals'45'Tx_4646
du_HasBalanceIntervals'45'Tx_4646 :: T_HasBalanceIntervals_4554
du_HasBalanceIntervals'45'Tx_4646
  = coe
      C_constructor_4564
      (coe
         (\ v0 -> d_txBalanceIntervals_4000 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_4648 ::
  T_TransactionStructure_58 -> T_HasStartingBalanceIntervals_4574
d_HasStartingBalanceIntervals'45'TxBody_4648 ~v0
  = du_HasStartingBalanceIntervals'45'TxBody_4648
du_HasStartingBalanceIntervals'45'TxBody_4648 ::
  T_HasStartingBalanceIntervals_4574
du_HasStartingBalanceIntervals'45'TxBody_4648
  = coe
      C_constructor_4584
      (coe (\ v0 -> d_txStartingBalanceIntervals_4002 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_4650 ::
  T_TransactionStructure_58 -> T_HasStartingBalanceIntervals_4574
d_HasStartingBalanceIntervals'45'Tx_4650 ~v0
  = du_HasStartingBalanceIntervals'45'Tx_4650
du_HasStartingBalanceIntervals'45'Tx_4650 ::
  T_HasStartingBalanceIntervals_4574
du_HasStartingBalanceIntervals'45'Tx_4650
  = coe
      C_constructor_4584
      (coe
         (\ v0 ->
            d_txStartingBalanceIntervals_4002 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_4652 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4234
d_HasValidInterval'45'TxBody_4652 ~v0 ~v1
  = du_HasValidInterval'45'TxBody_4652
du_HasValidInterval'45'TxBody_4652 :: T_HasValidInterval_4234
du_HasValidInterval'45'TxBody_4652
  = coe C_constructor_4244 (coe (\ v0 -> d_txVldt_3974 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_4654 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4234
d_HasValidInterval'45'Tx_4654 ~v0 ~v1
  = du_HasValidInterval'45'Tx_4654
du_HasValidInterval'45'Tx_4654 :: T_HasValidInterval_4234
du_HasValidInterval'45'Tx_4654
  = coe
      C_constructor_4244
      (coe (\ v0 -> d_txVldt_3974 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_4656 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4254
d_HasSpendInputs'45'TxBody_4656 ~v0 ~v1
  = du_HasSpendInputs'45'TxBody_4656
du_HasSpendInputs'45'TxBody_4656 :: T_HasSpendInputs_4254
du_HasSpendInputs'45'TxBody_4656
  = coe C_constructor_4264 (coe (\ v0 -> d_txIns_3958 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_4658 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4254
d_HasSpendInputs'45'Tx_4658 ~v0 ~v1 = du_HasSpendInputs'45'Tx_4658
du_HasSpendInputs'45'Tx_4658 :: T_HasSpendInputs_4254
du_HasSpendInputs'45'Tx_4658
  = coe
      C_constructor_4264
      (coe (\ v0 -> d_txIns_3958 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_4660 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4274
d_HasReferenceInputs'45'TxBody_4660 ~v0 ~v1
  = du_HasReferenceInputs'45'TxBody_4660
du_HasReferenceInputs'45'TxBody_4660 :: T_HasReferenceInputs_4274
du_HasReferenceInputs'45'TxBody_4660
  = coe
      C_constructor_4284 (coe (\ v0 -> d_referenceInputs_3960 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_4662 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4274
d_HasReferenceInputs'45'Tx_4662 ~v0 ~v1
  = du_HasReferenceInputs'45'Tx_4662
du_HasReferenceInputs'45'Tx_4662 :: T_HasReferenceInputs_4274
du_HasReferenceInputs'45'Tx_4662
  = coe
      C_constructor_4284
      (coe (\ v0 -> d_referenceInputs_3960 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_4664 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4294
d_HasMintedValue'45'TxBody_4664 ~v0 ~v1
  = du_HasMintedValue'45'TxBody_4664
du_HasMintedValue'45'TxBody_4664 :: T_HasMintedValue_4294
du_HasMintedValue'45'TxBody_4664
  = coe C_constructor_4304 (coe (\ v0 -> d_mint_3988 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_4666 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4294
d_HasMintedValue'45'Tx_4666 ~v0 ~v1 = du_HasMintedValue'45'Tx_4666
du_HasMintedValue'45'Tx_4666 :: T_HasMintedValue_4294
du_HasMintedValue'45'Tx_4666
  = coe
      C_constructor_4304
      (coe (\ v0 -> d_mint_3988 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_4668 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4414
d_HasListOfGovVotes'45'TxBody_4668 ~v0 ~v1
  = du_HasListOfGovVotes'45'TxBody_4668
du_HasListOfGovVotes'45'TxBody_4668 :: T_HasListOfGovVotes_4414
du_HasListOfGovVotes'45'TxBody_4668
  = coe C_constructor_4424 (coe (\ v0 -> d_txGovVotes_3980 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_4670 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4414
d_HasListOfGovVotes'45'Tx_4670 ~v0 ~v1
  = du_HasListOfGovVotes'45'Tx_4670
du_HasListOfGovVotes'45'Tx_4670 :: T_HasListOfGovVotes_4414
du_HasListOfGovVotes'45'Tx_4670
  = coe
      C_constructor_4424
      (coe (\ v0 -> d_txGovVotes_3980 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_4672 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4394
d_HasListOfGovProposals'45'TxBody_4672 ~v0 ~v1
  = du_HasListOfGovProposals'45'TxBody_4672
du_HasListOfGovProposals'45'TxBody_4672 ::
  T_HasListOfGovProposals_4394
du_HasListOfGovProposals'45'TxBody_4672
  = coe
      C_constructor_4404 (coe (\ v0 -> d_txGovProposals_3982 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_4674 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4394
d_HasListOfGovProposals'45'Tx_4674 ~v0 ~v1
  = du_HasListOfGovProposals'45'Tx_4674
du_HasListOfGovProposals'45'Tx_4674 :: T_HasListOfGovProposals_4394
du_HasListOfGovProposals'45'Tx_4674
  = coe
      C_constructor_4404
      (coe (\ v0 -> d_txGovProposals_3982 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_4676 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_4676 ~v0 ~v1
  = du_HasMaybeNetworkId'45'TxBody_4676
du_HasMaybeNetworkId'45'TxBody_4676 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_4676
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3984 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_4678 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_4678 ~v0 ~v1
  = du_HasMaybeNetworkId'45'Tx_4678
du_HasMaybeNetworkId'45'Tx_4678 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_4678
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3984 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_4682 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4314
d_HasFees'63''45'TxBody_4682 ~v0 v1
  = du_HasFees'63''45'TxBody_4682 v1
du_HasFees'63''45'TxBody_4682 :: T_TxLevel_8 -> T_HasFees'63'_4314
du_HasFees'63''45'TxBody_4682 v0
  = coe
      C_constructor_4324
      (case coe v0 of
         C_TxLevelTop_10
           -> coe
                (\ v1 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe d_txFee_3970 (coe v1)))
         C_TxLevelSub_12
           -> coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_4688 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4314
d_HasFees'63''45'Tx_4688 ~v0 v1 = du_HasFees'63''45'Tx_4688 v1
du_HasFees'63''45'Tx_4688 :: T_TxLevel_8 -> T_HasFees'63'_4314
du_HasFees'63''45'Tx_4688 v0
  = coe
      C_constructor_4324
      (coe
         (\ v1 ->
            coe
              d_FeesOf'63'_4322 (coe du_HasFees'63''45'TxBody_4682 (coe v0))
              (d_txBody_3898 (coe v1))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_4690 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4174
d_HasTxId'45'TxBody_4690 ~v0 ~v1 = du_HasTxId'45'TxBody_4690
du_HasTxId'45'TxBody_4690 :: T_HasTxId_4174
du_HasTxId'45'TxBody_4690
  = coe C_constructor_4184 (coe (\ v0 -> d_txId_3966 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_4692 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4174
d_HasTxId'45'Tx_4692 ~v0 ~v1 = du_HasTxId'45'Tx_4692
du_HasTxId'45'Tx_4692 :: T_HasTxId_4174
du_HasTxId'45'Tx_4692
  = coe
      C_constructor_4184
      (coe (\ v0 -> d_txId_3966 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_4694 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_4694 ~v0 ~v1
  = du_HasDonations'45'TxBody_4694
du_HasDonations'45'TxBody_4694 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'TxBody_4694
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_40
      (coe (\ v0 -> d_txDonation_3978 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_4696 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_4696 ~v0 ~v1 = du_HasDonations'45'Tx_4696
du_HasDonations'45'Tx_4696 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'Tx_4696
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_40
      (coe (\ v0 -> d_txDonation_3978 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_4698 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_4698 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2770 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_4700 ::
  T_TransactionStructure_58 -> T_HasData_4374
d_HasData'45'TxWitnesses_4700 ~v0 = du_HasData'45'TxWitnesses_4700
du_HasData'45'TxWitnesses_4700 :: T_HasData_4374
du_HasData'45'TxWitnesses_4700
  = coe C_constructor_4384 (coe (\ v0 -> d_txData_4020 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-Tx
d_HasData'45'Tx_4702 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasData_4374
d_HasData'45'Tx_4702 ~v0 ~v1 = du_HasData'45'Tx_4702
du_HasData'45'Tx_4702 :: T_HasData_4374
du_HasData'45'Tx_4702
  = coe
      C_constructor_4384
      (coe (\ v0 -> d_txData_4020 (coe d_txWitnesses_3900 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_4704 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4434
d_HasGuards'45'TxBody_4704 ~v0 ~v1 = du_HasGuards'45'TxBody_4704
du_HasGuards'45'TxBody_4704 :: T_HasGuards_4434
du_HasGuards'45'TxBody_4704
  = coe C_constructor_4444 (coe (\ v0 -> d_txGuards_3994 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_4706 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4434
d_HasGuards'45'Tx_4706 ~v0 ~v1 = du_HasGuards'45'Tx_4706
du_HasGuards'45'Tx_4706 :: T_HasGuards_4434
du_HasGuards'45'Tx_4706
  = coe
      C_constructor_4444
      (coe (\ v0 -> d_txGuards_3994 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_4708 ::
  T_TransactionStructure_58 -> T_HasScripts_4454
d_HasScripts'45'TxWitnesses_4708 ~v0
  = du_HasScripts'45'TxWitnesses_4708
du_HasScripts'45'TxWitnesses_4708 :: T_HasScripts_4454
du_HasScripts'45'TxWitnesses_4708
  = coe C_constructor_4464 (coe (\ v0 -> d_scripts_4018 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_4710 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasScripts_4454
d_HasScripts'45'Tx_4710 ~v0 ~v1 = du_HasScripts'45'Tx_4710
du_HasScripts'45'Tx_4710 :: T_HasScripts_4454
du_HasScripts'45'Tx_4710
  = coe
      C_constructor_4464
      (coe (\ v0 -> d_scripts_4018 (coe d_txWitnesses_3900 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_4712 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4474
d_HasTxOuts'45'TxBody_4712 ~v0 ~v1 = du_HasTxOuts'45'TxBody_4712
du_HasTxOuts'45'TxBody_4712 :: T_HasTxOuts_4474
du_HasTxOuts'45'TxBody_4712
  = coe C_constructor_4484 (coe (\ v0 -> d_txOuts_3964 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_4714 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4474
d_HasTxOuts'45'Tx_4714 ~v0 ~v1 = du_HasTxOuts'45'Tx_4714
du_HasTxOuts'45'Tx_4714 :: T_HasTxOuts_4474
du_HasTxOuts'45'Tx_4714
  = coe
      C_constructor_4484
      (coe (\ v0 -> d_txOuts_3964 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_4716 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4494
d_HasRequiredSingerHashes'45'TxBody_4716 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'TxBody_4716
du_HasRequiredSingerHashes'45'TxBody_4716 ::
  T_HasRequiredSingerHashes_4494
du_HasRequiredSingerHashes'45'TxBody_4716
  = coe C_constructor_4504 (coe du_requiredSignerHashes_4004)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_4718 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4494
d_HasRequiredSingerHashes'45'Tx_4718 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'Tx_4718
du_HasRequiredSingerHashes'45'Tx_4718 ::
  T_HasRequiredSingerHashes_4494
du_HasRequiredSingerHashes'45'Tx_4718
  = coe
      C_constructor_4504
      (coe
         (\ v0 ->
            coe du_requiredSignerHashes_4004 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_4720 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4514
d_HasCurrentTreasury'45'TxBody_4720 ~v0 ~v1
  = du_HasCurrentTreasury'45'TxBody_4720
du_HasCurrentTreasury'45'TxBody_4720 :: T_HasCurrentTreasury_4514
du_HasCurrentTreasury'45'TxBody_4720
  = coe
      C_constructor_4524 (coe (\ v0 -> d_currentTreasury_3986 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_4722 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4514
d_HasCurrentTreasury'45'Tx_4722 ~v0 ~v1
  = du_HasCurrentTreasury'45'Tx_4722
du_HasCurrentTreasury'45'Tx_4722 :: T_HasCurrentTreasury_4514
du_HasCurrentTreasury'45'Tx_4722
  = coe
      C_constructor_4524
      (coe (\ v0 -> d_currentTreasury_3986 (coe d_txBody_3898 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToScript
d_txOutToScript_4724 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4724 ~v0 v1 = du_txOutToScript_4724 v1
du_txOutToScript_4724 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_4724 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6 -> coe v6
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToDatum
d_txOutToDatum_4728 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4728 ~v0 v1 = du_txOutToDatum_4728 v1
du_txOutToDatum_4728 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDatum_4728 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> coe
                           MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72 (coe v5)
                           (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToValue
d_txOutToValue_4732 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4732 ~v0 v1 = du_txOutToValue_4732 v1
du_txOutToValue_4732 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_4732 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputs
d_allSpendInputs_4736 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4736 ~v0 v1 = du_allSpendInputs_4736 v1
du_allSpendInputs_4736 ::
  T_Tx_3878 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_4736 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1)
              (coe d_SpendInputsOf_4262 (coe du_HasSpendInputs'45'Tx_4658) v2)))
      (coe d_SpendInputsOf_4262 (coe du_HasSpendInputs'45'Tx_4658) v0)
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4744 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4744 ~v0 v1 = du_allReferenceInputs_4744 v1
du_allReferenceInputs_4744 ::
  T_Tx_3878 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_4744 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1)
              (coe
                 d_ReferenceInputsOf_4282 (coe du_HasReferenceInputs'45'Tx_4662)
                 v2)))
      (coe
         d_ReferenceInputsOf_4282 (coe du_HasReferenceInputs'45'Tx_4662) v0)
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allOutputs
d_allOutputs_4752 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allOutputs_4752 ~v0 v1 = du_allOutputs_4752 v1
du_allOutputs_4752 ::
  T_Tx_3878 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allOutputs_4752 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1)
              (coe
                 MAlonzo.Code.Class.IsSet.du_range_590
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                 (coe d_TxOutsOf_4482 (coe du_HasTxOuts'45'Tx_4714) v2))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_590
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
         (coe d_TxOutsOf_4482 (coe du_HasTxOuts'45'Tx_4714) v0))
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.outputScripts
d_outputScripts_4760 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_outputScripts_4760 ~v0 ~v1 v2 = du_outputScripts_4760 v2
du_outputScripts_4760 ::
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_outputScripts_4760 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4724)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_590
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
         (coe d_TxOutsOf_4482 (coe du_HasTxOuts'45'Tx_4714) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allOutputScripts
d_allOutputScripts_4762 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allOutputScripts_4762 ~v0 v1 = du_allOutputScripts_4762 v1
du_allOutputScripts_4762 ::
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allOutputScripts_4762 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1) (coe du_outputScripts_4760 (coe v2))))
      (coe du_outputScripts_4760 (coe v0))
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceScripts
d_referenceScripts_4770 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4770 v0 ~v1 v2 v3
  = du_referenceScripts_4770 v0 v2 v3
du_referenceScripts_4770 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_referenceScripts_4770 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4724)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_590
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
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
                  (coe d_DecEq'45'TxId_1436 (coe v0))
                  (coe d_DecEq'45'Ix_1434 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  d_ReferenceInputsOf_4282 (coe du_HasReferenceInputs'45'Tx_4662) v1)
               (coe d_SpendInputsOf_4262 (coe du_HasSpendInputs'45'Tx_4658) v1))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4776 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4776 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v3)
              (coe du_referenceScripts_4770 (coe v0) (coe v4) (coe v2))))
      (coe du_referenceScripts_4770 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessScripts
d_witnessScripts_4786 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4786 ~v0 ~v1 = du_witnessScripts_4786
du_witnessScripts_4786 ::
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_4786
  = coe d_ScriptsOf_4462 (coe du_HasScripts'45'Tx_4710)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4788 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4788 ~v0 v1 = du_allWitnessScripts_4788 v1
du_allWitnessScripts_4788 ::
  T_Tx_3878 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_4788 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1) (coe du_witnessScripts_4786 v2)))
      (coe du_witnessScripts_4786 v0)
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scripts
d_scripts_4796 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_4796 v0 ~v1 v2 v3 = du_scripts_4796 v0 v2 v3
du_scripts_4796 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_4796 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_outputScripts_4760 (coe v1))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_referenceScripts_4770 (coe v0) (coe v1) (coe v2))
         (coe du_witnessScripts_4786 v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getAllScripts
d_getAllScripts_4802 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4802 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v3) (coe du_scripts_4796 (coe v0) (coe v4) (coe v2))))
      (coe du_scripts_4796 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessData
d_witnessData_4812 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3878 -> [AgdaAny]
d_witnessData_4812 ~v0 ~v1 = du_witnessData_4812
du_witnessData_4812 :: T_Tx_3878 -> [AgdaAny]
du_witnessData_4812 = coe d_DataOf_4382 (coe du_HasData'45'Tx_4702)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4814 ::
  T_TransactionStructure_58 -> T_Tx_3878 -> ()
d_NoOverlappingSpendInputs_4814 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allMintedCoin
d_allMintedCoin_4818 ::
  T_TransactionStructure_58 -> T_Tx_3878 -> Integer
d_allMintedCoin_4818 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                 (d_tokenAlgebra_2770 (coe v0))
                 (coe d_MintedValueOf_4302 (coe du_HasMintedValue'45'Tx_4666) v3))
              (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (d_tokenAlgebra_2770 (coe v0))
         (coe d_MintedValueOf_4302 (coe du_HasMintedValue'45'Tx_4666) v1))
      (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allDCerts
d_allDCerts_4826 ::
  T_TransactionStructure_58 ->
  T_Tx_3878 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
d_allDCerts_4826 ~v0 v1 = du_allDCerts_4826 v1
du_allDCerts_4826 ::
  T_Tx_3878 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1498]
du_allDCerts_4826 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe d_DCertsOf_4342 (coe du_HasDCerts'45'Tx_4634))
         (coe d_txSubTransactions_3992 (coe d_txBody_3898 (coe v0))))
      (coe d_DCertsOf_4342 (coe du_HasDCerts'45'Tx_4634) v0)
