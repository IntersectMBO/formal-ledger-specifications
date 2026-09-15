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
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
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
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
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
  = C_constructor_4660 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
                       (AgdaAny -> AgdaAny)
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
-- Ledger.Dijkstra.Specification.Transaction._.Network
d_Network_98 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Network_98 = erased
-- Ledger.Dijkstra.Specification.Transaction._.THash
d_THash_136 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_THash_136 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptHash
d_ScriptHash_142 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptHash_142 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Ser
d_Ser_144 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Ser_144 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_174 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__184 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__184 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_186 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_188 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value
d_Value_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_202 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin
d_coin_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_214 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.inject
d_inject_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.policies
d_policies_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.size
d_size_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure
d_ScriptStructure_582 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Datum
d_Datum_750 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_750 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Redeemer
d_Redeemer_806 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_806 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.p1s
d_p1s_846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.ps
d_ps_848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.Datum
d_Datum_878 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_878 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Redeemer
d_Redeemer_934 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_934 = erased
-- Ledger.Dijkstra.Specification.Transaction._.GovParams
d_GovParams_1016 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.ppUpd
d_ppUpd_1112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Ix
d_Ix_1358 :: T_TransactionStructure_58 -> ()
d_Ix_1358 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxId
d_TxId_1360 :: T_TransactionStructure_58 -> ()
d_TxId_1360 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1362 :: T_TransactionStructure_58 -> ()
d_AuxiliaryData_1362 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1364 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1364 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1366 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1366 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1368 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1368 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1370 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1370 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1372 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1372 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1374 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1374 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1378 :: T_TransactionStructure_58 -> ()
d_THash_1378 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1380 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1382 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1384 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1384 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1386 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1386 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1364 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1390 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1390 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1392 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1394 ::
  T_TransactionStructure_58 -> Integer
d_MaxLovelaceSupply'7580'_1394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Network
d_Network_1396 :: T_TransactionStructure_58 -> ()
d_Network_1396 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1398 :: T_TransactionStructure_58 -> AgdaAny
d_NetworkId_1398 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1400 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1400 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1402 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1402 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1404 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1404 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1406 :: T_TransactionStructure_58 -> Integer
d_Quorum_1406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1408 ::
  T_TransactionStructure_58 -> Integer
d_RandomnessStabilisationWindow'7580'_1408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1410 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1410 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1412 :: T_TransactionStructure_58 -> Integer
d_SlotsPerEpoch'7580'_1412 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1414 ::
  T_TransactionStructure_58 -> Integer
d_StabilityWindow'7580'_1414 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1416 ::
  T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1416 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1418 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1418 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_globalConstants_1366 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1422 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1422 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1424 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1424 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d_cryptoStructure_1368 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1426 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1426 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1428 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1428 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1430 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1430 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-VRF
d_DecEq'45'VRF_1432 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d_cryptoStructure_1368 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1434 :: T_TransactionStructure_58 -> ()
d_THash_1434 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1436 :: T_TransactionStructure_58 -> ()
d_KeyPair_1436 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1438 :: T_TransactionStructure_58 -> ()
d_SKey_1438 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1440 :: T_TransactionStructure_58 -> ()
d_ScriptHash_1440 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1442 :: T_TransactionStructure_58 -> ()
d_Ser_1442 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1444 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d_cryptoStructure_1368 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1446 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1446 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1448 :: T_TransactionStructure_58 -> ()
d_Sig_1448 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1450 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1450 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1452 :: T_TransactionStructure_58 -> ()
d_VKey_1452 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VRF
d_VRF_1454 :: T_TransactionStructure_58 -> ()
d_VRF_1454 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1456 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1456 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1458 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1458 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1460 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1460 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.khs
d_khs_1462 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d_cryptoStructure_1368 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1464 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d_cryptoStructure_1368 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sign
d_sign_1466 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1466 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1470 :: T_TransactionStructure_58 -> ()
d_MemoryEstimate_1470 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1472 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1478 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1480 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1482 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1488 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1492 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1496 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1500 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1504 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1504 ~v0 = du_addValue_1504
du_addValue_1504 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1506 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1508 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1508 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1512 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1516 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1518 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1520 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1520 v0
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
d_size_1522 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1524 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1524 ~v0 = du_sum'7515'_1524
du_sum'7515'_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1526 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1530 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1530 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1532 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1534 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1536 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1538 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1538 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1542 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1544 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1546 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1546 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1548 ~v0 = du_isMagmaIsomorphism_1548
du_isMagmaIsomorphism_1548 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1548 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1550 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1550 v2
du_isMagmaMonomorphism_1550 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1550 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1552 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1552 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1554 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1554 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1556 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1556 v0
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
d_isRelIsomorphism_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1558 ~v0 ~v1 v2 = du_isRelIsomorphism_1558 v2
du_isRelIsomorphism_1558 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1558 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1560 ~v0 ~v1 v2 = du_isRelMonomorphism_1560 v2
du_isRelMonomorphism_1560 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1560 v0
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
d_surjective_1562 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1562 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1564 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1564 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1566 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1566 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1570 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1570 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1572 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1572 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1574 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1574 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1576 ~v0 = du_isMagmaMonomorphism_1576
du_isMagmaMonomorphism_1576 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1576 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1578 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1578 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1580 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1580 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1582 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1582 ~v0 ~v1 v2 = du_isRelMonomorphism_1582 v2
du_isRelMonomorphism_1582 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1582 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1584 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1584 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1586 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1586 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1590 :: T_TransactionStructure_58 -> ()
d_Addr_1590 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AttrSizeOf
d_AttrSizeOf_1594 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1594 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1596 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1600 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1604 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1606 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1608 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1608 ~v0 = du_Dec'45'isScript_1608
du_Dec'45'isScript_1608 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1608
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1610 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1610 ~v0 = du_Dec'45'isVKey_1610
du_Dec'45'isVKey_1610 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1610
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1612 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1612 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1366 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1368 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1368 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1614 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1614 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1366 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1368 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1368 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1616 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1616 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1368 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1368 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1618 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1618 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1366 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1368 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1368 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize
d_HasAttrSize_1620 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1624 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1624 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1624
du_HasAttrSize'45'BootstrapAddr_1624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1624
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1626 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1630 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1630 ~v0
  = du_HasCredential'45'RewardAddress_1630
du_HasCredential'45'RewardAddress_1630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1630
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1632 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1636 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1640 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1640 ~v0
  = du_HasNetworkId'45'BaseAddr_1640
du_HasNetworkId'45'BaseAddr_1640 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1640
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1642 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1642 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1642
du_HasNetworkId'45'BootstrapAddr_1642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1642
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1644 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1644 ~v0
  = du_HasNetworkId'45'RewardAddress_1644
du_HasNetworkId'45'RewardAddress_1644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1644
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress
d_HasRewardAddress_1646 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals
d_HasWithdrawals_1650 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1654 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1656 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1656 ~v0 = du_IsBootstrapAddr'63'_1656
du_IsBootstrapAddr'63'_1656 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1656
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj
d_IsKeyHashObj_1660 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1662 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1662 ~v0 = du_IsKeyHashObj'63'_1662
du_IsKeyHashObj'63'_1662 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1662
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1666 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1668 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress
d_RewardAddress_1670 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddressOf
d_RewardAddressOf_1674 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1678 :: T_TransactionStructure_58 -> ()
d_ScriptAddr_1678 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1680 :: T_TransactionStructure_58 -> ()
d_ScriptBaseAddr_1680 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1682 :: T_TransactionStructure_58 -> ()
d_ScriptBootstrapAddr_1682 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1686 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1686 ~v0 = du_Show'45'Credential_1686
du_Show'45'Credential_1686 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1686 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1688 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1688 ~v0
  = du_Show'45'Credential'215'Coin_1688
du_Show'45'Credential'215'Coin_1688 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1688 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1690 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1690 ~v0 = du_Show'45'RewardAddress_1690
du_Show'45'RewardAddress_1690 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1690
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1692 :: T_TransactionStructure_58 -> ()
d_VKeyAddr_1692 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1694 :: T_TransactionStructure_58 -> ()
d_VKeyBaseAddr_1694 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1696 :: T_TransactionStructure_58 -> ()
d_VKeyBootstrapAddr_1696 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Withdrawals
d_Withdrawals_1700 :: T_TransactionStructure_58 -> ()
d_Withdrawals_1700 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.WithdrawalsOf
d_WithdrawalsOf_1702 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1704 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1704 ~v0 = du_getScriptHash_1704
du_getScriptHash_1704 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1704
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1706 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1706 ~v0 = du_isBootstrapAddr_1706
du_isBootstrapAddr_1706 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1706
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1708 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1708 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1710 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1710 ~v0 = du_isKeyHashObj_1710
du_isKeyHashObj_1710 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1710
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1712 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1712 ~v0 = du_isKeyHashObj'7495'_1712
du_isKeyHashObj'7495'_1712 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1712
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1714 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1716 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1716 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1718 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1718 ~v0 = du_isScriptObj_1718
du_isScriptObj_1718 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1718
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1720 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1720 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1722 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1724 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1724 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.netId
d_netId_1726 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1726 ~v0 = du_netId_1726
du_netId_1726 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1726
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1728 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1728 ~v0 = du_payCred_1728
du_payCred_1728 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1728
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1730 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1730 ~v0 = du_stakeCred_1730
du_stakeCred_1730 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1730
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1734 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1734 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1736 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1738 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1738 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1742 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1742 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1744 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1744 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1746 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1746 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1756 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1756 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1760 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1760 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1764 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1768 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1772 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1772 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1776 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1776 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.net
d_net_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.stake
d_stake_1790 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1790 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1802 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1802 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1804 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1804 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1806 ::
  T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1806 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1808 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1810 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1810 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1812 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1812 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1814 :: T_TransactionStructure_58 -> ()
