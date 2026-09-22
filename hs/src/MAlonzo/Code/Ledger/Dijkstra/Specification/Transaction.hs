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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
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
  = C_constructor_4820 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
                       (AgdaAny -> AgdaAny)
                       MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
-- Ledger.Dijkstra.Specification.Transaction._.Network
d_Network_102 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Network_102 = erased
-- Ledger.Dijkstra.Specification.Transaction._.THash
d_THash_144 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_THash_144 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptHash
d_ScriptHash_150 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptHash_150 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Ser
d_Ser_152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Ser_152 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_182 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__192 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__192 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value
d_Value_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_210 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin
d_coin_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_222 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_222 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.inject
d_inject_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.policies
d_policies_228 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.size
d_size_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure
d_ScriptStructure_590 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Datum
d_Datum_758 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_758 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Redeemer
d_Redeemer_814 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_814 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.p1s
d_p1s_854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.ps
d_ps_856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.Datum
d_Datum_886 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_886 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Redeemer
d_Redeemer_942 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_942 = erased
-- Ledger.Dijkstra.Specification.Transaction._.GovParams
d_GovParams_1024 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.ppUpd
d_ppUpd_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Ix
d_Ix_1402 :: T_TransactionStructure_58 -> ()
d_Ix_1402 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxId
d_TxId_1404 :: T_TransactionStructure_58 -> ()
d_TxId_1404 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1406 :: T_TransactionStructure_58 -> ()
d_AuxiliaryData_1406 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1408 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1408 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1410 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1410 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1412 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1412 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.leiosCryptoStructure
d_leiosCryptoStructure_1414 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1414 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1416 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1416 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1418 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1418 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1420 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1420 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1424 :: T_TransactionStructure_58 -> ()
d_THash_1424 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1426 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1426 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1408 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1428 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1428 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1408 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1430 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1430 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1408 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1432 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1408 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1436 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_332
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1438 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_1440 :: T_TransactionStructure_58 -> Integer
d_MaxKESEvo'7580'_1440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_346
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1442 ::
  T_TransactionStructure_58 -> Integer
d_MaxLovelaceSupply'7580'_1442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_340
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Network
d_Network_1444 :: T_TransactionStructure_58 -> ()
d_Network_1444 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1446 :: T_TransactionStructure_58 -> AgdaAny
d_NetworkId_1446 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_344
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1448 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_350
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1450 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1450 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_330
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1452 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_334
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1454 :: T_TransactionStructure_58 -> Integer
d_Quorum_1454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_342
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1456 ::
  T_TransactionStructure_58 -> Integer
d_RandomnessStabilisationWindow'7580'_1456 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_336
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1458 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_326
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1460 :: T_TransactionStructure_58 -> Integer
d_SlotsPerEpoch'7580'_1460 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_328
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_1462 ::
  T_TransactionStructure_58 -> Integer
d_SlotsPerKESPeriod'7580'_1462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_348
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1464 ::
  T_TransactionStructure_58 -> Integer