d_Epoch_1814 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1816 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1818 ::
  T_TransactionStructure_58 -> AgdaAny
d_RandomnessStabilisationWindow_1818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1820 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1820 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1822 :: T_TransactionStructure_58 -> ()
d_Slot_1822 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1824 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1824 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1826 :: T_TransactionStructure_58 -> AgdaAny
d_StabilityWindow_1826 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1828 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1830 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.e<sucᵉ
d_e'60'suc'7497'_1832 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_1832 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1834 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_epoch_1834 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1836 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_firstSlot_1836 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1838 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1838 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1840 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_suc'7497'_1840 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1842 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_ℕtoEpoch_1842 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≤-predᵉ
d_'8804''45'pred'7497'_1844 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1844 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_1370 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_1848 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_1848 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (let v2 = d_epochStructure_1370 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                    (coe d_globalConstants_1366 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_396
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-NativeScript
d_DecEq'45'NativeScript_1850 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_1850 v0
  = let v1 = d_cryptoStructure_1368 (coe v0) in
    coe
      (let v2 = d_epochStructure_1370 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                    (coe d_globalConstants_1366 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_342
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.EvalNativeScript
d_EvalNativeScript_1852 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NativeScript
d_NativeScript_1854 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1856 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusLanguage
d_PlutusLanguage_1860 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1862 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1880 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  ()
d_P1Script_1946 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1948 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1962 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_CostModel_1964 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_T_1966 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_THash_1968 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1972 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Datum_1972 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1986 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1988 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_ExUnits_1992 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_LangDepView_1996 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Language_1998 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_PlutusScript_2000 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_2002 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV1_2002 ~v0 = du_PlutusV1_2002
du_PlutusV1_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV1_2002
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_2004 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV2_2004 ~v0 = du_PlutusV2_2004
du_PlutusV2_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV2_2004
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_2006 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV3_2006 ~v0 = du_PlutusV3_2006
du_PlutusV3_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV3_2006
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV4
d_PlutusV4_2008 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV4_2008 ~v0 = du_PlutusV4_2008
du_PlutusV4_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV4_2008
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Prices_2010 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_2012 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Redeemer_2012 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Language
d_Show'45'Language_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2022 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2024 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny
d_language_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2032 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2038 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_CostModel_2040 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_T_2042 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_THash_2044 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_2048 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_2048 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2064 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2064 ~v0
  = du_DecEq'45'LanguageCostModels_2064
du_DecEq'45'LanguageCostModels_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2064
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2068 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2070 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_ExUnits_2074 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2080 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2080 ~v0 = du_Hashable'45'Script_2080
du_Hashable'45'Script_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2080
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_LangDepView_2082 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Language_2084 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2086 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_P1Script_2090 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_PlutusScript_2092 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_2094 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV1_2094 ~v0 v1 = du_PlutusV1_2094 v1
du_PlutusV1_2094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV1_2094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_2096 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV2_2096 ~v0 v1 = du_PlutusV2_2096 v1
du_PlutusV2_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV2_2096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_2098 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV3_2098 ~v0 v1 = du_PlutusV3_2098 v1
du_PlutusV3_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV3_2098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV4
d_PlutusV4_2100 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV4_2100 ~v0 v1 = du_PlutusV4_2100 v1
du_PlutusV4_2100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV4_2100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_2102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Prices_2102 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_2104 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_2104 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_2106 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Script_2106 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Language
d_Show'45'Language_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2114 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2114 ~v0
  = du_Show'45'LanguageCostModels_2114
du_Show'45'LanguageCostModels_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2114
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2118 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2120 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2122 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_2128 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2128 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_2130 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2130 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_2132 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2132 ~v0 = du_isP1Script'63'_2132
du_isP1Script'63'_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2132 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_2134 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2134 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_2136 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2136 ~v0 = du_isP2Script'63'_2136
du_isP2Script'63'_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2136 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny
d_language_2138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.languageCostModels
d_languageCostModels_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_2144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_2144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_2148 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2148 ~v0 = du_toP1Script_2148
du_toP1Script_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_2150 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2150 ~v0 = du_toP2Script_2150
du_toP2Script_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2152 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2154 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_2162 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_2162 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__2166 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2166 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_2168 :: T_TransactionStructure_58 -> ()
d_CostModel_2168 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T
d_T_2170 :: T_TransactionStructure_58 -> ()
d_T_2170 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_2172 :: T_TransactionStructure_58 -> ()
d_THash_2172 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_2174 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Datum
d_Datum_2176 :: T_TransactionStructure_58 -> ()
d_Datum_2176 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_2178 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2180 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_2182 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_2184 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_2186 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_2188 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_2190 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2192 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_2194 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2196 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2196 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2162 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2198 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2198 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2162 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2200 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_2202 :: T_TransactionStructure_58 -> ()
d_ExUnits_2202 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_2204 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2206 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_2208 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_2210 :: T_TransactionStructure_58 -> ()
d_LangDepView_2210 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Language
d_Language_2212 :: T_TransactionStructure_58 -> ()
d_Language_2212 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels
d_LanguageCostModels_2214 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_2218 :: T_TransactionStructure_58 -> ()
d_P1Script_2218 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_2220 :: T_TransactionStructure_58 -> ()
d_PlutusScript_2220 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_2222 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV1_2222 v0
  = let v1 = d_scriptStructure_2162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_2224 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV2_2224 v0
  = let v1 = d_scriptStructure_2162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_2226 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV3_2226 v0
  = let v1 = d_scriptStructure_2162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV4
d_PlutusV4_2228 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV4_2228 v0
  = let v1 = d_scriptStructure_2162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Prices
d_Prices_2230 :: T_TransactionStructure_58 -> ()
d_Prices_2230 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_2232 :: T_TransactionStructure_58 -> ()
d_Redeemer_2232 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Script
d_Script_2234 :: T_TransactionStructure_58 -> ()
d_Script_2234 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_2236 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_2238 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Language
d_Show'45'Language_2240 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2242 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_2244 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2246 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2246 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2162 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2248 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2248 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2162 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_2250 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2250 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe d_scriptStructure_2162 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.fromPlutusLanguage
d_fromPlutusLanguage_2252 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_2254 ::
  T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_2256 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2256 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_2258 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2258 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_2260 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2260 ~v0 = du_isP1Script'63'_2260
du_isP1Script'63'_2260 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2260
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_2262 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2262 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_2264 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2264 ~v0 = du_isP2Script'63'_2264
du_isP2Script'63'_2264 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2264
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.language
d_language_2266 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_language_2266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.languageCostModels
d_languageCostModels_2268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.p1s
d_p1s_2272 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_2272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ps
d_ps_2274 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_2274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_2276 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2276 ~v0 = du_toP1Script_2276
du_toP1Script_2276 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_2278 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2278 ~v0 = du_toP2Script_2278
du_toP2Script_2278 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2278
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2280 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2280 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2282 ::
  T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2282 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_2284 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2162 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountOf
d_AccountOf_2292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2294 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2300 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2300 ~v0
  = du_DecEq'45'DrepThresholds_2300
du_DecEq'45'DrepThresholds_2300 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2300
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_614
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2302 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2302 ~v0 = du_DecEq'45'PParamGroup_2302
du_DecEq'45'PParamGroup_2302 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2302
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_620
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2304 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_618
      (coe d_epochStructure_1370 (coe v0))
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2306 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2306 ~v0
  = du_DecEq'45'PoolThresholds_2306
du_DecEq'45'PoolThresholds_2306 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2306
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_616
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2308 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2314 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount
d_HasAccount_2320 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_2324 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2328 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2328 ~v0 = du_HasCast'45'Acnt_2328
du_HasCast'45'Acnt_2328 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2328
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2330 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_2334 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_2334 ~v0 = du_HasReserves'45'Acnt_2334
du_HasReserves'45'Acnt_2334 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_2334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2336 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_2336 ~v0 = du_HasTreasury'45'Acnt_2336
du_HasTreasury'45'Acnt_2336 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_2336
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2340 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2342 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2346 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2352 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2358 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2358 ~v0 = du_Show'45'DrepThresholds_2358
du_Show'45'DrepThresholds_2358 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_622
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2360 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_626
      (coe d_epochStructure_1370 (coe v0))
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2362 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2362 ~v0 = du_Show'45'PoolThresholds_2362
du_Show'45'PoolThresholds_2362 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2362
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_624
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2366 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2366 ~v0 = du_paramsWF'45'elim_2366
du_paramsWF'45'elim_2366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2366 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2368 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_2368 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2370 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_2370 ~v0 = du_positivePParams_2370
du_positivePParams_2370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_2370
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_462
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_2376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_2378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2394 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  ()
d_UpdateT_2406 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_2410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2414 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> ()
d_ppdWellFormed_2414 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount.AccountOf
d_AccountOf_2420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_2444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2460 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_458
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_2462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minPoolCost
d_minPoolCost_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_2520 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2526 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> ()
d_ppdWellFormed_2526 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2532 ::
  T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2532 ~v0 = du__'63''8599'__2532
du__'63''8599'__2532 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2532 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1272
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2534 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__2534 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_686
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                  (coe d_scriptStructure_2162 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2536 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
      (coe d_epochStructure_1370 (coe v0))
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2538 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2542 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
      (coe d_scriptStructure_2162 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2544 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2544 ~v0 = du_modifiedUpdateGroups_2544
du_modifiedUpdateGroups_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2546 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesEconomicGroup_2546 ~v0 = du_modifiesEconomicGroup_2546
du_modifiesEconomicGroup_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesEconomicGroup_2546
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_944
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2548 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesGovernanceGroup_2548 ~v0
  = du_modifiesGovernanceGroup_2548
du_modifiesGovernanceGroup_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesGovernanceGroup_2548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1100
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2550 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesNetworkGroup_2550 ~v0 = du_modifiesNetworkGroup_2550
du_modifiesNetworkGroup_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesNetworkGroup_2550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_866
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2552 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesSecurityGroup_2552 ~v0 = du_modifiesSecurityGroup_2552
du_modifiesSecurityGroup_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesSecurityGroup_2552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1178
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2554 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesTechnicalGroup_2554 ~v0 = du_modifiesTechnicalGroup_2554
du_modifiesTechnicalGroup_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesTechnicalGroup_2554
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2556 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_paramsUpdateWellFormed_2556 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2558 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2560 ::
  T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2560 ~v0 = du_'8801''45'update_2560
du_'8801''45'update_2560 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2560 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1286
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_Emax_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_drepActivity_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxBlockExUnits_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxTxExUnits_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_prices_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govParams
d_govParams_2648 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_govParams_2648 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2650 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2650 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2652 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_txidBytes_2652 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_2654 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_2654 v0
  = case coe v0 of
      C_constructor_4660 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2658 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe d_govParams_2648 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2660 :: T_TransactionStructure_58 -> ()
d_UpdateT_2660 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2662 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_2648 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2664 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe d_govParams_2648 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2666 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_2648 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2668 :: T_TransactionStructure_58 -> AgdaAny -> ()
d_ppdWellFormed_2668 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2670 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_2648 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2674 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2674 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2650 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2676 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2676 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2678 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2678 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2680 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2682 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2684 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2688 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2692 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value
d_Value_2696 :: T_TransactionStructure_58 -> ()
d_Value_2696 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2698 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2700 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin
d_coin_2702 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_coin_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2704 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2704 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2706 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2708 ::
  T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2708 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.inject
d_inject_2710 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_inject_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2712 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2712 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2650 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.policies
d_policies_2714 ::
  T_TransactionStructure_58 -> AgdaAny -> [AgdaAny]
d_policies_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2716 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2716 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2650 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.size
d_size_2718 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_size_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2720 ::
  T_TransactionStructure_58 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2650 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ε
d_ε_2722 :: T_TransactionStructure_58 -> AgdaAny
d_ε_2722 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2650 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2726 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2728 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2728 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2730 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2732 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2734 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2738 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2740 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2742 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2742 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2744 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2744 ~v0 = du_isMagmaIsomorphism_2744
du_isMagmaIsomorphism_2744 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2744 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2746 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2746 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2746 v2
du_isMagmaMonomorphism_2746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2746 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2748 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2748 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2752 v0
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
d_isRelIsomorphism_2754 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2754 ~v0 ~v1 v2 = du_isRelIsomorphism_2754 v2
du_isRelIsomorphism_2754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2754 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2756 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2756 ~v0 ~v1 v2 = du_isRelMonomorphism_2756 v2
du_isRelMonomorphism_2756 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2756 v0
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
d_surjective_2758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2758 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2760 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2762 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2766 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2766 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2768 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2768 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2770 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2770 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2772 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2772 ~v0 = du_isMagmaMonomorphism_2772
du_isMagmaMonomorphism_2772 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2772 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2774 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2774 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2776 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2776 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2778 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2778 ~v0 ~v1 v2 = du_isRelMonomorphism_2778 v2
du_isRelMonomorphism_2778 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2778 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2780 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2780 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2782 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2782 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2784 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.C_constructor_1496
      (d_DecEq'45'TxId_1374 (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe d_adHashingScheme_1364 (coe v0)))
      (d_cryptoStructure_1368 (coe v0)) (d_epochStructure_1370 (coe v0))
      (d_globalConstants_1366 (coe v0)) (d_scriptStructure_2162 (coe v0))
      (d_govParams_2648 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2788 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  Bool
d_'61''61''45'GovAction_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1434
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2790 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1416
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2792 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Bool
d_'61''61''45'GovProposal_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1468
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_2794 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2794 ~v0 = du_'61''61''45'Set_2794
du_'61''61''45'Set_2794 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2794 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1404
      v1 v2 v3
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2796 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_AnchorOf_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DReps
d_DReps_2808 :: T_TransactionStructure_58 -> ()
d_DReps_2808 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2812 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1398
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2814 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2814 ~v0 = du_DecEq'45'GovActionType_2814
du_DecEq'45'GovActionType_2814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2814
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1288
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2816 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2816 ~v0 = du_DecEq'45'GovRole_2816
du_DecEq'45'GovRole_2816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2816
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1290
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2818 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1296
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2820 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1466
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2822 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1294
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2824 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2824 ~v0 = du_DecEq'45'Vote_2824
du_DecEq'45'Vote_2824 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2824
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1292
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1234 ->
  AgdaAny -> Integer
d_DepositOf_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1242
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2828 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2832 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866 ->
  ()
d_GovActionData_2832 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2834 :: T_TransactionStructure_58 -> ()
d_GovActionID_2834 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1096 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_GovActionOf_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1102
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2838 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2842 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866
d_GovActionTypeOf_2844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1066
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2846 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2850 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2852 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_856 ->
  ()
d_GovRoleCredential_2852 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2854 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_2858 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1114 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906
d_GovVoterOf_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1122
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_2864 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950
d_GovVotesOf_2868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_2870 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2874 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1214
d_HasAnchor'45'GovProposal_2874 ~v0
  = du_HasAnchor'45'GovProposal_2874
du_HasAnchor'45'GovProposal_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1214
du_HasAnchor'45'GovProposal_2874
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1268
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2876 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2876 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2876
du_HasCast'45'GovAction'45'Sigma_2876 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2876
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1252
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2878 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2878 ~v0 = du_HasCast'45'GovVote_2878
du_HasCast'45'GovVote_2878 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1394
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2880 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2880 ~v0
  = du_HasCast'45'HashProtected_2880
du_HasCast'45'HashProtected_2880 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1258
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2882 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2882 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2882
du_HasCast'45'HashProtected'45'MaybeScriptHash_2882 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2882
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1260
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_2884 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_2888 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2892 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1234
d_HasDeposit'45'GovProposal_2892 ~v0
  = du_HasDeposit'45'GovProposal_2892
du_HasDeposit'45'GovProposal_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1234
du_HasDeposit'45'GovProposal_2892
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1270
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_2894 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2898 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1096
d_HasGovAction'45'GovActionState_2898 ~v0
  = du_HasGovAction'45'GovActionState_2898
du_HasGovAction'45'GovActionState_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1096
du_HasGovAction'45'GovActionState_2898
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1274
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2900 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1096
d_HasGovAction'45'GovProposal_2900 ~v0
  = du_HasGovAction'45'GovProposal_2900
du_HasGovAction'45'GovProposal_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1096
du_HasGovAction'45'GovProposal_2900
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1272
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_2902 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2906 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060
d_HasGovActionType'45'GovAction_2906 ~v0
  = du_HasGovActionType'45'GovAction_2906
du_HasGovActionType'45'GovAction_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060
du_HasGovActionType'45'GovAction_2906
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1250
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2908 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060
d_HasGovActionType'45'GovActionState_2908 ~v0
  = du_HasGovActionType'45'GovActionState_2908
du_HasGovActionType'45'GovActionState_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060
du_HasGovActionType'45'GovActionState_2908
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1278
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2910 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060
d_HasGovActionType'45'GovProposal_2910 ~v0
  = du_HasGovActionType'45'GovProposal_2910
du_HasGovActionType'45'GovProposal_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060
du_HasGovActionType'45'GovProposal_2910
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1276
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_2912 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2916 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1114
d_HasGovVoter'45'GovVote_2916 ~v0 = du_HasGovVoter'45'GovVote_2916
du_HasGovVoter'45'GovVote_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1114
du_HasGovVoter'45'GovVote_2916
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_2918 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2922 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1134
d_HasGovVotes'45'GovActionState_2922 ~v0
  = du_HasGovVotes'45'GovActionState_2922
du_HasGovVotes'45'GovActionState_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1134
du_HasGovVotes'45'GovActionState_2922
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1280
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_2924 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2928 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1174
d_HasPolicy'45'GovProposal_2928 ~v0
  = du_HasPolicy'45'GovProposal_2928
du_HasPolicy'45'GovProposal_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1174
du_HasPolicy'45'GovProposal_2928
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1266
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2930 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2930 ~v0
  = du_HasRewardAddress'45'GovActionState_2930
du_HasRewardAddress'45'GovActionState_2930 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_2930
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1282
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2932 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2932 ~v0
  = du_HasRewardAddress'45'GovProposal_2932
du_HasRewardAddress'45'GovProposal_2932 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_2932
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1284
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote
d_HasVote_2934 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2938 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1154
d_HasVote'45'GovVote_2938 ~v0 = du_HasVote'45'GovVote_2938
du_HasVote'45'GovVote_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1154
du_HasVote'45'GovVote_2938
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1264
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2940 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_2944 :: T_TransactionStructure_58 -> () -> ()
d_HashProtected_2944 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_2948 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866 ->
  ()
d_NeedsHash_2948 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Policy
d_Policy_2954 :: T_TransactionStructure_58 -> ()
d_Policy_2954 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1174 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2960 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2960 ~v0 = du_Show'45'GovRole_2960
du_Show'45'GovRole_2960 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_2960
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1286
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2962 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1396
      (coe d_govStructure_2784 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_2970 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_2972 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_2974 :: T_TransactionStructure_58 -> ()
d_VoteDelegs_2974 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1154 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_898
d_VoteOf_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2982 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2982 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1574
      (coe d_govStructure_2784 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_2984 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2984 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  AgdaAny
d_gaData_2986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_892
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866
d_gaType_2988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_890
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_2990 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2990 ~v0 = du_govVoterCredential_2990
du_govVoterCredential_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_2990
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1044
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2992 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2992 ~v0 = du_isGovVoterDRep_2992
du_isGovVoterDRep_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_2992
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1040
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_2996 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2996 ~v0 = du_proposedCC_2996
du_proposedCC_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1052
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918 ->
  AgdaAny
d_hash_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_926
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_924
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  AgdaAny
d_gaData_3018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_892
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866
d_gaType_3020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_890
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_3024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1032
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.deposit
d_deposit_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  Integer
d_deposit_3026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1036
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_expiresIn_3028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1030
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  AgdaAny
d_prevAction_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1034
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1028
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950
d_votes_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1026
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_action_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_998
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_3056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1008
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Integer
d_deposit_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1004
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  Maybe AgdaAny
d_policy_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1002
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  AgdaAny
d_prevAction_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1000
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_anchor_3076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_946
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_940
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_898
d_vote_3080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_944
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906
d_voter_3082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_942
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvCredential
d_gvCredential_3086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  AgdaAny
d_gvCredential_3086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_914
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvRole
d_gvRole_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_856
d_gvRole_3088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_912
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvCC
d_gvCC_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_958
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvDRep
d_gvDRep_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_960
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvSPO
d_gvSPO_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_962
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_918
d_AnchorOf_3100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1234 ->
  AgdaAny -> Integer
d_DepositOf_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1242
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1096 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_884
d_GovActionOf_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1102
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1060 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_866
d_GovActionTypeOf_3116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1066
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1114 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_906
d_GovVoterOf_3120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1122
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_3124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_950
d_GovVotesOf_3124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1174 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1154 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_898
d_VoteOf_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1086
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCert
d_DCert_3188 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountBalanceIntervals
d_AccountBalanceIntervals_3624 :: T_TransactionStructure_58 -> ()
d_AccountBalanceIntervals_3624 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceInterval
d_BalanceInterval_3626 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3628 ::
  T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_856 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3628 ~v0
  = du_Dec'45'InBalanceInterval_3628
du_Dec'45'InBalanceInterval_3628 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_856 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3628
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_890
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3630 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3630 ~v0
  = du_DecEq'45'BalanceInterval_3630
du_DecEq'45'BalanceInterval_3630 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3630
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1014
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDeposits
d_DirectDeposits_3632 :: T_TransactionStructure_58 -> ()
d_DirectDeposits_3632 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.InBalanceInterval
d_InBalanceInterval_3636 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3672 :: T_TransactionStructure_58 -> ()
d_TxIn_3672 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3674 :: T_TransactionStructure_58 -> ()
d_TxOut_3674 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3676 :: T_TransactionStructure_58 -> ()
d_UTxO_3676 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.RedeemerPtr
d_RedeemerPtr_3678 :: T_TransactionStructure_58 -> ()
d_RedeemerPtr_3678 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3680 :: T_TransactionStructure_58 -> ()
d_ProposedPPUpdates_3680 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Update
d_Update_3682 :: T_TransactionStructure_58 -> ()
d_Update_3682 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3688 a0 a1 a2 = ()
newtype T_HasUTxO_3688
  = C_constructor_3698 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3696 ::
  T_HasUTxO_3688 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3696 v0
  = case coe v0 of
      C_constructor_3698 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3702 ::
  T_HasUTxO_3688 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3702 v0 = coe d_UTxOOf_3696 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx
d_Tx_3706 a0 a1 = ()
data T_Tx_3706
  = C_constructor_3736 T_TxBody_3710 T_TxWitnesses_3712 Integer
                       AgdaAny (Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3710 a0 a1 = ()
data T_TxBody_3710
  = C_constructor_3830 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
                       AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny (Maybe AgdaAny) AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3712 a0 = ()
data T_TxWitnesses_3712
  = C_constructor_3850 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txBody
d_txBody_3726 :: T_Tx_3706 -> T_TxBody_3710
d_txBody_3726 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txWitnesses
d_txWitnesses_3728 :: T_Tx_3706 -> T_TxWitnesses_3712
d_txWitnesses_3728 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txSize
d_txSize_3730 :: T_Tx_3706 -> Integer
d_txSize_3730 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3732 :: T_Tx_3706 -> AgdaAny
d_isValid_3732 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txAuxData
d_txAuxData_3734 :: T_Tx_3706 -> Maybe AgdaAny
d_txAuxData_3734 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txIns
d_txIns_3784 ::
  T_TxBody_3710 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3784 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_3786 ::
  T_TxBody_3710 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3786 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_3788 :: T_TxBody_3710 -> AgdaAny
d_collateralInputs_3788 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txOuts
d_txOuts_3790 ::
  T_TxBody_3710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3790 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txId
d_txId_3792 :: T_TxBody_3710 -> AgdaAny
d_txId_3792 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txCerts
d_txCerts_3794 ::
  T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_txCerts_3794 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txFee
d_txFee_3796 :: T_TxBody_3710 -> AgdaAny
d_txFee_3796 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_3798 ::
  T_TxBody_3710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3798 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txVldt
d_txVldt_3800 ::
  T_TxBody_3710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3800 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3802 :: T_TxBody_3710 -> Maybe AgdaAny
d_txADhash_3802 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDonation
d_txDonation_3804 :: T_TxBody_3710 -> Integer
d_txDonation_3804 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_3806 ::
  T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_3806 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_3808 ::
  T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_txGovProposals_3808 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3810 :: T_TxBody_3710 -> Maybe AgdaAny
d_txNetworkId_3810 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_3812 :: T_TxBody_3710 -> Maybe Integer
d_currentTreasury_3812 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3814 :: T_TxBody_3710 -> AgdaAny
d_mint_3814 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3816 :: T_TxBody_3710 -> Maybe AgdaAny
d_scriptIntegrityHash_3816 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_3818 :: T_TxBody_3710 -> AgdaAny
d_txSubTransactions_3818 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGuards
d_txGuards_3820 ::
  T_TxBody_3710 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3820 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3822 ::
  T_TxBody_3710 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3822 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_3824 ::
  T_TxBody_3710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3824 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_3826 ::
  T_TxBody_3710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3826 v0
  = case coe v0 of
      C_constructor_3830 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_3828 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_TxBody_3710 -> [AgdaAny]
d_requiredSignerHashes_3828 ~v0 ~v1 v2
  = du_requiredSignerHashes_3828 v2
du_requiredSignerHashes_3828 :: T_TxBody_3710 -> [AgdaAny]
du_requiredSignerHashes_3828 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
      (d_txGuards_3820 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_3840 ::
  T_TxWitnesses_3712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3840 v0
  = case coe v0 of
      C_constructor_3850 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3842 ::
  T_TxWitnesses_3712 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3842 v0
  = case coe v0 of
      C_constructor_3850 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txData
d_txData_3844 :: T_TxWitnesses_3712 -> [AgdaAny]
d_txData_3844 v0
  = case coe v0 of
      C_constructor_3850 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_3846 ::
  T_TxWitnesses_3712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3846 v0
  = case coe v0 of
      C_constructor_3850 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3848 ::
  T_TransactionStructure_58 -> T_TxWitnesses_3712 -> [AgdaAny]
d_scriptsP1_3848 ~v0 v1 = du_scriptsP1_3848 v1
du_scriptsP1_3848 :: T_TxWitnesses_3712 -> [AgdaAny]
du_scriptsP1_3848 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3842 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TopLevelTx
d_TopLevelTx_3852 :: T_TransactionStructure_58 -> ()
d_TopLevelTx_3852 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.SubLevelTx
d_SubLevelTx_3854 :: T_TransactionStructure_58 -> ()
d_SubLevelTx_3854 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3856 :: T_TransactionStructure_58 -> ()
d_AnyLevelTx_3856 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3864 a0 a1 a2 a3 = ()
newtype T_HasTxBody_3864
  = C_constructor_3876 (AgdaAny -> T_TxBody_3710)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3874 :: T_HasTxBody_3864 -> AgdaAny -> T_TxBody_3710
d_TxBodyOf_3874 v0
  = case coe v0 of
      C_constructor_3876 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3880 :: T_HasTxBody_3864 -> AgdaAny -> T_TxBody_3710
d_TxBodyOf_3880 v0 = coe d_TxBodyOf_3874 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3886 a0 a1 a2 = ()
newtype T_HasTxWitnesses_3886
  = C_constructor_3896 (AgdaAny -> T_TxWitnesses_3712)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_3894 ::
  T_HasTxWitnesses_3886 -> AgdaAny -> T_TxWitnesses_3712
d_TxWitnessesOf_3894 v0
  = case coe v0 of
      C_constructor_3896 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxWitnessesOf
d_TxWitnessesOf_3900 ::
  T_HasTxWitnesses_3886 -> AgdaAny -> T_TxWitnesses_3712
d_TxWitnessesOf_3900 v0 = coe d_TxWitnessesOf_3894 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers
d_HasRedeemers_3906 a0 a1 a2 = ()
newtype T_HasRedeemers_3906
  = C_constructor_3916 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_3914 ::
  T_HasRedeemers_3906 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_3914 v0
  = case coe v0 of
      C_constructor_3916 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RedeemersOf
d_RedeemersOf_3920 ::
  T_HasRedeemers_3906 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_3920 v0 = coe d_RedeemersOf_3914 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_3928 a0 a1 a2 a3 = ()
newtype T_HasCollateralInputs_3928
  = C_constructor_3940 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_3938 ::
  T_HasCollateralInputs_3928 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_3938 v0
  = case coe v0 of
      C_constructor_3940 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CollateralInputsOf
d_CollateralInputsOf_3944 ::
  T_HasCollateralInputs_3928 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_3944 v0
  = coe d_CollateralInputsOf_3938 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees
d_HasTxFees_3952 a0 a1 a2 a3 = ()
newtype T_HasTxFees_3952 = C_constructor_3964 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_3962 :: T_HasTxFees_3952 -> AgdaAny -> AgdaAny
d_TxFeesOf_3962 v0
  = case coe v0 of
      C_constructor_3964 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxFeesOf
d_TxFeesOf_3968 :: T_HasTxFees_3952 -> AgdaAny -> AgdaAny
d_TxFeesOf_3968 v0 = coe d_TxFeesOf_3962 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions
d_HasSubTransactions_3976 a0 a1 a2 a3 = ()
newtype T_HasSubTransactions_3976
  = C_constructor_3988 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_3986 ::
  T_HasSubTransactions_3976 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_3986 v0
  = case coe v0 of
      C_constructor_3988 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SubTransactionsOf
d_SubTransactionsOf_3992 ::
  T_HasSubTransactions_3976 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_3992 v0 = coe d_SubTransactionsOf_3986 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId
d_HasTxId_3998 a0 a1 a2 = ()
newtype T_HasTxId_3998 = C_constructor_4008 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_4006 :: T_HasTxId_3998 -> AgdaAny -> AgdaAny
d_TxIdOf_4006 v0
  = case coe v0 of
      C_constructor_4008 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxIdOf
d_TxIdOf_4012 :: T_HasTxId_3998 -> AgdaAny -> AgdaAny
d_TxIdOf_4012 v0 = coe d_TxIdOf_4006 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize
d_HasSize_4018 a0 a1 a2 = ()
newtype T_HasSize_4018 = C_constructor_4028 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize.SizeOf
d_SizeOf_4026 :: T_HasSize_4018 -> AgdaAny -> Integer
d_SizeOf_4026 v0
  = case coe v0 of
      C_constructor_4028 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SizeOf
d_SizeOf_4032 :: T_HasSize_4018 -> AgdaAny -> Integer
d_SizeOf_4032 v0 = coe d_SizeOf_4026 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_4038 a0 a1 a2 = ()
newtype T_HasTopLevelGuards_4038
  = C_constructor_4048 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_4046 ::
  T_HasTopLevelGuards_4038 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4046 v0
  = case coe v0 of
      C_constructor_4048 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TopLevelGuardsOf
d_TopLevelGuardsOf_4052 ::
  T_HasTopLevelGuards_4038 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4052 v0 = coe d_TopLevelGuardsOf_4046 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval
d_HasValidInterval_4058 a0 a1 a2 = ()
newtype T_HasValidInterval_4058
  = C_constructor_4068 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_4066 ::
  T_HasValidInterval_4058 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4066 v0
  = case coe v0 of
      C_constructor_4068 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ValidIntervalOf
d_ValidIntervalOf_4072 ::
  T_HasValidInterval_4058 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4072 v0 = coe d_ValidIntervalOf_4066 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs
d_HasSpendInputs_4078 a0 a1 a2 = ()
newtype T_HasSpendInputs_4078
  = C_constructor_4088 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_4086 ::
  T_HasSpendInputs_4078 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4086 v0
  = case coe v0 of
      C_constructor_4088 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SpendInputsOf
d_SpendInputsOf_4092 ::
  T_HasSpendInputs_4078 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4092 v0 = coe d_SpendInputsOf_4086 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_4098 a0 a1 a2 = ()
newtype T_HasReferenceInputs_4098
  = C_constructor_4108 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_4106 ::
  T_HasReferenceInputs_4098 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4106 v0
  = case coe v0 of
      C_constructor_4108 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ReferenceInputsOf
d_ReferenceInputsOf_4112 ::
  T_HasReferenceInputs_4098 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4112 v0 = coe d_ReferenceInputsOf_4106 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue
d_HasMintedValue_4118 a0 a1 a2 = ()
newtype T_HasMintedValue_4118
  = C_constructor_4128 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_4126 :: T_HasMintedValue_4118 -> AgdaAny -> AgdaAny
d_MintedValueOf_4126 v0
  = case coe v0 of
      C_constructor_4128 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MintedValueOf
d_MintedValueOf_4132 :: T_HasMintedValue_4118 -> AgdaAny -> AgdaAny
d_MintedValueOf_4132 v0 = coe d_MintedValueOf_4126 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?
d_HasFees'63'_4138 a0 a1 a2 = ()
newtype T_HasFees'63'_4138
  = C_constructor_4148 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_4146 :: T_HasFees'63'_4138 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4146 v0
  = case coe v0 of
      C_constructor_4148 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.FeesOf?
d_FeesOf'63'_4152 :: T_HasFees'63'_4138 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4152 v0 = coe d_FeesOf'63'_4146 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts
d_HasDCerts_4158 a0 a1 a2 = ()
newtype T_HasDCerts_4158
  = C_constructor_4168 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_4166 ::
  T_HasDCerts_4158 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_DCertsOf_4166 v0
  = case coe v0 of
      C_constructor_4168 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCertsOf
d_DCertsOf_4172 ::
  T_HasDCerts_4158 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_DCertsOf_4172 v0 = coe d_DCertsOf_4166 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals
d_HasGovProposals_4178 a0 a1 a2 = ()
newtype T_HasGovProposals_4178
  = C_constructor_4188 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_4186 ::
  T_HasGovProposals_4178 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_GovProposalsOf_4186 v0
  = case coe v0 of
      C_constructor_4188 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovProposalsOf
d_GovProposalsOf_4192 ::
  T_HasGovProposals_4178 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_GovProposalsOf_4192 v0 = coe d_GovProposalsOf_4186 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData
d_HasData_4198 a0 a1 a2 = ()
newtype T_HasData_4198 = C_constructor_4208 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData.DataOf
d_DataOf_4206 :: T_HasData_4198 -> AgdaAny -> [AgdaAny]
d_DataOf_4206 v0
  = case coe v0 of
      C_constructor_4208 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DataOf
d_DataOf_4212 :: T_HasData_4198 -> AgdaAny -> [AgdaAny]
d_DataOf_4212 v0 = coe d_DataOf_4206 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_4218 a0 a1 a2 = ()
newtype T_HasListOfGovProposals_4218
  = C_constructor_4228 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4226 ::
  T_HasListOfGovProposals_4218 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_ListOfGovProposalsOf_4226 v0
  = case coe v0 of
      C_constructor_4228 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4232 ::
  T_HasListOfGovProposals_4218 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_984]
d_ListOfGovProposalsOf_4232 v0
  = coe d_ListOfGovProposalsOf_4226 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_4238 a0 a1 a2 = ()
newtype T_HasListOfGovVotes_4238
  = C_constructor_4248 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_4246 ::
  T_HasListOfGovVotes_4238 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_ListOfGovVotesOf_4246 v0
  = case coe v0 of
      C_constructor_4248 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovVotesOf
d_ListOfGovVotesOf_4252 ::
  T_HasListOfGovVotes_4238 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_930]
d_ListOfGovVotesOf_4252 v0 = coe d_ListOfGovVotesOf_4246 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards
d_HasGuards_4258 a0 a1 a2 = ()
newtype T_HasGuards_4258
  = C_constructor_4268 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_4266 ::
  T_HasGuards_4258 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4266 v0
  = case coe v0 of
      C_constructor_4268 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GuardsOf
d_GuardsOf_4272 ::
  T_HasGuards_4258 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4272 v0 = coe d_GuardsOf_4266 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts
d_HasScripts_4278 a0 a1 a2 = ()
newtype T_HasScripts_4278
  = C_constructor_4288 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_4286 ::
  T_HasScripts_4278 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4286 v0
  = case coe v0 of
      C_constructor_4288 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptsOf
d_ScriptsOf_4292 ::
  T_HasScripts_4278 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4292 v0 = coe d_ScriptsOf_4286 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts
d_HasTxOuts_4298 a0 a1 a2 = ()
newtype T_HasTxOuts_4298
  = C_constructor_4308 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_4306 ::
  T_HasTxOuts_4298 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4306 v0
  = case coe v0 of
      C_constructor_4308 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxOutsOf
d_TxOutsOf_4312 ::
  T_HasTxOuts_4298 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4312 v0 = coe d_TxOutsOf_4306 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_4318 a0 a1 a2 = ()
newtype T_HasRequiredSingerHashes_4318
  = C_constructor_4328 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4326 ::
  T_HasRequiredSingerHashes_4318 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4326 v0
  = case coe v0 of
      C_constructor_4328 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4332 ::
  T_HasRequiredSingerHashes_4318 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4332 v0
  = coe d_RequiredSignerHashesOf_4326 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_4338 a0 a1 a2 = ()
newtype T_HasCurrentTreasury_4338
  = C_constructor_4348 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_4346 ::
  T_HasCurrentTreasury_4338 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4346 v0
  = case coe v0 of
      C_constructor_4348 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CurrentTreasuryOf
d_CurrentTreasuryOf_4352 ::
  T_HasCurrentTreasury_4338 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4352 v0 = coe d_CurrentTreasuryOf_4346 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_4358 a0 a1 a2 = ()
newtype T_HasDirectDeposits_4358
  = C_constructor_4368 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_4366 ::
  T_HasDirectDeposits_4358 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4366 v0
  = case coe v0 of
      C_constructor_4368 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDepositsOf
d_DirectDepositsOf_4372 ::
  T_HasDirectDeposits_4358 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4372 v0 = coe d_DirectDepositsOf_4366 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_4378 a0 a1 a2 = ()
newtype T_HasBalanceIntervals_4378
  = C_constructor_4388 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_4386 ::
  T_HasBalanceIntervals_4378 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4386 v0
  = case coe v0 of
      C_constructor_4388 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceIntervalsOf
d_BalanceIntervalsOf_4392 ::
  T_HasBalanceIntervals_4378 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4392 v0
  = coe d_BalanceIntervalsOf_4386 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_4398 a0 a1 a2 = ()
newtype T_HasIsValidFlag_4398
  = C_constructor_4408 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_4406 :: T_HasIsValidFlag_4398 -> AgdaAny -> Bool
d_IsValidFlagOf_4406 v0
  = case coe v0 of
      C_constructor_4408 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsValidFlagOf
d_IsValidFlagOf_4412 :: T_HasIsValidFlag_4398 -> AgdaAny -> Bool
d_IsValidFlagOf_4412 v0 = coe d_IsValidFlagOf_4406 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_4414 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxBody_3864
d_HasTxBody'45'Tx_4414 ~v0 ~v1 = du_HasTxBody'45'Tx_4414
du_HasTxBody'45'Tx_4414 :: T_HasTxBody_3864
du_HasTxBody'45'Tx_4414
  = coe C_constructor_3876 (coe (\ v0 -> d_txBody_3726 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_4416 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSize_4018
d_HasSize'45'Tx_4416 ~v0 ~v1 = du_HasSize'45'Tx_4416
du_HasSize'45'Tx_4416 :: T_HasSize_4018
du_HasSize'45'Tx_4416
  = coe C_constructor_4028 (coe (\ v0 -> d_txSize_3730 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_4418 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxWitnesses_3886
d_HasTxWitnesses'45'Tx_4418 ~v0 ~v1 = du_HasTxWitnesses'45'Tx_4418
du_HasTxWitnesses'45'Tx_4418 :: T_HasTxWitnesses_3886
du_HasTxWitnesses'45'Tx_4418
  = coe
      C_constructor_3896 (coe (\ v0 -> d_txWitnesses_3728 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_4420 ::
  T_TransactionStructure_58 -> T_HasIsValidFlag_4398
d_HasIsValidFlag'45'Tx_4420 ~v0 = du_HasIsValidFlag'45'Tx_4420
du_HasIsValidFlag'45'Tx_4420 :: T_HasIsValidFlag_4398
du_HasIsValidFlag'45'Tx_4420
  = coe C_constructor_4408 (coe (\ v0 -> d_isValid_3732 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_4422 ::
  T_TransactionStructure_58 -> T_HasRedeemers_3906
d_HasRedeemers'45'TxWitnesses_4422 ~v0
  = du_HasRedeemers'45'TxWitnesses_4422
du_HasRedeemers'45'TxWitnesses_4422 :: T_HasRedeemers_3906
du_HasRedeemers'45'TxWitnesses_4422
  = coe
      C_constructor_3916 (coe (\ v0 -> d_txRedeemers_3846 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_4424 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasRedeemers_3906
d_HasRedeemers'45'Tx_4424 ~v0 ~v1 = du_HasRedeemers'45'Tx_4424
du_HasRedeemers'45'Tx_4424 :: T_HasRedeemers_3906
du_HasRedeemers'45'Tx_4424
  = coe
      C_constructor_3916
      (coe
         (\ v0 -> d_txRedeemers_3846 (coe d_txWitnesses_3728 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_4426 ::
  T_TransactionStructure_58 -> T_HasCollateralInputs_3928
d_HasCollateralInputs'45'TopLevelTx_4426 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_4426
du_HasCollateralInputs'45'TopLevelTx_4426 ::
  T_HasCollateralInputs_3928
du_HasCollateralInputs'45'TopLevelTx_4426
  = coe
      C_constructor_3940
      (coe
         (\ v0 -> d_collateralInputs_3788 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_4428 ::
  T_TransactionStructure_58 -> T_HasTxFees_3952
d_HasTxFees'45'TopLevelTx_4428 ~v0
  = du_HasTxFees'45'TopLevelTx_4428
du_HasTxFees'45'TopLevelTx_4428 :: T_HasTxFees_3952
du_HasTxFees'45'TopLevelTx_4428
  = coe
      C_constructor_3964
      (coe (\ v0 -> d_txFee_3796 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_4430 ::
  T_TransactionStructure_58 -> T_HasSubTransactions_3976
d_HasSubTransactions'45'TopLevelTx_4430 ~v0
  = du_HasSubTransactions'45'TopLevelTx_4430
du_HasSubTransactions'45'TopLevelTx_4430 ::
  T_HasSubTransactions_3976
du_HasSubTransactions'45'TopLevelTx_4430
  = coe
      C_constructor_3988
      (coe
         (\ v0 -> d_txSubTransactions_3818 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_4432 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4038
d_HasTopLevelGuards'45'TxBody_4432 ~v0 ~v1
  = du_HasTopLevelGuards'45'TxBody_4432
du_HasTopLevelGuards'45'TxBody_4432 :: T_HasTopLevelGuards_4038
du_HasTopLevelGuards'45'TxBody_4432
  = coe
      C_constructor_4048
      (coe (\ v0 -> d_txRequiredTopLevelGuards_3822 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_4434 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4038
d_HasTopLevelGuards'45'Tx_4434 ~v0 ~v1
  = du_HasTopLevelGuards'45'Tx_4434
du_HasTopLevelGuards'45'Tx_4434 :: T_HasTopLevelGuards_4038
du_HasTopLevelGuards'45'Tx_4434
  = coe
      C_constructor_4048
      (coe
         (\ v0 ->
            d_txRequiredTopLevelGuards_3822 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_4436 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4158
d_HasDCerts'45'TxBody_4436 ~v0 ~v1 = du_HasDCerts'45'TxBody_4436
du_HasDCerts'45'TxBody_4436 :: T_HasDCerts_4158
du_HasDCerts'45'TxBody_4436
  = coe C_constructor_4168 (coe (\ v0 -> d_txCerts_3794 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_4438 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4158
d_HasDCerts'45'Tx_4438 ~v0 ~v1 = du_HasDCerts'45'Tx_4438
du_HasDCerts'45'Tx_4438 :: T_HasDCerts_4158
du_HasDCerts'45'Tx_4438
  = coe
      C_constructor_4168
      (coe (\ v0 -> d_txCerts_3794 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_4440 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_4440 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_4440
du_HasWithdrawals'45'TxBody_4440 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_4440
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3798 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_4442 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_4442 ~v0 ~v1 = du_HasWithdrawals'45'Tx_4442
du_HasWithdrawals'45'Tx_4442 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_4442
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3798 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_4444 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4358
d_HasDirectDeposits'45'TxBody_4444 ~v0 ~v1
  = du_HasDirectDeposits'45'TxBody_4444
du_HasDirectDeposits'45'TxBody_4444 :: T_HasDirectDeposits_4358
du_HasDirectDeposits'45'TxBody_4444
  = coe
      C_constructor_4368 (coe (\ v0 -> d_txDirectDeposits_3824 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_4446 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4358
d_HasDirectDeposits'45'Tx_4446 ~v0 ~v1
  = du_HasDirectDeposits'45'Tx_4446
du_HasDirectDeposits'45'Tx_4446 :: T_HasDirectDeposits_4358
du_HasDirectDeposits'45'Tx_4446
  = coe
      C_constructor_4368
      (coe
         (\ v0 -> d_txDirectDeposits_3824 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_4448 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4378
d_HasBalanceIntervals'45'TxBody_4448 ~v0 ~v1
  = du_HasBalanceIntervals'45'TxBody_4448
du_HasBalanceIntervals'45'TxBody_4448 :: T_HasBalanceIntervals_4378
du_HasBalanceIntervals'45'TxBody_4448
  = coe
      C_constructor_4388
      (coe (\ v0 -> d_txBalanceIntervals_3826 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_4450 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4378
d_HasBalanceIntervals'45'Tx_4450 ~v0 ~v1
  = du_HasBalanceIntervals'45'Tx_4450
du_HasBalanceIntervals'45'Tx_4450 :: T_HasBalanceIntervals_4378
du_HasBalanceIntervals'45'Tx_4450
  = coe
      C_constructor_4388
      (coe
         (\ v0 -> d_txBalanceIntervals_3826 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_4452 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4058
d_HasValidInterval'45'TxBody_4452 ~v0 ~v1
  = du_HasValidInterval'45'TxBody_4452
du_HasValidInterval'45'TxBody_4452 :: T_HasValidInterval_4058
du_HasValidInterval'45'TxBody_4452
  = coe C_constructor_4068 (coe (\ v0 -> d_txVldt_3800 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_4454 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4058
d_HasValidInterval'45'Tx_4454 ~v0 ~v1
  = du_HasValidInterval'45'Tx_4454
du_HasValidInterval'45'Tx_4454 :: T_HasValidInterval_4058
du_HasValidInterval'45'Tx_4454
  = coe
      C_constructor_4068
      (coe (\ v0 -> d_txVldt_3800 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_4456 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4078
d_HasSpendInputs'45'TxBody_4456 ~v0 ~v1
  = du_HasSpendInputs'45'TxBody_4456
du_HasSpendInputs'45'TxBody_4456 :: T_HasSpendInputs_4078
du_HasSpendInputs'45'TxBody_4456
  = coe C_constructor_4088 (coe (\ v0 -> d_txIns_3784 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_4458 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4078
d_HasSpendInputs'45'Tx_4458 ~v0 ~v1 = du_HasSpendInputs'45'Tx_4458
du_HasSpendInputs'45'Tx_4458 :: T_HasSpendInputs_4078
du_HasSpendInputs'45'Tx_4458
  = coe
      C_constructor_4088
      (coe (\ v0 -> d_txIns_3784 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_4460 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4098
d_HasReferenceInputs'45'TxBody_4460 ~v0 ~v1
  = du_HasReferenceInputs'45'TxBody_4460
du_HasReferenceInputs'45'TxBody_4460 :: T_HasReferenceInputs_4098
du_HasReferenceInputs'45'TxBody_4460
  = coe
      C_constructor_4108 (coe (\ v0 -> d_referenceInputs_3786 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_4462 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4098
d_HasReferenceInputs'45'Tx_4462 ~v0 ~v1
  = du_HasReferenceInputs'45'Tx_4462
du_HasReferenceInputs'45'Tx_4462 :: T_HasReferenceInputs_4098
du_HasReferenceInputs'45'Tx_4462
  = coe
      C_constructor_4108
      (coe (\ v0 -> d_referenceInputs_3786 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_4464 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4118
d_HasMintedValue'45'TxBody_4464 ~v0 ~v1
  = du_HasMintedValue'45'TxBody_4464
du_HasMintedValue'45'TxBody_4464 :: T_HasMintedValue_4118
du_HasMintedValue'45'TxBody_4464
  = coe C_constructor_4128 (coe (\ v0 -> d_mint_3814 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_4466 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4118
d_HasMintedValue'45'Tx_4466 ~v0 ~v1 = du_HasMintedValue'45'Tx_4466
du_HasMintedValue'45'Tx_4466 :: T_HasMintedValue_4118
du_HasMintedValue'45'Tx_4466
  = coe
      C_constructor_4128
      (coe (\ v0 -> d_mint_3814 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_4468 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4238
d_HasListOfGovVotes'45'TxBody_4468 ~v0 ~v1
  = du_HasListOfGovVotes'45'TxBody_4468
du_HasListOfGovVotes'45'TxBody_4468 :: T_HasListOfGovVotes_4238
du_HasListOfGovVotes'45'TxBody_4468
  = coe C_constructor_4248 (coe (\ v0 -> d_txGovVotes_3806 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_4470 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4238
d_HasListOfGovVotes'45'Tx_4470 ~v0 ~v1
  = du_HasListOfGovVotes'45'Tx_4470
du_HasListOfGovVotes'45'Tx_4470 :: T_HasListOfGovVotes_4238
du_HasListOfGovVotes'45'Tx_4470
  = coe
      C_constructor_4248
      (coe (\ v0 -> d_txGovVotes_3806 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_4472 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4218
d_HasListOfGovProposals'45'TxBody_4472 ~v0 ~v1
  = du_HasListOfGovProposals'45'TxBody_4472
du_HasListOfGovProposals'45'TxBody_4472 ::
  T_HasListOfGovProposals_4218
du_HasListOfGovProposals'45'TxBody_4472
  = coe
      C_constructor_4228 (coe (\ v0 -> d_txGovProposals_3808 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_4474 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4218
d_HasListOfGovProposals'45'Tx_4474 ~v0 ~v1
  = du_HasListOfGovProposals'45'Tx_4474
du_HasListOfGovProposals'45'Tx_4474 :: T_HasListOfGovProposals_4218
du_HasListOfGovProposals'45'Tx_4474
  = coe
      C_constructor_4228
      (coe (\ v0 -> d_txGovProposals_3808 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_4476 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_4476 ~v0 ~v1
  = du_HasMaybeNetworkId'45'TxBody_4476
du_HasMaybeNetworkId'45'TxBody_4476 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_4476
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3810 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_4478 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_4478 ~v0 ~v1
  = du_HasMaybeNetworkId'45'Tx_4478
du_HasMaybeNetworkId'45'Tx_4478 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_4478
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3810 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_4482 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4138
d_HasFees'63''45'TxBody_4482 ~v0 v1
  = du_HasFees'63''45'TxBody_4482 v1
du_HasFees'63''45'TxBody_4482 :: T_TxLevel_8 -> T_HasFees'63'_4138
du_HasFees'63''45'TxBody_4482 v0
  = coe
      C_constructor_4148
      (case coe v0 of
         C_TxLevelTop_10
           -> coe
                (\ v1 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe d_txFee_3796 (coe v1)))
         C_TxLevelSub_12
           -> coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_4488 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4138
d_HasFees'63''45'Tx_4488 ~v0 v1 = du_HasFees'63''45'Tx_4488 v1
du_HasFees'63''45'Tx_4488 :: T_TxLevel_8 -> T_HasFees'63'_4138
du_HasFees'63''45'Tx_4488 v0
  = coe
      C_constructor_4148
      (coe
         (\ v1 ->
            coe
              d_FeesOf'63'_4146 (coe du_HasFees'63''45'TxBody_4482 (coe v0))
              (d_txBody_3726 (coe v1))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_4490 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_3998
d_HasTxId'45'TxBody_4490 ~v0 ~v1 = du_HasTxId'45'TxBody_4490
du_HasTxId'45'TxBody_4490 :: T_HasTxId_3998
du_HasTxId'45'TxBody_4490
  = coe C_constructor_4008 (coe (\ v0 -> d_txId_3792 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_4492 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_3998
d_HasTxId'45'Tx_4492 ~v0 ~v1 = du_HasTxId'45'Tx_4492
du_HasTxId'45'Tx_4492 :: T_HasTxId_3998
du_HasTxId'45'Tx_4492
  = coe
      C_constructor_4008
      (coe (\ v0 -> d_txId_3792 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_4494 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_4494 ~v0 ~v1
  = du_HasDonations'45'TxBody_4494
du_HasDonations'45'TxBody_4494 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_4494
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_3804 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_4496 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_4496 ~v0 ~v1 = du_HasDonations'45'Tx_4496
du_HasDonations'45'Tx_4496 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_4496
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_3804 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_4498 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_4498 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2650 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_4500 ::
  T_TransactionStructure_58 -> T_HasData_4198
d_HasData'45'TxWitnesses_4500 ~v0 = du_HasData'45'TxWitnesses_4500
du_HasData'45'TxWitnesses_4500 :: T_HasData_4198
du_HasData'45'TxWitnesses_4500
  = coe C_constructor_4208 (coe (\ v0 -> d_txData_3844 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-Tx
d_HasData'45'Tx_4502 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasData_4198
d_HasData'45'Tx_4502 ~v0 ~v1 = du_HasData'45'Tx_4502
du_HasData'45'Tx_4502 :: T_HasData_4198
du_HasData'45'Tx_4502
  = coe
      C_constructor_4208
      (coe (\ v0 -> d_txData_3844 (coe d_txWitnesses_3728 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_4504 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4258
d_HasGuards'45'TxBody_4504 ~v0 ~v1 = du_HasGuards'45'TxBody_4504
du_HasGuards'45'TxBody_4504 :: T_HasGuards_4258
du_HasGuards'45'TxBody_4504
  = coe C_constructor_4268 (coe (\ v0 -> d_txGuards_3820 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_4506 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4258
d_HasGuards'45'Tx_4506 ~v0 ~v1 = du_HasGuards'45'Tx_4506
du_HasGuards'45'Tx_4506 :: T_HasGuards_4258
du_HasGuards'45'Tx_4506
  = coe
      C_constructor_4268
      (coe (\ v0 -> d_txGuards_3820 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_4508 ::
  T_TransactionStructure_58 -> T_HasScripts_4278
d_HasScripts'45'TxWitnesses_4508 ~v0
  = du_HasScripts'45'TxWitnesses_4508
du_HasScripts'45'TxWitnesses_4508 :: T_HasScripts_4278
du_HasScripts'45'TxWitnesses_4508
  = coe C_constructor_4288 (coe (\ v0 -> d_scripts_3842 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_4510 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasScripts_4278
d_HasScripts'45'Tx_4510 ~v0 ~v1 = du_HasScripts'45'Tx_4510
du_HasScripts'45'Tx_4510 :: T_HasScripts_4278
du_HasScripts'45'Tx_4510
  = coe
      C_constructor_4288
      (coe (\ v0 -> d_scripts_3842 (coe d_txWitnesses_3728 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_4512 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4298
d_HasTxOuts'45'TxBody_4512 ~v0 ~v1 = du_HasTxOuts'45'TxBody_4512
du_HasTxOuts'45'TxBody_4512 :: T_HasTxOuts_4298
du_HasTxOuts'45'TxBody_4512
  = coe C_constructor_4308 (coe (\ v0 -> d_txOuts_3790 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_4514 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4298
d_HasTxOuts'45'Tx_4514 ~v0 ~v1 = du_HasTxOuts'45'Tx_4514
du_HasTxOuts'45'Tx_4514 :: T_HasTxOuts_4298
du_HasTxOuts'45'Tx_4514
  = coe
      C_constructor_4308
      (coe (\ v0 -> d_txOuts_3790 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_4516 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4318
d_HasRequiredSingerHashes'45'TxBody_4516 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'TxBody_4516
du_HasRequiredSingerHashes'45'TxBody_4516 ::
  T_HasRequiredSingerHashes_4318
du_HasRequiredSingerHashes'45'TxBody_4516
  = coe C_constructor_4328 (coe du_requiredSignerHashes_3828)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_4518 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4318
d_HasRequiredSingerHashes'45'Tx_4518 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'Tx_4518
du_HasRequiredSingerHashes'45'Tx_4518 ::
  T_HasRequiredSingerHashes_4318
du_HasRequiredSingerHashes'45'Tx_4518
  = coe
      C_constructor_4328
      (coe
         (\ v0 ->
            coe du_requiredSignerHashes_3828 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_4520 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4338
d_HasCurrentTreasury'45'TxBody_4520 ~v0 ~v1
  = du_HasCurrentTreasury'45'TxBody_4520
du_HasCurrentTreasury'45'TxBody_4520 :: T_HasCurrentTreasury_4338
du_HasCurrentTreasury'45'TxBody_4520
  = coe
      C_constructor_4348 (coe (\ v0 -> d_currentTreasury_3812 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_4522 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4338
d_HasCurrentTreasury'45'Tx_4522 ~v0 ~v1
  = du_HasCurrentTreasury'45'Tx_4522
du_HasCurrentTreasury'45'Tx_4522 :: T_HasCurrentTreasury_4338
du_HasCurrentTreasury'45'Tx_4522
  = coe
      C_constructor_4348
      (coe (\ v0 -> d_currentTreasury_3812 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToScript
d_txOutToScript_4524 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4524 ~v0 v1 = du_txOutToScript_4524 v1
du_txOutToScript_4524 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_4524 v0
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
d_txOutToDatum_4528 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4528 ~v0 v1 = du_txOutToDatum_4528 v1
du_txOutToDatum_4528 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDatum_4528 v0
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
d_txOutToValue_4532 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4532 ~v0 v1 = du_txOutToValue_4532 v1
du_txOutToValue_4532 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_4532 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4536 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4536 ~v0 v1 = du_valuesOfUTxO_4536 v1
du_valuesOfUTxO_4536 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_valuesOfUTxO_4536 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToValue_4532)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputs
d_allSpendInputs_4538 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4538 ~v0 v1 = du_allSpendInputs_4538 v1
du_allSpendInputs_4538 ::
  T_Tx_3706 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_4538 v0
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
              (coe d_SpendInputsOf_4086 (coe du_HasSpendInputs'45'Tx_4458) v2)))
      (coe d_SpendInputsOf_4086 (coe du_HasSpendInputs'45'Tx_4458) v0)
      (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4546 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4546 ~v0 v1 = du_allSpendInputsList_4546 v1
du_allSpendInputsList_4546 ::
  T_Tx_3706 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_4546 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_SpendInputsOf_4086 (coe du_HasSpendInputs'45'Tx_4458) v0)
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (d_SpendInputsOf_4086 (coe du_HasSpendInputs'45'Tx_4458))
         (d_txSubTransactions_3818 (coe d_txBody_3726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4550 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4550 ~v0 v1 = du_allReferenceInputs_4550 v1
du_allReferenceInputs_4550 ::
  T_Tx_3706 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_4550 v0
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
                 d_ReferenceInputsOf_4106 (coe du_HasReferenceInputs'45'Tx_4462)
                 v2)))
      (coe
         d_ReferenceInputsOf_4106 (coe du_HasReferenceInputs'45'Tx_4462) v0)
      (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendTxOuts
d_spendTxOuts_4562 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4562 v0 ~v1 v2 v3 = du_spendTxOuts_4562 v0 v2 v3
du_spendTxOuts_4562 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_spendTxOuts_4562 v0 v1 v2
  = coe
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
               (coe d_DecEq'45'TxId_1374 (coe v0))
               (coe d_DecEq'45'Ix_1372 (coe v0))))
         (coe v2)
         (coe d_SpendInputsOf_4086 (coe du_HasSpendInputs'45'Tx_4458) v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4568 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4568 v0 ~v1 v2 v3
  = du_referencedTxOuts_4568 v0 v2 v3
du_referencedTxOuts_4568 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referencedTxOuts_4568 v0 v1 v2
  = coe
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
               (coe d_DecEq'45'TxId_1374 (coe v0))
               (coe d_DecEq'45'Ix_1372 (coe v0))))
         (coe v2)
         (coe
            d_ReferenceInputsOf_4106 (coe du_HasReferenceInputs'45'Tx_4462)
            v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4574 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4574 ~v0 v1 = du_scriptsOfUTxO_4574 v1
du_scriptsOfUTxO_4574 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_4574 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4524)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4576 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4576 ~v0 ~v1 v2 = du_scriptsOfTx_4576 v2
du_scriptsOfTx_4576 ::
  T_Tx_3706 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_4576 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4524)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4306 (coe du_HasTxOuts'45'Tx_4514) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendScripts
d_spendScripts_4578 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4578 v0 ~v1 = du_spendScripts_4578 v0
du_spendScripts_4578 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_spendScripts_4578 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du_mapPartial_604
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe du_txOutToScript_4524)))
      (coe du_spendTxOuts_4562 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceScripts
d_referenceScripts_4580 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4580 v0 ~v1 v2 v3
  = du_referenceScripts_4580 v0 v2 v3
du_referenceScripts_4580 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_referenceScripts_4580 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4524)
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_referencedTxOuts_4568 (coe v0) (coe v1) (coe v2))
         (coe du_spendTxOuts_4562 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4586 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4586 v0 v1 v2
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
              (coe du_referenceScripts_4580 (coe v0) (coe v4) (coe v2))))
      (coe du_referenceScripts_4580 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessScripts
d_witnessScripts_4596 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4596 ~v0 ~v1 = du_witnessScripts_4596
du_witnessScripts_4596 ::
  T_Tx_3706 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_4596
  = coe d_ScriptsOf_4286 (coe du_HasScripts'45'Tx_4510)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4598 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4598 ~v0 v1 = du_allWitnessScripts_4598 v1
du_allWitnessScripts_4598 ::
  T_Tx_3706 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_4598 v0
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
              (coe v1) (coe du_witnessScripts_4596 v2)))
      (coe du_witnessScripts_4596 v0)
      (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxScripts
d_getTxScripts_4606 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4606 v0 ~v1 v2 v3 = du_getTxScripts_4606 v0 v2 v3
du_getTxScripts_4606 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_getTxScripts_4606 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_scriptsOfTx_4576 (coe v1))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_spendScripts_4578 v0 v1 v2)
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe du_referenceScripts_4580 (coe v0) (coe v1) (coe v2))
            (coe du_witnessScripts_4596 v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getAllScripts
d_getAllScripts_4612 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4612 v0 v1 v2
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
              (coe v3) (coe du_getTxScripts_4606 (coe v0) (coe v4) (coe v2))))
      (coe du_getTxScripts_4606 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.dataOfTx
d_dataOfTx_4622 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3706 -> [AgdaAny]
d_dataOfTx_4622 ~v0 ~v1 v2 = du_dataOfTx_4622 v2
du_dataOfTx_4622 :: T_Tx_3706 -> [AgdaAny]
du_dataOfTx_4622 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4528)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4306 (coe du_HasTxOuts'45'Tx_4514) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4624 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4624 ~v0 v1 = du_txOutDataOfUTxO_4624 v1
du_txOutDataOfUTxO_4624 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_txOutDataOfUTxO_4624 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4528)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendData
d_spendData_4626 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4626 v0 ~v1 = du_spendData_4626 v0
du_spendData_4626 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_spendData_4626 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du_mapPartial_604
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe du_txOutToDatum_4528)))
      (coe du_spendTxOuts_4562 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceData
d_referenceData_4628 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3706 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4628 v0 ~v1 = du_referenceData_4628 v0
du_referenceData_4628 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_referenceData_4628 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.du_mapPartial_604
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe du_txOutToDatum_4528)))
      (coe du_referencedTxOuts_4568 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessData
d_witnessData_4630 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3706 -> [AgdaAny]
d_witnessData_4630 ~v0 ~v1 = du_witnessData_4630
du_witnessData_4630 :: T_Tx_3706 -> [AgdaAny]
du_witnessData_4630 = coe d_DataOf_4206 (coe du_HasData'45'Tx_4502)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxData
d_getTxData_4632 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3706 -> [AgdaAny]
d_getTxData_4632 ~v0 ~v1 v2 = du_getTxData_4632 v2
du_getTxData_4632 :: T_Tx_3706 -> [AgdaAny]
du_getTxData_4632 v0 = coe du_witnessData_4630 v0
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4636 ::
  T_TransactionStructure_58 -> T_Tx_3706 -> ()
d_NoOverlappingSpendInputs_4636 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allMintedCoin
d_allMintedCoin_4640 ::
  T_TransactionStructure_58 -> T_Tx_3706 -> Integer
d_allMintedCoin_4640 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                 (d_tokenAlgebra_2650 (coe v0))
                 (coe d_MintedValueOf_4126 (coe du_HasMintedValue'45'Tx_4466) v3))
              (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (d_tokenAlgebra_2650 (coe v0))
         (coe d_MintedValueOf_4126 (coe du_HasMintedValue'45'Tx_4466) v1))
      (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4648 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  AgdaAny ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4648 v0 ~v1 v2 v3 v4
  = du_lookupScriptHash_4648 v0 v2 v3 v4
du_lookupScriptHash_4648 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  T_Tx_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_lookupScriptHash_4648 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1368 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
         (d_scriptStructure_2162 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
               (coe d_scriptStructure_2162 (coe v0))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe d_scriptStructure_2162 (coe v0)))))
      (coe v1) (coe du_getTxScripts_4606 (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allDCerts
d_allDCerts_4656 ::
  T_TransactionStructure_58 ->
  T_Tx_3706 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
d_allDCerts_4656 ~v0 v1 = du_allDCerts_4656 v1
du_allDCerts_4656 ::
  T_Tx_3706 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1308]
du_allDCerts_4656 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe d_DCertsOf_4166 (coe du_HasDCerts'45'Tx_4438))
         (coe d_txSubTransactions_3818 (coe d_txBody_3726 (coe v0))))
      (coe d_DCertsOf_4166 (coe du_HasDCerts'45'Tx_4438) v0)