d_StabilityWindow'7580'_1464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_338
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.maxKeyAgeEpochs
d_maxKeyAgeEpochs_1466 :: T_TransactionStructure_58 -> Integer
d_maxKeyAgeEpochs_1466 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_maxKeyAgeEpochs_352
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1468 ::
  T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1468 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1470 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1470 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_366
      (coe d_globalConstants_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1474 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1474 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1476 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1476 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d_cryptoStructure_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1478 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1478 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1480 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1480 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1482 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1482 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-VRF
d_DecEq'45'VRF_1484 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d_cryptoStructure_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1486 :: T_TransactionStructure_58 -> ()
d_THash_1486 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1488 :: T_TransactionStructure_58 -> ()
d_KeyPair_1488 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1490 :: T_TransactionStructure_58 -> ()
d_SKey_1490 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1492 :: T_TransactionStructure_58 -> ()
d_ScriptHash_1492 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1494 :: T_TransactionStructure_58 -> ()
d_Ser_1494 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1496 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d_cryptoStructure_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1498 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1498 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1500 :: T_TransactionStructure_58 -> ()
d_Sig_1500 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1502 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1502 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1504 :: T_TransactionStructure_58 -> ()
d_VKey_1504 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VRF
d_VRF_1506 :: T_TransactionStructure_58 -> ()
d_VRF_1506 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1508 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1508 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1510 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1510 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1512 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1512 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.khs
d_khs_1514 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d_cryptoStructure_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1516 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1516 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d_cryptoStructure_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sign
d_sign_1518 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1518 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1522 :: T_TransactionStructure_58 -> ()
d_MemoryEstimate_1522 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1524 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1530 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1532 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1534 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1538 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1540 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1544 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1548 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1552 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1556 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1556 ~v0 = du_addValue_1556
du_addValue_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1560 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1560 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1564 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1568 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1572 v0
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
d_size_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1576 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1576 ~v0 = du_sum'7515'_1576
du_sum'7515'_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1578 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1582 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1582 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1584 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1584 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1586 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1586 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1588 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1588 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1590 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1590 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1594 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1594 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1596 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1596 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1598 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1598 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1600 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1600 ~v0 = du_isMagmaIsomorphism_1600
du_isMagmaIsomorphism_1600 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1600 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1602 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1602 v2
du_isMagmaMonomorphism_1602 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1602 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1604 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1604 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1606 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1606 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1608 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1608 v0
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
d_isRelIsomorphism_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1610 ~v0 ~v1 v2 = du_isRelIsomorphism_1610 v2
du_isRelIsomorphism_1610 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1610 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1612 ~v0 ~v1 v2 = du_isRelMonomorphism_1612 v2
du_isRelMonomorphism_1612 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1612 v0
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
d_surjective_1614 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1614 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1616 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1616 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1618 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1618 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1622 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1624 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1626 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1628 ~v0 = du_isMagmaMonomorphism_1628
du_isMagmaMonomorphism_1628 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1628 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1630 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1630 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1632 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1632 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1634 ~v0 ~v1 v2 = du_isRelMonomorphism_1634 v2
du_isRelMonomorphism_1634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1634 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1636 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1638 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1638 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1642 :: T_TransactionStructure_58 -> ()
d_Addr_1642 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AttrSizeOf
d_AttrSizeOf_1646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1648 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1652 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1656 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1660 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1660 ~v0 = du_Dec'45'isScript_1660
du_Dec'45'isScript_1660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1660
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1662 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1662 ~v0 = du_Dec'45'isVKey_1662
du_Dec'45'isVKey_1662 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1662
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1664 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1664 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
         (coe d_globalConstants_1410 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1412 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1412 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1666 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
         (coe d_globalConstants_1410 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1412 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1412 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1668 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1412 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1412 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1670 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
         (coe d_globalConstants_1410 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1412 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1412 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize
d_HasAttrSize_1672 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1676 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1676 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1676
du_HasAttrSize'45'BootstrapAddr_1676 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1676
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1678 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1682 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1682 ~v0
  = du_HasCredential'45'RewardAddress_1682
du_HasCredential'45'RewardAddress_1682 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1682
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1684 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1688 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1692 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1692 ~v0
  = du_HasNetworkId'45'BaseAddr_1692
du_HasNetworkId'45'BaseAddr_1692 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1692
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1694 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1694 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1694
du_HasNetworkId'45'BootstrapAddr_1694 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1694
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1696 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1696 ~v0
  = du_HasNetworkId'45'RewardAddress_1696
du_HasNetworkId'45'RewardAddress_1696 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1696
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress
d_HasRewardAddress_1698 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals
d_HasWithdrawals_1702 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1706 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1708 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1708 ~v0 = du_IsBootstrapAddr'63'_1708
du_IsBootstrapAddr'63'_1708 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1708
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj
d_IsKeyHashObj_1712 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1714 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1714 ~v0 = du_IsKeyHashObj'63'_1714
du_IsKeyHashObj'63'_1714 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1714
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1718 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1718 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1720 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress
d_RewardAddress_1722 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddressOf
d_RewardAddressOf_1726 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1726 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1730 :: T_TransactionStructure_58 -> ()
d_ScriptAddr_1730 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1732 :: T_TransactionStructure_58 -> ()
d_ScriptBaseAddr_1732 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1734 :: T_TransactionStructure_58 -> ()
d_ScriptBootstrapAddr_1734 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1738 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1738 ~v0 = du_Show'45'Credential_1738
du_Show'45'Credential_1738 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1738 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1740 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1740 ~v0
  = du_Show'45'Credential'215'Coin_1740
du_Show'45'Credential'215'Coin_1740 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1740 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1742 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1742 ~v0 = du_Show'45'RewardAddress_1742
du_Show'45'RewardAddress_1742 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1742
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1744 :: T_TransactionStructure_58 -> ()
d_VKeyAddr_1744 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1746 :: T_TransactionStructure_58 -> ()
d_VKeyBaseAddr_1746 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1748 :: T_TransactionStructure_58 -> ()
d_VKeyBootstrapAddr_1748 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Withdrawals
d_Withdrawals_1752 :: T_TransactionStructure_58 -> ()
d_Withdrawals_1752 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.WithdrawalsOf
d_WithdrawalsOf_1754 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1754 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1756 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1756 ~v0 = du_getScriptHash_1756
du_getScriptHash_1756 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1756
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1758 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1758 ~v0 = du_isBootstrapAddr_1758
du_isBootstrapAddr_1758 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1758
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1760 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1760 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1762 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1762 ~v0 = du_isKeyHashObj_1762
du_isKeyHashObj_1762 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1762
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1764 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1764 ~v0 = du_isKeyHashObj'7495'_1764
du_isKeyHashObj'7495'_1764 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1764
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1766 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1768 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1768 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1770 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1770 ~v0 = du_isScriptObj_1770
du_isScriptObj_1770 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1770
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1772 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1772 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1774 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1776 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1776 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.netId
d_netId_1778 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1778 ~v0 = du_netId_1778
du_netId_1778 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1778
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1780 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1780 ~v0 = du_payCred_1780
du_payCred_1780 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1780
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1782 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1782 ~v0 = du_stakeCred_1782
du_stakeCred_1782 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1782
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1786 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1786 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1790 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1790 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1794 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1794 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1796 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1796 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1798 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1798 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1808 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1812 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1812 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1816 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1820 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1820 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1824 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1824 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1828 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.net
d_net_1840 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1840 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.stake
d_stake_1842 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1842 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1854 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1854 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1856 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1856 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1858 ::
  T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1858 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1860 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1862 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1862 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1864 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1864 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1866 :: T_TransactionStructure_58 -> ()
d_Epoch_1866 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1868 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1870 ::
  T_TransactionStructure_58 -> AgdaAny
d_RandomnessStabilisationWindow_1870 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1872 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1872 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1874 :: T_TransactionStructure_58 -> ()
d_Slot_1874 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1876 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1876 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1878 :: T_TransactionStructure_58 -> AgdaAny
d_StabilityWindow_1878 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1880 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1882 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.e<sucᵉ
d_e'60'suc'7497'_1884 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_1884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1886 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_epoch_1886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1888 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_firstSlot_1888 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1890 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1890 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1892 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_suc'7497'_1892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1894 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_ℕtoEpoch_1894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≤-predᵉ
d_'8804''45'pred'7497'_1896 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1896 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_1900 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_1900 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (let v2 = d_epochStructure_1416 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
                    (coe d_globalConstants_1410 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_396
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-NativeScript
d_DecEq'45'NativeScript_1902 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_1902 v0
  = let v1 = d_cryptoStructure_1412 (coe v0) in
    coe
      (let v2 = d_epochStructure_1416 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
                    (coe d_globalConstants_1410 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_342
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.EvalNativeScript
d_EvalNativeScript_1904 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NativeScript
d_NativeScript_1906 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1908 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusLanguage
d_PlutusLanguage_1912 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1914 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1932 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  ()
d_P1Script_1998 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2000 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2014 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_CostModel_2016 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_T_2018 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_THash_2020 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_2024 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Datum_2024 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2038 v0
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
d_DecEq'45'THash_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2040 v0
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
d_ExUnit'45'CommutativeMonoid_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_ExUnits_2044 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_LangDepView_2048 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Language_2050 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_PlutusScript_2052 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_2054 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV1_2054 ~v0 = du_PlutusV1_2054
du_PlutusV1_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV1_2054
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_2056 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV2_2056 ~v0 = du_PlutusV2_2056
du_PlutusV2_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV2_2056
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_2058 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV3_2058 ~v0 = du_PlutusV3_2058
du_PlutusV3_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV3_2058
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV4
d_PlutusV4_2060 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV4_2060 ~v0 = du_PlutusV4_2060
du_PlutusV4_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV4_2060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Prices_2062 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_2064 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Redeemer_2064 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Language
d_Show'45'Language_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2074 v0
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
d_T'45'Hashable_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2076 v0
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
d_T'45'isHashable_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2078 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny
d_language_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2084 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2090 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_CostModel_2092 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_2094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_T_2094 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_THash_2096 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_2100 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_2100 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2116 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2116 ~v0
  = du_DecEq'45'LanguageCostModels_2116
du_DecEq'45'LanguageCostModels_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2116
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2120 v0
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
d_DecEq'45'THash_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2122 v0
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
d_ExUnit'45'CommutativeMonoid_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_ExUnits_2126 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2132 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2132 ~v0 = du_Hashable'45'Script_2132
du_Hashable'45'Script_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2132
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_LangDepView_2134 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Language_2136 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2138 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_P1Script_2142 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_2144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_PlutusScript_2144 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_2146 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV1_2146 ~v0 v1 = du_PlutusV1_2146 v1
du_PlutusV1_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV1_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_2148 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV2_2148 ~v0 v1 = du_PlutusV2_2148 v1
du_PlutusV2_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV2_2148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_2150 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV3_2150 ~v0 v1 = du_PlutusV3_2150 v1
du_PlutusV3_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV3_2150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV4
d_PlutusV4_2152 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV4_2152 ~v0 v1 = du_PlutusV4_2152 v1
du_PlutusV4_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV4_2152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Prices_2154 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_2156 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_2156 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_2158 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Script_2158 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Language
d_Show'45'Language_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2166 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2166 ~v0
  = du_Show'45'LanguageCostModels_2166
du_Show'45'LanguageCostModels_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2166
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_2168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2170 v0
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
d_T'45'Hashable_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2172 v0
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
d_T'45'isHashable_2174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2174 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_2180 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2180 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_2182 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2182 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_2184 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2184 ~v0 = du_isP1Script'63'_2184
du_isP1Script'63'_2184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2184 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_2186 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2186 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_2188 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2188 ~v0 = du_isP2Script'63'_2188
du_isP2Script'63'_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2188 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_2190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny
d_language_2190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.languageCostModels
d_languageCostModels_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_2196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_2196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_2198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_2200 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2200 ~v0 = du_toP1Script_2200
du_toP1Script_2200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_2202 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2202 ~v0 = du_toP2Script_2202
du_toP2Script_2202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_2204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2204 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_2206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2206 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_2214 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_2214 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__2218 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2218 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_2220 :: T_TransactionStructure_58 -> ()
d_CostModel_2220 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T
d_T_2222 :: T_TransactionStructure_58 -> ()
d_T_2222 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_2224 :: T_TransactionStructure_58 -> ()
d_THash_2224 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_2226 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Datum
d_Datum_2228 :: T_TransactionStructure_58 -> ()
d_Datum_2228 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_2230 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2232 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_2234 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_2236 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_2238 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_2240 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_2242 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2244 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_2246 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2248 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2248 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2214 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2250 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2250 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2214 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2252 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_2254 :: T_TransactionStructure_58 -> ()
d_ExUnits_2254 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_2256 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2258 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_2260 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_2262 :: T_TransactionStructure_58 -> ()
d_LangDepView_2262 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Language
d_Language_2264 :: T_TransactionStructure_58 -> ()
d_Language_2264 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels
d_LanguageCostModels_2266 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_2270 :: T_TransactionStructure_58 -> ()
d_P1Script_2270 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_2272 :: T_TransactionStructure_58 -> ()
d_PlutusScript_2272 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_2274 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV1_2274 v0
  = let v1 = d_scriptStructure_2214 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_2276 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV2_2276 v0
  = let v1 = d_scriptStructure_2214 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_2278 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV3_2278 v0
  = let v1 = d_scriptStructure_2214 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV4
d_PlutusV4_2280 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV4_2280 v0
  = let v1 = d_scriptStructure_2214 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Prices
d_Prices_2282 :: T_TransactionStructure_58 -> ()
d_Prices_2282 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_2284 :: T_TransactionStructure_58 -> ()
d_Redeemer_2284 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Script
d_Script_2286 :: T_TransactionStructure_58 -> ()
d_Script_2286 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_2288 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_2290 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Language
d_Show'45'Language_2292 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2294 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_2296 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2298 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2298 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2214 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2300 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2300 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2214 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_2302 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2302 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe d_scriptStructure_2214 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.fromPlutusLanguage
d_fromPlutusLanguage_2304 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_2306 ::
  T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_2308 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2308 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_2310 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2310 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_2312 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2312 ~v0 = du_isP1Script'63'_2312
du_isP1Script'63'_2312 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2312
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_2314 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2314 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_2316 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2316 ~v0 = du_isP2Script'63'_2316
du_isP2Script'63'_2316 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2316
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.language
d_language_2318 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_language_2318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.languageCostModels
d_languageCostModels_2320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.p1s
d_p1s_2324 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_2324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ps
d_ps_2326 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_2326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_2328 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2328 ~v0 = du_toP1Script_2328
du_toP1Script_2328 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2328
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_2330 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2330 ~v0 = du_toP2Script_2330
du_toP2Script_2330 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2330
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2332 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2332 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2334 ::
  T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2334 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_2336 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2214 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_2340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountOf
d_AccountOf_2344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2346 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2352 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2352 ~v0
  = du_DecEq'45'DrepThresholds_2352
du_DecEq'45'DrepThresholds_2352 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2352
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_668
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2354 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2354 ~v0 = du_DecEq'45'PParamGroup_2354
du_DecEq'45'PParamGroup_2354 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2354
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_674
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2356 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_672
      (coe d_epochStructure_1416 (coe v0))
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2358 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2358 ~v0
  = du_DecEq'45'PoolThresholds_2358
du_DecEq'45'PoolThresholds_2358 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_670
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2360 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2366 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount
d_HasAccount_2372 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_2376 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2380 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2380 ~v0 = du_HasCast'45'Acnt_2380
du_HasCast'45'Acnt_2380 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2380
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2382 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_2386 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
d_HasReserves'45'Acnt_2386 ~v0 = du_HasReserves'45'Acnt_2386
du_HasReserves'45'Acnt_2386 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
du_HasReserves'45'Acnt_2386
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2388 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_2388 ~v0 = du_HasTreasury'45'Acnt_2388
du_HasTreasury'45'Acnt_2388 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
du_HasTreasury'45'Acnt_2388
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2392 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2394 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2398 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2404 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2410 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2410 ~v0 = du_Show'45'DrepThresholds_2410
du_Show'45'DrepThresholds_2410 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_676
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2412 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_680
      (coe d_epochStructure_1416 (coe v0))
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2414 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2414 ~v0 = du_Show'45'PoolThresholds_2414
du_Show'45'PoolThresholds_2414 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2414
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2418 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2418 ~v0 = du_paramsWF'45'elim_2418
du_paramsWF'45'elim_2418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2418 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_608
      v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2420 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_2420 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2422 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_2422 ~v0 = du_positivePParams_2422
du_positivePParams_2422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_2422
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_498
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_2430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  ()
d_UpdateT_2458 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_2462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2466 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> ()
d_ppdWellFormed_2466 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount.AccountOf
d_AccountOf_2472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2512 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minPoolCost
d_minPoolCost_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_2590 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2596 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> ()
d_ppdWellFormed_2596 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2602 ::
  T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2602 ~v0 = du__'63''8599'__2602
du__'63''8599'__2602 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2602 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1470
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2604 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__2604 v0 v1 v2
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
                  (coe d_scriptStructure_2214 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2606 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
      (coe d_epochStructure_1416 (coe v0))
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2608 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2612 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
      (coe d_scriptStructure_2214 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2614 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2614 ~v0 = du_modifiedUpdateGroups_2614
du_modifiedUpdateGroups_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2614
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2616 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesEconomicGroup_2616 ~v0 = du_modifiesEconomicGroup_2616
du_modifiesEconomicGroup_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesEconomicGroup_2616
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1070
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2618 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesGovernanceGroup_2618 ~v0
  = du_modifiesGovernanceGroup_2618
du_modifiesGovernanceGroup_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesGovernanceGroup_2618
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2620 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesNetworkGroup_2620 ~v0 = du_modifiesNetworkGroup_2620
du_modifiesNetworkGroup_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesNetworkGroup_2620
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_974
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2622 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesSecurityGroup_2622 ~v0 = du_modifiesSecurityGroup_2622
du_modifiesSecurityGroup_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesSecurityGroup_2622
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1358
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2624 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesTechnicalGroup_2624 ~v0 = du_modifiesTechnicalGroup_2624
du_modifiesTechnicalGroup_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesTechnicalGroup_2624
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1166
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2626 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_paramsUpdateWellFormed_2626 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2628 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.≡-update
d_'8801''45'update_2630 ::
  T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2630 ~v0 = du_'8801''45'update_2630
du_'8801''45'update_2630 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2630 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1484
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_Emax_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_drepActivity_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxBlockExUnits_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_2684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_2688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxTxExUnits_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_prices_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govParams
d_govParams_2736 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_govParams_2736 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2738 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2738 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2740 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_txidBytes_2740 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_2742 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_2742 v0
  = case coe v0 of
      C_constructor_4820 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2746 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe d_govParams_2736 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2748 :: T_TransactionStructure_58 -> ()
d_UpdateT_2748 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2750 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_2736 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2752 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe d_govParams_2736 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2754 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_2736 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2756 :: T_TransactionStructure_58 -> AgdaAny -> ()
d_ppdWellFormed_2756 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2758 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_2736 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2762 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2762 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2738 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2764 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2764 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2766 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2766 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2768 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2770 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2772 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2776 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2780 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value
d_Value_2784 :: T_TransactionStructure_58 -> ()
d_Value_2784 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2786 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2788 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin
d_coin_2790 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_coin_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2792 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2792 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2794 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2796 ::
  T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2796 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.inject
d_inject_2798 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_inject_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2800 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2800 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2738 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.policies
d_policies_2802 ::
  T_TransactionStructure_58 -> AgdaAny -> [AgdaAny]
d_policies_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2804 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2804 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2738 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.size
d_size_2806 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_size_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2808 ::
  T_TransactionStructure_58 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2738 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ε
d_ε_2810 :: T_TransactionStructure_58 -> AgdaAny
d_ε_2810 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2738 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2814 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2814 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2816 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2816 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2818 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2818 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2820 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2820 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2822 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2826 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2828 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2832 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2832 ~v0 = du_isMagmaIsomorphism_2832
du_isMagmaIsomorphism_2832 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2832 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2834 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2834 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2834 v2
du_isMagmaMonomorphism_2834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2836 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2838 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2840 v0
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
d_isRelIsomorphism_2842 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2842 ~v0 ~v1 v2 = du_isRelIsomorphism_2842 v2
du_isRelIsomorphism_2842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2842 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2844 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2844 ~v0 ~v1 v2 = du_isRelMonomorphism_2844 v2
du_isRelMonomorphism_2844 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2844 v0
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
d_surjective_2846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2846 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2848 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2850 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2854 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2856 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2858 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2860 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2860 ~v0 = du_isMagmaMonomorphism_2860
du_isMagmaMonomorphism_2860 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2860 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2862 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2864 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2864 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2866 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2866 ~v0 ~v1 v2 = du_isRelMonomorphism_2866 v2
du_isRelMonomorphism_2866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2866 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2868 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2870 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2872 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.C_constructor_1680
      (d_DecEq'45'TxId_1420 (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe d_adHashingScheme_1408 (coe v0)))
      (d_cryptoStructure_1412 (coe v0))
      (d_leiosCryptoStructure_1414 (coe v0))
      (d_epochStructure_1416 (coe v0)) (d_globalConstants_1410 (coe v0))
      (d_scriptStructure_2214 (coe v0)) (d_govParams_2736 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2876 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  Bool
d_'61''61''45'GovAction_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1524
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2878 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1506
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2880 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Bool
d_'61''61''45'GovProposal_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1558
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_2882 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2882 ~v0 = du_'61''61''45'Set_2882
du_'61''61''45'Set_2882 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2882 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1494
      v1 v2 v3
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2884 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DReps
d_DReps_2896 :: T_TransactionStructure_58 -> ()
d_DReps_2896 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2900 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1488
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2902 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2902 ~v0 = du_DecEq'45'GovActionType_2902
du_DecEq'45'GovActionType_2902 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2902
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1378
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2904 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2904 ~v0 = du_DecEq'45'GovRole_2904
du_DecEq'45'GovRole_2904 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2904
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1380
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2906 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1386
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2908 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1556
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2910 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1384
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2912 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2912 ~v0 = du_DecEq'45'Vote_2912
du_DecEq'45'Vote_2912 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2912
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1382
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2916 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2920 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_GovActionData_2920 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2922 :: T_TransactionStructure_58 -> ()
d_GovActionID_2922 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2926 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2930 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2934 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2938 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2940 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946 ->
  ()
d_GovRoleCredential_2940 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2942 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_2946 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_2952 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_2958 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2962 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
d_HasAnchor'45'GovProposal_2962 ~v0
  = du_HasAnchor'45'GovProposal_2962
du_HasAnchor'45'GovProposal_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304
du_HasAnchor'45'GovProposal_2962
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1358
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2964 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2964 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2964
du_HasCast'45'GovAction'45'Sigma_2964 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2964
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1342
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2966 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2966 ~v0 = du_HasCast'45'GovVote_2966
du_HasCast'45'GovVote_2966 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2966
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1484
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2968 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2968 ~v0
  = du_HasCast'45'HashProtected_2968
du_HasCast'45'HashProtected_2968 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2970 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2970 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2970
du_HasCast'45'HashProtected'45'MaybeScriptHash_2970 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2970
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_2972 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_2976 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2980 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
d_HasDeposit'45'GovProposal_2980 ~v0
  = du_HasDeposit'45'GovProposal_2980
du_HasDeposit'45'GovProposal_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324
du_HasDeposit'45'GovProposal_2980
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1360
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_2982 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2986 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovActionState_2986 ~v0
  = du_HasGovAction'45'GovActionState_2986
du_HasGovAction'45'GovActionState_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
du_HasGovAction'45'GovActionState_2986
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2988 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
d_HasGovAction'45'GovProposal_2988 ~v0
  = du_HasGovAction'45'GovProposal_2988
du_HasGovAction'45'GovProposal_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186
du_HasGovAction'45'GovProposal_2988
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1362
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_2990 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2994 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovAction_2994 ~v0
  = du_HasGovActionType'45'GovAction_2994
du_HasGovActionType'45'GovAction_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovAction_2994
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1340
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2996 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovActionState_2996 ~v0
  = du_HasGovActionType'45'GovActionState_2996
du_HasGovActionType'45'GovActionState_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovActionState_2996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1368
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2998 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
d_HasGovActionType'45'GovProposal_2998 ~v0
  = du_HasGovActionType'45'GovProposal_2998
du_HasGovActionType'45'GovProposal_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150
du_HasGovActionType'45'GovProposal_2998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1366
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_3000 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3004 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
d_HasGovVoter'45'GovVote_3004 ~v0 = du_HasGovVoter'45'GovVote_3004
du_HasGovVoter'45'GovVote_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204
du_HasGovVoter'45'GovVote_3004
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1352
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_3006 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3010 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
d_HasGovVotes'45'GovActionState_3010 ~v0
  = du_HasGovVotes'45'GovActionState_3010
du_HasGovVotes'45'GovActionState_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224
du_HasGovVotes'45'GovActionState_3010
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1370
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_3012 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3016 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
d_HasPolicy'45'GovProposal_3016 ~v0
  = du_HasPolicy'45'GovProposal_3016
du_HasPolicy'45'GovProposal_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264
du_HasPolicy'45'GovProposal_3016
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1356
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3018 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3018 ~v0
  = du_HasRewardAddress'45'GovActionState_3018
du_HasRewardAddress'45'GovActionState_3018 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3018
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1372
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3020 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3020 ~v0
  = du_HasRewardAddress'45'GovProposal_3020
du_HasRewardAddress'45'GovProposal_3020 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1374
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote
d_HasVote_3022 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_3026 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
d_HasVote'45'GovVote_3026 ~v0 = du_HasVote'45'GovVote_3026
du_HasVote'45'GovVote_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244
du_HasVote'45'GovVote_3026
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1354
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_3028 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_3032 :: T_TransactionStructure_58 -> () -> ()
d_HashProtected_3032 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_3036 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956 ->
  ()
d_NeedsHash_3036 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Policy
d_Policy_3042 :: T_TransactionStructure_58 -> ()
d_Policy_3042 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_3048 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3048 ~v0 = du_Show'45'GovRole_3048
du_Show'45'GovRole_3048 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3048
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1376
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_3050 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1486
      (coe d_govStructure_2872 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_3058 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_3060 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_3062 :: T_TransactionStructure_58 -> ()
d_VoteDelegs_3062 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_3066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_3070 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3070 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1664
      (coe d_govStructure_2872 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_3072 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3072 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_3074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_3074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_3076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_3078 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3078 ~v0 = du_govVoterCredential_3078
du_govVoterCredential_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3078
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1134
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_3080 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3080 ~v0 = du_isGovVoterDRep_3080
du_isGovVoterDRep_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3080
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1130
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_3084 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3084 ~v0 = du_proposedCC_3084
du_proposedCC_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3084
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1142
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  AgdaAny
d_hash_3100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1016
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_3102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1014
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  AgdaAny
d_gaData_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_982
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_gaType_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_980
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1122
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.deposit
d_deposit_3114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  Integer
d_deposit_3114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  AgdaAny
d_expiresIn_3116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1120
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  AgdaAny
d_prevAction_3118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1124
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_3120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1118
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_3122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_votes_3122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1116
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_3142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1088
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1098
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Integer
d_deposit_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1094
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Maybe AgdaAny
d_policy_3148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1092
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  AgdaAny
d_prevAction_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1090
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1096
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_vote_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_voter_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvCredential
d_gvCredential_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  AgdaAny
d_gvCredential_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_1004
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvRole
d_gvRole_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_946
d_gvRole_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_1002
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvCC
d_gvCC_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1048
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvDRep
d_gvDRep_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1050
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvSPO
d_gvSPO_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1052
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1304 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_AnchorOf_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1312
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1292
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1324 ->
  AgdaAny -> Integer
d_DepositOf_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1332
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_GovActionOf_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1192
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1150 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_956
d_GovActionTypeOf_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1156
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1212
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1224 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1040
d_GovVotesOf_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1232
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1264 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1272
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1244 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_988
d_VoteOf_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1252
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1176
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCert
d_DCert_3280 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountBalanceIntervals
d_AccountBalanceIntervals_3756 :: T_TransactionStructure_58 -> ()
d_AccountBalanceIntervals_3756 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceInterval
d_BalanceInterval_3758 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3760 ::
  T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_946 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3760 ~v0
  = du_Dec'45'InBalanceInterval_3760
du_Dec'45'InBalanceInterval_3760 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_946 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3760
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_980
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3762 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3762 ~v0
  = du_DecEq'45'BalanceInterval_3762
du_DecEq'45'BalanceInterval_3762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3762
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1104
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDeposits
d_DirectDeposits_3764 :: T_TransactionStructure_58 -> ()
d_DirectDeposits_3764 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.InBalanceInterval
d_InBalanceInterval_3768 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3804 :: T_TransactionStructure_58 -> ()
d_TxIn_3804 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3806 :: T_TransactionStructure_58 -> ()
d_TxOut_3806 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3808 :: T_TransactionStructure_58 -> ()
d_UTxO_3808 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.RedeemerPtr
d_RedeemerPtr_3810 :: T_TransactionStructure_58 -> ()
d_RedeemerPtr_3810 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3812 :: T_TransactionStructure_58 -> ()
d_ProposedPPUpdates_3812 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Update
d_Update_3814 :: T_TransactionStructure_58 -> ()
d_Update_3814 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3820 a0 a1 a2 = ()
newtype T_HasUTxO_3820
  = C_constructor_3830 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3828 ::
  T_HasUTxO_3820 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3828 v0
  = case coe v0 of
      C_constructor_3830 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3834 ::
  T_HasUTxO_3820 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3834 v0 = coe d_UTxOOf_3828 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx
d_Tx_3838 a0 a1 = ()
data T_Tx_3838
  = C_constructor_3868 T_TxBody_3842 T_TxWitnesses_3844 Integer
                       AgdaAny (Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3842 a0 a1 = ()
data T_TxBody_3842
  = C_constructor_3966 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424]
                       AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny (Maybe AgdaAny) AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3844 a0 = ()
data T_TxWitnesses_3844
  = C_constructor_3986 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txBody
d_txBody_3858 :: T_Tx_3838 -> T_TxBody_3842
d_txBody_3858 v0
  = case coe v0 of
      C_constructor_3868 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txWitnesses
d_txWitnesses_3860 :: T_Tx_3838 -> T_TxWitnesses_3844
d_txWitnesses_3860 v0
  = case coe v0 of
      C_constructor_3868 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txSize
d_txSize_3862 :: T_Tx_3838 -> Integer
d_txSize_3862 v0
  = case coe v0 of
      C_constructor_3868 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3864 :: T_Tx_3838 -> AgdaAny
d_isValid_3864 v0
  = case coe v0 of
      C_constructor_3868 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txAuxData
d_txAuxData_3866 :: T_Tx_3838 -> Maybe AgdaAny
d_txAuxData_3866 v0
  = case coe v0 of
      C_constructor_3868 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txIns
d_txIns_3918 ::
  T_TxBody_3842 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3918 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_3920 ::
  T_TxBody_3842 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3920 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_3922 :: T_TxBody_3842 -> AgdaAny
d_collateralInputs_3922 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txOuts
d_txOuts_3924 ::
  T_TxBody_3842 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3924 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txId
d_txId_3926 :: T_TxBody_3842 -> AgdaAny
d_txId_3926 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txCerts
d_txCerts_3928 ::
  T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424]
d_txCerts_3928 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txFee
d_txFee_3930 :: T_TxBody_3842 -> AgdaAny
d_txFee_3930 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_3932 ::
  T_TxBody_3842 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3932 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txVldt
d_txVldt_3934 ::
  T_TxBody_3842 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3934 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3936 :: T_TxBody_3842 -> Maybe AgdaAny
d_txADhash_3936 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDonation
d_txDonation_3938 :: T_TxBody_3842 -> Integer
d_txDonation_3938 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_3940 ::
  T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_txGovVotes_3940 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_3942 ::
  T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_txGovProposals_3942 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3944 :: T_TxBody_3842 -> Maybe AgdaAny
d_txNetworkId_3944 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_3946 :: T_TxBody_3842 -> Maybe Integer
d_currentTreasury_3946 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3948 :: T_TxBody_3842 -> AgdaAny
d_mint_3948 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3950 :: T_TxBody_3842 -> Maybe AgdaAny
d_scriptIntegrityHash_3950 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_3952 :: T_TxBody_3842 -> AgdaAny
d_txSubTransactions_3952 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGuards
d_txGuards_3954 ::
  T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3954 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3956 ::
  T_TxBody_3842 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3956 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_3958 ::
  T_TxBody_3842 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3958 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_3960 ::
  T_TxBody_3842 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3960 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_3962 :: T_TxBody_3842 -> AgdaAny
d_txStartingBalanceIntervals_3962 v0
  = case coe v0 of
      C_constructor_3966 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_3964 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_TxBody_3842 -> [AgdaAny]
d_requiredSignerHashes_3964 ~v0 ~v1 v2
  = du_requiredSignerHashes_3964 v2
du_requiredSignerHashes_3964 :: T_TxBody_3842 -> [AgdaAny]
du_requiredSignerHashes_3964 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
      (d_txGuards_3954 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_3976 ::
  T_TxWitnesses_3844 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3976 v0
  = case coe v0 of
      C_constructor_3986 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3978 ::
  T_TxWitnesses_3844 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3978 v0
  = case coe v0 of
      C_constructor_3986 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txData
d_txData_3980 :: T_TxWitnesses_3844 -> [AgdaAny]
d_txData_3980 v0
  = case coe v0 of
      C_constructor_3986 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_3982 ::
  T_TxWitnesses_3844 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3982 v0
  = case coe v0 of
      C_constructor_3986 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3984 ::
  T_TransactionStructure_58 -> T_TxWitnesses_3844 -> [AgdaAny]
d_scriptsP1_3984 ~v0 v1 = du_scriptsP1_3984 v1
du_scriptsP1_3984 :: T_TxWitnesses_3844 -> [AgdaAny]
du_scriptsP1_3984 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3978 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TopLevelTx
d_TopLevelTx_3988 :: T_TransactionStructure_58 -> ()
d_TopLevelTx_3988 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.SubLevelTx
d_SubLevelTx_3990 :: T_TransactionStructure_58 -> ()
d_SubLevelTx_3990 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3992 :: T_TransactionStructure_58 -> ()
d_AnyLevelTx_3992 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_4000 a0 a1 a2 a3 = ()
newtype T_HasTxBody_4000
  = C_constructor_4012 (AgdaAny -> T_TxBody_3842)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_4010 :: T_HasTxBody_4000 -> AgdaAny -> T_TxBody_3842
d_TxBodyOf_4010 v0
  = case coe v0 of
      C_constructor_4012 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_4016 :: T_HasTxBody_4000 -> AgdaAny -> T_TxBody_3842
d_TxBodyOf_4016 v0 = coe d_TxBodyOf_4010 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_4022 a0 a1 a2 = ()
newtype T_HasTxWitnesses_4022
  = C_constructor_4032 (AgdaAny -> T_TxWitnesses_3844)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_4030 ::
  T_HasTxWitnesses_4022 -> AgdaAny -> T_TxWitnesses_3844
d_TxWitnessesOf_4030 v0
  = case coe v0 of
      C_constructor_4032 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxWitnessesOf
d_TxWitnessesOf_4036 ::
  T_HasTxWitnesses_4022 -> AgdaAny -> T_TxWitnesses_3844
d_TxWitnessesOf_4036 v0 = coe d_TxWitnessesOf_4030 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers
d_HasRedeemers_4042 a0 a1 a2 = ()
newtype T_HasRedeemers_4042
  = C_constructor_4052 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_4050 ::
  T_HasRedeemers_4042 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4050 v0
  = case coe v0 of
      C_constructor_4052 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RedeemersOf
d_RedeemersOf_4056 ::
  T_HasRedeemers_4042 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4056 v0 = coe d_RedeemersOf_4050 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_4064 a0 a1 a2 a3 = ()
newtype T_HasCollateralInputs_4064
  = C_constructor_4076 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_4074 ::
  T_HasCollateralInputs_4064 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4074 v0
  = case coe v0 of
      C_constructor_4076 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CollateralInputsOf
d_CollateralInputsOf_4080 ::
  T_HasCollateralInputs_4064 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4080 v0
  = coe d_CollateralInputsOf_4074 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees
d_HasTxFees_4088 a0 a1 a2 a3 = ()
newtype T_HasTxFees_4088 = C_constructor_4100 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_4098 :: T_HasTxFees_4088 -> AgdaAny -> AgdaAny
d_TxFeesOf_4098 v0
  = case coe v0 of
      C_constructor_4100 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxFeesOf
d_TxFeesOf_4104 :: T_HasTxFees_4088 -> AgdaAny -> AgdaAny
d_TxFeesOf_4104 v0 = coe d_TxFeesOf_4098 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions
d_HasSubTransactions_4112 a0 a1 a2 a3 = ()
newtype T_HasSubTransactions_4112
  = C_constructor_4124 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_4122 ::
  T_HasSubTransactions_4112 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4122 v0
  = case coe v0 of
      C_constructor_4124 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SubTransactionsOf
d_SubTransactionsOf_4128 ::
  T_HasSubTransactions_4112 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4128 v0 = coe d_SubTransactionsOf_4122 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId
d_HasTxId_4134 a0 a1 a2 = ()
newtype T_HasTxId_4134 = C_constructor_4144 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_4142 :: T_HasTxId_4134 -> AgdaAny -> AgdaAny
d_TxIdOf_4142 v0
  = case coe v0 of
      C_constructor_4144 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxIdOf
d_TxIdOf_4148 :: T_HasTxId_4134 -> AgdaAny -> AgdaAny
d_TxIdOf_4148 v0 = coe d_TxIdOf_4142 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize
d_HasSize_4154 a0 a1 a2 = ()
newtype T_HasSize_4154 = C_constructor_4164 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize.SizeOf
d_SizeOf_4162 :: T_HasSize_4154 -> AgdaAny -> Integer
d_SizeOf_4162 v0
  = case coe v0 of
      C_constructor_4164 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SizeOf
d_SizeOf_4168 :: T_HasSize_4154 -> AgdaAny -> Integer
d_SizeOf_4168 v0 = coe d_SizeOf_4162 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_4174 a0 a1 a2 = ()
newtype T_HasTopLevelGuards_4174
  = C_constructor_4184 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_4182 ::
  T_HasTopLevelGuards_4174 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4182 v0
  = case coe v0 of
      C_constructor_4184 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TopLevelGuardsOf
d_TopLevelGuardsOf_4188 ::
  T_HasTopLevelGuards_4174 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4188 v0 = coe d_TopLevelGuardsOf_4182 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval
d_HasValidInterval_4194 a0 a1 a2 = ()
newtype T_HasValidInterval_4194
  = C_constructor_4204 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_4202 ::
  T_HasValidInterval_4194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4202 v0
  = case coe v0 of
      C_constructor_4204 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ValidIntervalOf
d_ValidIntervalOf_4208 ::
  T_HasValidInterval_4194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4208 v0 = coe d_ValidIntervalOf_4202 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs
d_HasSpendInputs_4214 a0 a1 a2 = ()
newtype T_HasSpendInputs_4214
  = C_constructor_4224 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_4222 ::
  T_HasSpendInputs_4214 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4222 v0
  = case coe v0 of
      C_constructor_4224 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SpendInputsOf
d_SpendInputsOf_4228 ::
  T_HasSpendInputs_4214 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4228 v0 = coe d_SpendInputsOf_4222 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_4234 a0 a1 a2 = ()
newtype T_HasReferenceInputs_4234
  = C_constructor_4244 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_4242 ::
  T_HasReferenceInputs_4234 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4242 v0
  = case coe v0 of
      C_constructor_4244 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ReferenceInputsOf
d_ReferenceInputsOf_4248 ::
  T_HasReferenceInputs_4234 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4248 v0 = coe d_ReferenceInputsOf_4242 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue
d_HasMintedValue_4254 a0 a1 a2 = ()
newtype T_HasMintedValue_4254
  = C_constructor_4264 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_4262 :: T_HasMintedValue_4254 -> AgdaAny -> AgdaAny
d_MintedValueOf_4262 v0
  = case coe v0 of
      C_constructor_4264 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MintedValueOf
d_MintedValueOf_4268 :: T_HasMintedValue_4254 -> AgdaAny -> AgdaAny
d_MintedValueOf_4268 v0 = coe d_MintedValueOf_4262 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?
d_HasFees'63'_4274 a0 a1 a2 = ()
newtype T_HasFees'63'_4274
  = C_constructor_4284 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_4282 :: T_HasFees'63'_4274 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4282 v0
  = case coe v0 of
      C_constructor_4284 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.FeesOf?
d_FeesOf'63'_4288 :: T_HasFees'63'_4274 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4288 v0 = coe d_FeesOf'63'_4282 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts
d_HasDCerts_4294 a0 a1 a2 = ()
newtype T_HasDCerts_4294
  = C_constructor_4304 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_4302 ::
  T_HasDCerts_4294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424]
d_DCertsOf_4302 v0
  = case coe v0 of
      C_constructor_4304 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCertsOf
d_DCertsOf_4308 ::
  T_HasDCerts_4294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424]
d_DCertsOf_4308 v0 = coe d_DCertsOf_4302 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals
d_HasGovProposals_4314 a0 a1 a2 = ()
newtype T_HasGovProposals_4314
  = C_constructor_4324 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_4322 ::
  T_HasGovProposals_4314 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_GovProposalsOf_4322 v0
  = case coe v0 of
      C_constructor_4324 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovProposalsOf
d_GovProposalsOf_4328 ::
  T_HasGovProposals_4314 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_GovProposalsOf_4328 v0 = coe d_GovProposalsOf_4322 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData
d_HasData_4334 a0 a1 a2 = ()
newtype T_HasData_4334 = C_constructor_4344 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData.DataOf
d_DataOf_4342 :: T_HasData_4334 -> AgdaAny -> [AgdaAny]
d_DataOf_4342 v0
  = case coe v0 of
      C_constructor_4344 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DataOf
d_DataOf_4348 :: T_HasData_4334 -> AgdaAny -> [AgdaAny]
d_DataOf_4348 v0 = coe d_DataOf_4342 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_4354 a0 a1 a2 = ()
newtype T_HasListOfGovProposals_4354
  = C_constructor_4364 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4362 ::
  T_HasListOfGovProposals_4354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_ListOfGovProposalsOf_4362 v0
  = case coe v0 of
      C_constructor_4364 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4368 ::
  T_HasListOfGovProposals_4354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074]
d_ListOfGovProposalsOf_4368 v0
  = coe d_ListOfGovProposalsOf_4362 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_4374 a0 a1 a2 = ()
newtype T_HasListOfGovVotes_4374
  = C_constructor_4384 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_4382 ::
  T_HasListOfGovVotes_4374 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_ListOfGovVotesOf_4382 v0
  = case coe v0 of
      C_constructor_4384 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovVotesOf
d_ListOfGovVotesOf_4388 ::
  T_HasListOfGovVotes_4374 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1020]
d_ListOfGovVotesOf_4388 v0 = coe d_ListOfGovVotesOf_4382 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards
d_HasGuards_4394 a0 a1 a2 = ()
newtype T_HasGuards_4394
  = C_constructor_4404 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_4402 ::
  T_HasGuards_4394 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4402 v0
  = case coe v0 of
      C_constructor_4404 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GuardsOf
d_GuardsOf_4408 ::
  T_HasGuards_4394 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4408 v0 = coe d_GuardsOf_4402 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts
d_HasScripts_4414 a0 a1 a2 = ()
newtype T_HasScripts_4414
  = C_constructor_4424 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_4422 ::
  T_HasScripts_4414 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4422 v0
  = case coe v0 of
      C_constructor_4424 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptsOf
d_ScriptsOf_4428 ::
  T_HasScripts_4414 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4428 v0 = coe d_ScriptsOf_4422 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts
d_HasTxOuts_4434 a0 a1 a2 = ()
newtype T_HasTxOuts_4434
  = C_constructor_4444 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_4442 ::
  T_HasTxOuts_4434 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4442 v0
  = case coe v0 of
      C_constructor_4444 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxOutsOf
d_TxOutsOf_4448 ::
  T_HasTxOuts_4434 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4448 v0 = coe d_TxOutsOf_4442 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_4454 a0 a1 a2 = ()
newtype T_HasRequiredSingerHashes_4454
  = C_constructor_4464 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4462 ::
  T_HasRequiredSingerHashes_4454 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4462 v0
  = case coe v0 of
      C_constructor_4464 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4468 ::
  T_HasRequiredSingerHashes_4454 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4468 v0
  = coe d_RequiredSignerHashesOf_4462 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_4474 a0 a1 a2 = ()
newtype T_HasCurrentTreasury_4474
  = C_constructor_4484 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_4482 ::
  T_HasCurrentTreasury_4474 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4482 v0
  = case coe v0 of
      C_constructor_4484 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CurrentTreasuryOf
d_CurrentTreasuryOf_4488 ::
  T_HasCurrentTreasury_4474 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4488 v0 = coe d_CurrentTreasuryOf_4482 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_4494 a0 a1 a2 = ()
newtype T_HasDirectDeposits_4494
  = C_constructor_4504 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_4502 ::
  T_HasDirectDeposits_4494 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4502 v0
  = case coe v0 of
      C_constructor_4504 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDepositsOf
d_DirectDepositsOf_4508 ::
  T_HasDirectDeposits_4494 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4508 v0 = coe d_DirectDepositsOf_4502 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_4514 a0 a1 a2 = ()
newtype T_HasBalanceIntervals_4514
  = C_constructor_4524 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_4522 ::
  T_HasBalanceIntervals_4514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4522 v0
  = case coe v0 of
      C_constructor_4524 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceIntervalsOf
d_BalanceIntervalsOf_4528 ::
  T_HasBalanceIntervals_4514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4528 v0
  = coe d_BalanceIntervalsOf_4522 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_4534 a0 a1 a2 = ()
newtype T_HasStartingBalanceIntervals_4534
  = C_constructor_4544 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4542 ::
  T_HasStartingBalanceIntervals_4534 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4542 v0
  = case coe v0 of
      C_constructor_4544 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4548 ::
  T_HasStartingBalanceIntervals_4534 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4548 v0
  = coe d_StartingBalanceIntervalsOf_4542 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_4554 a0 a1 a2 = ()
newtype T_HasIsValidFlag_4554
  = C_constructor_4564 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_4562 :: T_HasIsValidFlag_4554 -> AgdaAny -> Bool
d_IsValidFlagOf_4562 v0
  = case coe v0 of
      C_constructor_4564 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsValidFlagOf
d_IsValidFlagOf_4568 :: T_HasIsValidFlag_4554 -> AgdaAny -> Bool
d_IsValidFlagOf_4568 v0 = coe d_IsValidFlagOf_4562 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_4570 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxBody_4000
d_HasTxBody'45'Tx_4570 ~v0 ~v1 = du_HasTxBody'45'Tx_4570
du_HasTxBody'45'Tx_4570 :: T_HasTxBody_4000
du_HasTxBody'45'Tx_4570
  = coe C_constructor_4012 (coe (\ v0 -> d_txBody_3858 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_4572 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSize_4154
d_HasSize'45'Tx_4572 ~v0 ~v1 = du_HasSize'45'Tx_4572
du_HasSize'45'Tx_4572 :: T_HasSize_4154
du_HasSize'45'Tx_4572
  = coe C_constructor_4164 (coe (\ v0 -> d_txSize_3862 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_4574 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxWitnesses_4022
d_HasTxWitnesses'45'Tx_4574 ~v0 ~v1 = du_HasTxWitnesses'45'Tx_4574
du_HasTxWitnesses'45'Tx_4574 :: T_HasTxWitnesses_4022
du_HasTxWitnesses'45'Tx_4574
  = coe
      C_constructor_4032 (coe (\ v0 -> d_txWitnesses_3860 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_4576 ::
  T_TransactionStructure_58 -> T_HasIsValidFlag_4554
d_HasIsValidFlag'45'Tx_4576 ~v0 = du_HasIsValidFlag'45'Tx_4576
du_HasIsValidFlag'45'Tx_4576 :: T_HasIsValidFlag_4554
du_HasIsValidFlag'45'Tx_4576
  = coe C_constructor_4564 (coe (\ v0 -> d_isValid_3864 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_4578 ::
  T_TransactionStructure_58 -> T_HasRedeemers_4042
d_HasRedeemers'45'TxWitnesses_4578 ~v0
  = du_HasRedeemers'45'TxWitnesses_4578
du_HasRedeemers'45'TxWitnesses_4578 :: T_HasRedeemers_4042
du_HasRedeemers'45'TxWitnesses_4578
  = coe
      C_constructor_4052 (coe (\ v0 -> d_txRedeemers_3982 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_4580 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasRedeemers_4042
d_HasRedeemers'45'Tx_4580 ~v0 ~v1 = du_HasRedeemers'45'Tx_4580
du_HasRedeemers'45'Tx_4580 :: T_HasRedeemers_4042
du_HasRedeemers'45'Tx_4580
  = coe
      C_constructor_4052
      (coe
         (\ v0 -> d_txRedeemers_3982 (coe d_txWitnesses_3860 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_4582 ::
  T_TransactionStructure_58 -> T_HasCollateralInputs_4064
d_HasCollateralInputs'45'TopLevelTx_4582 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_4582
du_HasCollateralInputs'45'TopLevelTx_4582 ::
  T_HasCollateralInputs_4064
du_HasCollateralInputs'45'TopLevelTx_4582
  = coe
      C_constructor_4076
      (coe
         (\ v0 -> d_collateralInputs_3922 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_4584 ::
  T_TransactionStructure_58 -> T_HasTxFees_4088
d_HasTxFees'45'TopLevelTx_4584 ~v0
  = du_HasTxFees'45'TopLevelTx_4584
du_HasTxFees'45'TopLevelTx_4584 :: T_HasTxFees_4088
du_HasTxFees'45'TopLevelTx_4584
  = coe
      C_constructor_4100
      (coe (\ v0 -> d_txFee_3930 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_4586 ::
  T_TransactionStructure_58 -> T_HasSubTransactions_4112
d_HasSubTransactions'45'TopLevelTx_4586 ~v0
  = du_HasSubTransactions'45'TopLevelTx_4586
du_HasSubTransactions'45'TopLevelTx_4586 ::
  T_HasSubTransactions_4112
du_HasSubTransactions'45'TopLevelTx_4586
  = coe
      C_constructor_4124
      (coe
         (\ v0 -> d_txSubTransactions_3952 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_4588 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4174
d_HasTopLevelGuards'45'TxBody_4588 ~v0 ~v1
  = du_HasTopLevelGuards'45'TxBody_4588
du_HasTopLevelGuards'45'TxBody_4588 :: T_HasTopLevelGuards_4174
du_HasTopLevelGuards'45'TxBody_4588
  = coe
      C_constructor_4184
      (coe (\ v0 -> d_txRequiredTopLevelGuards_3956 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_4590 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4174
d_HasTopLevelGuards'45'Tx_4590 ~v0 ~v1
  = du_HasTopLevelGuards'45'Tx_4590
du_HasTopLevelGuards'45'Tx_4590 :: T_HasTopLevelGuards_4174
du_HasTopLevelGuards'45'Tx_4590
  = coe
      C_constructor_4184
      (coe
         (\ v0 ->
            d_txRequiredTopLevelGuards_3956 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_4592 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4294
d_HasDCerts'45'TxBody_4592 ~v0 ~v1 = du_HasDCerts'45'TxBody_4592
du_HasDCerts'45'TxBody_4592 :: T_HasDCerts_4294
du_HasDCerts'45'TxBody_4592
  = coe C_constructor_4304 (coe (\ v0 -> d_txCerts_3928 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_4594 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4294
d_HasDCerts'45'Tx_4594 ~v0 ~v1 = du_HasDCerts'45'Tx_4594
du_HasDCerts'45'Tx_4594 :: T_HasDCerts_4294
du_HasDCerts'45'Tx_4594
  = coe
      C_constructor_4304
      (coe (\ v0 -> d_txCerts_3928 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_4596 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_4596 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_4596
du_HasWithdrawals'45'TxBody_4596 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_4596
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3932 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_4598 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_4598 ~v0 ~v1 = du_HasWithdrawals'45'Tx_4598
du_HasWithdrawals'45'Tx_4598 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_4598
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3932 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_4600 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4494
d_HasDirectDeposits'45'TxBody_4600 ~v0 ~v1
  = du_HasDirectDeposits'45'TxBody_4600
du_HasDirectDeposits'45'TxBody_4600 :: T_HasDirectDeposits_4494
du_HasDirectDeposits'45'TxBody_4600
  = coe
      C_constructor_4504 (coe (\ v0 -> d_txDirectDeposits_3958 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_4602 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4494
d_HasDirectDeposits'45'Tx_4602 ~v0 ~v1
  = du_HasDirectDeposits'45'Tx_4602
du_HasDirectDeposits'45'Tx_4602 :: T_HasDirectDeposits_4494
du_HasDirectDeposits'45'Tx_4602
  = coe
      C_constructor_4504
      (coe
         (\ v0 -> d_txDirectDeposits_3958 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_4604 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4514
d_HasBalanceIntervals'45'TxBody_4604 ~v0 ~v1
  = du_HasBalanceIntervals'45'TxBody_4604
du_HasBalanceIntervals'45'TxBody_4604 :: T_HasBalanceIntervals_4514
du_HasBalanceIntervals'45'TxBody_4604
  = coe
      C_constructor_4524
      (coe (\ v0 -> d_txBalanceIntervals_3960 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_4606 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4514
d_HasBalanceIntervals'45'Tx_4606 ~v0 ~v1
  = du_HasBalanceIntervals'45'Tx_4606
du_HasBalanceIntervals'45'Tx_4606 :: T_HasBalanceIntervals_4514
du_HasBalanceIntervals'45'Tx_4606
  = coe
      C_constructor_4524
      (coe
         (\ v0 -> d_txBalanceIntervals_3960 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_4608 ::
  T_TransactionStructure_58 -> T_HasStartingBalanceIntervals_4534
d_HasStartingBalanceIntervals'45'TxBody_4608 ~v0
  = du_HasStartingBalanceIntervals'45'TxBody_4608
du_HasStartingBalanceIntervals'45'TxBody_4608 ::
  T_HasStartingBalanceIntervals_4534
du_HasStartingBalanceIntervals'45'TxBody_4608
  = coe
      C_constructor_4544
      (coe (\ v0 -> d_txStartingBalanceIntervals_3962 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_4610 ::
  T_TransactionStructure_58 -> T_HasStartingBalanceIntervals_4534
d_HasStartingBalanceIntervals'45'Tx_4610 ~v0
  = du_HasStartingBalanceIntervals'45'Tx_4610
du_HasStartingBalanceIntervals'45'Tx_4610 ::
  T_HasStartingBalanceIntervals_4534
du_HasStartingBalanceIntervals'45'Tx_4610
  = coe
      C_constructor_4544
      (coe
         (\ v0 ->
            d_txStartingBalanceIntervals_3962 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_4612 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4194
d_HasValidInterval'45'TxBody_4612 ~v0 ~v1
  = du_HasValidInterval'45'TxBody_4612
du_HasValidInterval'45'TxBody_4612 :: T_HasValidInterval_4194
du_HasValidInterval'45'TxBody_4612
  = coe C_constructor_4204 (coe (\ v0 -> d_txVldt_3934 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_4614 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4194
d_HasValidInterval'45'Tx_4614 ~v0 ~v1
  = du_HasValidInterval'45'Tx_4614
du_HasValidInterval'45'Tx_4614 :: T_HasValidInterval_4194
du_HasValidInterval'45'Tx_4614
  = coe
      C_constructor_4204
      (coe (\ v0 -> d_txVldt_3934 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_4616 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4214
d_HasSpendInputs'45'TxBody_4616 ~v0 ~v1
  = du_HasSpendInputs'45'TxBody_4616
du_HasSpendInputs'45'TxBody_4616 :: T_HasSpendInputs_4214
du_HasSpendInputs'45'TxBody_4616
  = coe C_constructor_4224 (coe (\ v0 -> d_txIns_3918 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_4618 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4214
d_HasSpendInputs'45'Tx_4618 ~v0 ~v1 = du_HasSpendInputs'45'Tx_4618
du_HasSpendInputs'45'Tx_4618 :: T_HasSpendInputs_4214
du_HasSpendInputs'45'Tx_4618
  = coe
      C_constructor_4224
      (coe (\ v0 -> d_txIns_3918 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_4620 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4234
d_HasReferenceInputs'45'TxBody_4620 ~v0 ~v1
  = du_HasReferenceInputs'45'TxBody_4620
du_HasReferenceInputs'45'TxBody_4620 :: T_HasReferenceInputs_4234
du_HasReferenceInputs'45'TxBody_4620
  = coe
      C_constructor_4244 (coe (\ v0 -> d_referenceInputs_3920 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_4622 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4234
d_HasReferenceInputs'45'Tx_4622 ~v0 ~v1
  = du_HasReferenceInputs'45'Tx_4622
du_HasReferenceInputs'45'Tx_4622 :: T_HasReferenceInputs_4234
du_HasReferenceInputs'45'Tx_4622
  = coe
      C_constructor_4244
      (coe (\ v0 -> d_referenceInputs_3920 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_4624 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4254
d_HasMintedValue'45'TxBody_4624 ~v0 ~v1
  = du_HasMintedValue'45'TxBody_4624
du_HasMintedValue'45'TxBody_4624 :: T_HasMintedValue_4254
du_HasMintedValue'45'TxBody_4624
  = coe C_constructor_4264 (coe (\ v0 -> d_mint_3948 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_4626 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4254
d_HasMintedValue'45'Tx_4626 ~v0 ~v1 = du_HasMintedValue'45'Tx_4626
du_HasMintedValue'45'Tx_4626 :: T_HasMintedValue_4254
du_HasMintedValue'45'Tx_4626
  = coe
      C_constructor_4264
      (coe (\ v0 -> d_mint_3948 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_4628 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4374
d_HasListOfGovVotes'45'TxBody_4628 ~v0 ~v1
  = du_HasListOfGovVotes'45'TxBody_4628
du_HasListOfGovVotes'45'TxBody_4628 :: T_HasListOfGovVotes_4374
du_HasListOfGovVotes'45'TxBody_4628
  = coe C_constructor_4384 (coe (\ v0 -> d_txGovVotes_3940 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_4630 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4374
d_HasListOfGovVotes'45'Tx_4630 ~v0 ~v1
  = du_HasListOfGovVotes'45'Tx_4630
du_HasListOfGovVotes'45'Tx_4630 :: T_HasListOfGovVotes_4374
du_HasListOfGovVotes'45'Tx_4630
  = coe
      C_constructor_4384
      (coe (\ v0 -> d_txGovVotes_3940 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_4632 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4354
d_HasListOfGovProposals'45'TxBody_4632 ~v0 ~v1
  = du_HasListOfGovProposals'45'TxBody_4632
du_HasListOfGovProposals'45'TxBody_4632 ::
  T_HasListOfGovProposals_4354
du_HasListOfGovProposals'45'TxBody_4632
  = coe
      C_constructor_4364 (coe (\ v0 -> d_txGovProposals_3942 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_4634 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4354
d_HasListOfGovProposals'45'Tx_4634 ~v0 ~v1
  = du_HasListOfGovProposals'45'Tx_4634
du_HasListOfGovProposals'45'Tx_4634 :: T_HasListOfGovProposals_4354
du_HasListOfGovProposals'45'Tx_4634
  = coe
      C_constructor_4364
      (coe (\ v0 -> d_txGovProposals_3942 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_4636 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_4636 ~v0 ~v1
  = du_HasMaybeNetworkId'45'TxBody_4636
du_HasMaybeNetworkId'45'TxBody_4636 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_4636
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3944 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_4638 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_4638 ~v0 ~v1
  = du_HasMaybeNetworkId'45'Tx_4638
du_HasMaybeNetworkId'45'Tx_4638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_4638
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3944 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_4642 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4274
d_HasFees'63''45'TxBody_4642 ~v0 v1
  = du_HasFees'63''45'TxBody_4642 v1
du_HasFees'63''45'TxBody_4642 :: T_TxLevel_8 -> T_HasFees'63'_4274
du_HasFees'63''45'TxBody_4642 v0
  = coe
      C_constructor_4284
      (case coe v0 of
         C_TxLevelTop_10
           -> coe
                (\ v1 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe d_txFee_3930 (coe v1)))
         C_TxLevelSub_12
           -> coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_4648 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4274
d_HasFees'63''45'Tx_4648 ~v0 v1 = du_HasFees'63''45'Tx_4648 v1
du_HasFees'63''45'Tx_4648 :: T_TxLevel_8 -> T_HasFees'63'_4274
du_HasFees'63''45'Tx_4648 v0
  = coe
      C_constructor_4284
      (coe
         (\ v1 ->
            coe
              d_FeesOf'63'_4282 (coe du_HasFees'63''45'TxBody_4642 (coe v0))
              (d_txBody_3858 (coe v1))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_4650 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4134
d_HasTxId'45'TxBody_4650 ~v0 ~v1 = du_HasTxId'45'TxBody_4650
du_HasTxId'45'TxBody_4650 :: T_HasTxId_4134
du_HasTxId'45'TxBody_4650
  = coe C_constructor_4144 (coe (\ v0 -> d_txId_3926 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_4652 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4134
d_HasTxId'45'Tx_4652 ~v0 ~v1 = du_HasTxId'45'Tx_4652
du_HasTxId'45'Tx_4652 :: T_HasTxId_4134
du_HasTxId'45'Tx_4652
  = coe
      C_constructor_4144
      (coe (\ v0 -> d_txId_3926 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_4654 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'TxBody_4654 ~v0 ~v1
  = du_HasDonations'45'TxBody_4654
du_HasDonations'45'TxBody_4654 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
du_HasDonations'45'TxBody_4654
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_32
      (coe (\ v0 -> d_txDonation_3938 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_4656 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'Tx_4656 ~v0 ~v1 = du_HasDonations'45'Tx_4656
du_HasDonations'45'Tx_4656 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
du_HasDonations'45'Tx_4656
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_32
      (coe (\ v0 -> d_txDonation_3938 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_4658 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_4658 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2738 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_4660 ::
  T_TransactionStructure_58 -> T_HasData_4334
d_HasData'45'TxWitnesses_4660 ~v0 = du_HasData'45'TxWitnesses_4660
du_HasData'45'TxWitnesses_4660 :: T_HasData_4334
du_HasData'45'TxWitnesses_4660
  = coe C_constructor_4344 (coe (\ v0 -> d_txData_3980 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-Tx
d_HasData'45'Tx_4662 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasData_4334
d_HasData'45'Tx_4662 ~v0 ~v1 = du_HasData'45'Tx_4662
du_HasData'45'Tx_4662 :: T_HasData_4334
du_HasData'45'Tx_4662
  = coe
      C_constructor_4344
      (coe (\ v0 -> d_txData_3980 (coe d_txWitnesses_3860 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_4664 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4394
d_HasGuards'45'TxBody_4664 ~v0 ~v1 = du_HasGuards'45'TxBody_4664
du_HasGuards'45'TxBody_4664 :: T_HasGuards_4394
du_HasGuards'45'TxBody_4664
  = coe C_constructor_4404 (coe (\ v0 -> d_txGuards_3954 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_4666 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4394
d_HasGuards'45'Tx_4666 ~v0 ~v1 = du_HasGuards'45'Tx_4666
du_HasGuards'45'Tx_4666 :: T_HasGuards_4394
du_HasGuards'45'Tx_4666
  = coe
      C_constructor_4404
      (coe (\ v0 -> d_txGuards_3954 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_4668 ::
  T_TransactionStructure_58 -> T_HasScripts_4414
d_HasScripts'45'TxWitnesses_4668 ~v0
  = du_HasScripts'45'TxWitnesses_4668
du_HasScripts'45'TxWitnesses_4668 :: T_HasScripts_4414
du_HasScripts'45'TxWitnesses_4668
  = coe C_constructor_4424 (coe (\ v0 -> d_scripts_3978 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_4670 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasScripts_4414
d_HasScripts'45'Tx_4670 ~v0 ~v1 = du_HasScripts'45'Tx_4670
du_HasScripts'45'Tx_4670 :: T_HasScripts_4414
du_HasScripts'45'Tx_4670
  = coe
      C_constructor_4424
      (coe (\ v0 -> d_scripts_3978 (coe d_txWitnesses_3860 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_4672 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4434
d_HasTxOuts'45'TxBody_4672 ~v0 ~v1 = du_HasTxOuts'45'TxBody_4672
du_HasTxOuts'45'TxBody_4672 :: T_HasTxOuts_4434
du_HasTxOuts'45'TxBody_4672
  = coe C_constructor_4444 (coe (\ v0 -> d_txOuts_3924 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_4674 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4434
d_HasTxOuts'45'Tx_4674 ~v0 ~v1 = du_HasTxOuts'45'Tx_4674
du_HasTxOuts'45'Tx_4674 :: T_HasTxOuts_4434
du_HasTxOuts'45'Tx_4674
  = coe
      C_constructor_4444
      (coe (\ v0 -> d_txOuts_3924 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_4676 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4454
d_HasRequiredSingerHashes'45'TxBody_4676 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'TxBody_4676
du_HasRequiredSingerHashes'45'TxBody_4676 ::
  T_HasRequiredSingerHashes_4454
du_HasRequiredSingerHashes'45'TxBody_4676
  = coe C_constructor_4464 (coe du_requiredSignerHashes_3964)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_4678 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4454
d_HasRequiredSingerHashes'45'Tx_4678 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'Tx_4678
du_HasRequiredSingerHashes'45'Tx_4678 ::
  T_HasRequiredSingerHashes_4454
du_HasRequiredSingerHashes'45'Tx_4678
  = coe
      C_constructor_4464
      (coe
         (\ v0 ->
            coe du_requiredSignerHashes_3964 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_4680 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4474
d_HasCurrentTreasury'45'TxBody_4680 ~v0 ~v1
  = du_HasCurrentTreasury'45'TxBody_4680
du_HasCurrentTreasury'45'TxBody_4680 :: T_HasCurrentTreasury_4474
du_HasCurrentTreasury'45'TxBody_4680
  = coe
      C_constructor_4484 (coe (\ v0 -> d_currentTreasury_3946 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_4682 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4474
d_HasCurrentTreasury'45'Tx_4682 ~v0 ~v1
  = du_HasCurrentTreasury'45'Tx_4682
du_HasCurrentTreasury'45'Tx_4682 :: T_HasCurrentTreasury_4474
du_HasCurrentTreasury'45'Tx_4682
  = coe
      C_constructor_4484
      (coe (\ v0 -> d_currentTreasury_3946 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToScript
d_txOutToScript_4684 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4684 ~v0 v1 = du_txOutToScript_4684 v1
du_txOutToScript_4684 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_4684 v0
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
d_txOutToDatum_4688 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4688 ~v0 v1 = du_txOutToDatum_4688 v1
du_txOutToDatum_4688 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDatum_4688 v0
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
d_txOutToValue_4692 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4692 ~v0 v1 = du_txOutToValue_4692 v1
du_txOutToValue_4692 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_4692 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4696 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4696 ~v0 v1 = du_valuesOfUTxO_4696 v1
du_valuesOfUTxO_4696 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_valuesOfUTxO_4696 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToValue_4692)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputs
d_allSpendInputs_4698 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4698 ~v0 v1 = du_allSpendInputs_4698 v1
du_allSpendInputs_4698 ::
  T_Tx_3838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_4698 v0
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
              (coe d_SpendInputsOf_4222 (coe du_HasSpendInputs'45'Tx_4618) v2)))
      (coe d_SpendInputsOf_4222 (coe du_HasSpendInputs'45'Tx_4618) v0)
      (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4706 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4706 ~v0 v1 = du_allSpendInputsList_4706 v1
du_allSpendInputsList_4706 ::
  T_Tx_3838 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_4706 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_SpendInputsOf_4222 (coe du_HasSpendInputs'45'Tx_4618) v0)
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (d_SpendInputsOf_4222 (coe du_HasSpendInputs'45'Tx_4618))
         (d_txSubTransactions_3952 (coe d_txBody_3858 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4710 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4710 ~v0 v1 = du_allReferenceInputs_4710 v1
du_allReferenceInputs_4710 ::
  T_Tx_3838 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_4710 v0
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
                 d_ReferenceInputsOf_4242 (coe du_HasReferenceInputs'45'Tx_4622)
                 v2)))
      (coe
         d_ReferenceInputsOf_4242 (coe du_HasReferenceInputs'45'Tx_4622) v0)
      (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendTxOuts
d_spendTxOuts_4722 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4722 v0 ~v1 v2 v3 = du_spendTxOuts_4722 v0 v2 v3
du_spendTxOuts_4722 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_spendTxOuts_4722 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1420 (coe v0))
               (coe d_DecEq'45'Ix_1418 (coe v0))))
         (coe v2)
         (coe d_SpendInputsOf_4222 (coe du_HasSpendInputs'45'Tx_4618) v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4728 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4728 v0 ~v1 v2 v3
  = du_referencedTxOuts_4728 v0 v2 v3
du_referencedTxOuts_4728 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referencedTxOuts_4728 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1420 (coe v0))
               (coe d_DecEq'45'Ix_1418 (coe v0))))
         (coe v2)
         (coe
            d_ReferenceInputsOf_4242 (coe du_HasReferenceInputs'45'Tx_4622)
            v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4734 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4734 ~v0 v1 = du_scriptsOfUTxO_4734 v1
du_scriptsOfUTxO_4734 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_4734 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4684)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4736 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4736 ~v0 ~v1 v2 = du_scriptsOfTx_4736 v2
du_scriptsOfTx_4736 ::
  T_Tx_3838 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_4736 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4684)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4442 (coe du_HasTxOuts'45'Tx_4674) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendScripts
d_spendScripts_4738 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4738 v0 ~v1 = du_spendScripts_4738 v0
du_spendScripts_4738 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_spendScripts_4738 v0
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
              (coe du_txOutToScript_4684)))
      (coe du_spendTxOuts_4722 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceScripts
d_referenceScripts_4740 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4740 v0 ~v1 v2 v3
  = du_referenceScripts_4740 v0 v2 v3
du_referenceScripts_4740 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_referenceScripts_4740 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4684)
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_referencedTxOuts_4728 (coe v0) (coe v1) (coe v2))
         (coe du_spendTxOuts_4722 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4746 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4746 v0 v1 v2
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
              (coe du_referenceScripts_4740 (coe v0) (coe v4) (coe v2))))
      (coe du_referenceScripts_4740 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessScripts
d_witnessScripts_4756 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4756 ~v0 ~v1 = du_witnessScripts_4756
du_witnessScripts_4756 ::
  T_Tx_3838 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_4756
  = coe d_ScriptsOf_4422 (coe du_HasScripts'45'Tx_4670)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4758 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4758 ~v0 v1 = du_allWitnessScripts_4758 v1
du_allWitnessScripts_4758 ::
  T_Tx_3838 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_4758 v0
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
              (coe v1) (coe du_witnessScripts_4756 v2)))
      (coe du_witnessScripts_4756 v0)
      (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxScripts
d_getTxScripts_4766 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4766 v0 ~v1 v2 v3 = du_getTxScripts_4766 v0 v2 v3
du_getTxScripts_4766 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_getTxScripts_4766 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_scriptsOfTx_4736 (coe v1))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_spendScripts_4738 v0 v1 v2)
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe du_referenceScripts_4740 (coe v0) (coe v1) (coe v2))
            (coe du_witnessScripts_4756 v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getAllScripts
d_getAllScripts_4772 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4772 v0 v1 v2
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
              (coe v3) (coe du_getTxScripts_4766 (coe v0) (coe v4) (coe v2))))
      (coe du_getTxScripts_4766 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.dataOfTx
d_dataOfTx_4782 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3838 -> [AgdaAny]
d_dataOfTx_4782 ~v0 ~v1 v2 = du_dataOfTx_4782 v2
du_dataOfTx_4782 :: T_Tx_3838 -> [AgdaAny]
du_dataOfTx_4782 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4688)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4442 (coe du_HasTxOuts'45'Tx_4674) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4784 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4784 ~v0 v1 = du_txOutDataOfUTxO_4784 v1
du_txOutDataOfUTxO_4784 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_txOutDataOfUTxO_4784 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4688)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendData
d_spendData_4786 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4786 v0 ~v1 = du_spendData_4786 v0
du_spendData_4786 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_spendData_4786 v0
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
              (coe du_txOutToDatum_4688)))
      (coe du_spendTxOuts_4722 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceData
d_referenceData_4788 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4788 v0 ~v1 = du_referenceData_4788 v0
du_referenceData_4788 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_referenceData_4788 v0
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
              (coe du_txOutToDatum_4688)))
      (coe du_referencedTxOuts_4728 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessData
d_witnessData_4790 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3838 -> [AgdaAny]
d_witnessData_4790 ~v0 ~v1 = du_witnessData_4790
du_witnessData_4790 :: T_Tx_3838 -> [AgdaAny]
du_witnessData_4790 = coe d_DataOf_4342 (coe du_HasData'45'Tx_4662)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxData
d_getTxData_4792 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3838 -> [AgdaAny]
d_getTxData_4792 ~v0 ~v1 v2 = du_getTxData_4792 v2
du_getTxData_4792 :: T_Tx_3838 -> [AgdaAny]
du_getTxData_4792 v0 = coe du_witnessData_4790 v0
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4796 ::
  T_TransactionStructure_58 -> T_Tx_3838 -> ()
d_NoOverlappingSpendInputs_4796 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allMintedCoin
d_allMintedCoin_4800 ::
  T_TransactionStructure_58 -> T_Tx_3838 -> Integer
d_allMintedCoin_4800 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                 (d_tokenAlgebra_2738 (coe v0))
                 (coe d_MintedValueOf_4262 (coe du_HasMintedValue'45'Tx_4626) v3))
              (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (d_tokenAlgebra_2738 (coe v0))
         (coe d_MintedValueOf_4262 (coe du_HasMintedValue'45'Tx_4626) v1))
      (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4808 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  AgdaAny ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4808 v0 ~v1 v2 v3 v4
  = du_lookupScriptHash_4808 v0 v2 v3 v4
du_lookupScriptHash_4808 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_lookupScriptHash_4808 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1412 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
         (d_scriptStructure_2214 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
               (coe d_scriptStructure_2214 (coe v0))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe d_scriptStructure_2214 (coe v0)))))
      (coe v1) (coe du_getTxScripts_4766 (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allDCerts
d_allDCerts_4816 ::
  T_TransactionStructure_58 ->
  T_Tx_3838 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424]
d_allDCerts_4816 ~v0 v1 = du_allDCerts_4816 v1
du_allDCerts_4816 ::
  T_Tx_3838 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1424]
du_allDCerts_4816 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe d_DCertsOf_4302 (coe du_HasDCerts'45'Tx_4594))
         (coe d_txSubTransactions_3952 (coe d_txBody_3858 (coe v0))))
      (coe d_DCertsOf_4302 (coe du_HasDCerts'45'Tx_4594) v0)
