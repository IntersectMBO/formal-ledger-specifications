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
  = C_constructor_4772 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
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
d_Network_100 ::
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
d_Network_100 = erased
-- Ledger.Dijkstra.Specification.Transaction._.THash
d_THash_138 ::
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
d_THash_138 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptHash
d_ScriptHash_144 ::
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
d_ScriptHash_144 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Ser
d_Ser_146 ::
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
d_Ser_146 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_176 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__186 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__186 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_188 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value
d_Value_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_204 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin
d_coin_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_216 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.inject
d_inject_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.policies
d_policies_222 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.size
d_size_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure
d_ScriptStructure_584 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Datum
d_Datum_752 ::
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
d_Datum_752 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Redeemer
d_Redeemer_808 ::
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
d_Redeemer_808 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.p1s
d_p1s_848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.ps
d_ps_850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.Datum
d_Datum_880 ::
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
d_Datum_880 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Redeemer
d_Redeemer_936 ::
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
d_Redeemer_936 = erased
-- Ledger.Dijkstra.Specification.Transaction._.GovParams
d_GovParams_1018 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.ppUpd
d_ppUpd_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Ix
d_Ix_1396 :: T_TransactionStructure_58 -> ()
d_Ix_1396 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxId
d_TxId_1398 :: T_TransactionStructure_58 -> ()
d_TxId_1398 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1400 :: T_TransactionStructure_58 -> ()
d_AuxiliaryData_1400 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1402 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1402 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1404 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1404 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1406 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1406 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.leiosCryptoStructure
d_leiosCryptoStructure_1408 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1408 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1410 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1410 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1412 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1412 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1414 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1414 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1418 :: T_TransactionStructure_58 -> ()
d_THash_1418 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1420 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe d_adHashingScheme_1402 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1422 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1402 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1424 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1424 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1402 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1426 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1426 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1402 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1430 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1430 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1432 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1434 ::
  T_TransactionStructure_58 -> Integer
d_MaxLovelaceSupply'7580'_1434 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Network
d_Network_1436 :: T_TransactionStructure_58 -> ()
d_Network_1436 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1438 :: T_TransactionStructure_58 -> AgdaAny
d_NetworkId_1438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1440 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1442 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1444 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1446 :: T_TransactionStructure_58 -> Integer
d_Quorum_1446 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1448 ::
  T_TransactionStructure_58 -> Integer
d_RandomnessStabilisationWindow'7580'_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1450 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1450 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1452 :: T_TransactionStructure_58 -> Integer
d_SlotsPerEpoch'7580'_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1454 ::
  T_TransactionStructure_58 -> Integer
d_StabilityWindow'7580'_1454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1456 ::
  T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1456 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1458 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe d_globalConstants_1404 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1462 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1462 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1464 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d_cryptoStructure_1406 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1466 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1466 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1468 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1468 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1470 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1470 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-VRF
d_DecEq'45'VRF_1472 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1472 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d_cryptoStructure_1406 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1474 :: T_TransactionStructure_58 -> ()
d_THash_1474 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1476 :: T_TransactionStructure_58 -> ()
d_KeyPair_1476 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1478 :: T_TransactionStructure_58 -> ()
d_SKey_1478 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1480 :: T_TransactionStructure_58 -> ()
d_ScriptHash_1480 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1482 :: T_TransactionStructure_58 -> ()
d_Ser_1482 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1484 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d_cryptoStructure_1406 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1486 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1486 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1488 :: T_TransactionStructure_58 -> ()
d_Sig_1488 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1490 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1490 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1492 :: T_TransactionStructure_58 -> ()
d_VKey_1492 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VRF
d_VRF_1494 :: T_TransactionStructure_58 -> ()
d_VRF_1494 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1496 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1496 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1498 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1498 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1500 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1500 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.khs
d_khs_1502 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1502 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d_cryptoStructure_1406 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1504 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1504 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d_cryptoStructure_1406 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sign
d_sign_1506 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1506 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1510 :: T_TransactionStructure_58 -> ()
d_MemoryEstimate_1510 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1512 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1518 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1518 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1520 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1520 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1522 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1522 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1528 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1532 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1536 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1540 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1544 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1544 ~v0 = du_addValue_1544
du_addValue_1544 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1546 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1548 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1548 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1552 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1556 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1560 v0
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
d_size_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1564 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1564 ~v0 = du_sum'7515'_1564
du_sum'7515'_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1566 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1570 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1570 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1572 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1572 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1574 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1574 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1576 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1576 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1578 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1578 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1582 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1582 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1584 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1584 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1586 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1586 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1588 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1588 ~v0 = du_isMagmaIsomorphism_1588
du_isMagmaIsomorphism_1588 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1588 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1590 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1590 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1590 v2
du_isMagmaMonomorphism_1590 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1590 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1592 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1592 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1594 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1594 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1596 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1596 v0
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
d_isRelIsomorphism_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1598 ~v0 ~v1 v2 = du_isRelIsomorphism_1598 v2
du_isRelIsomorphism_1598 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1598 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1600 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1600 ~v0 ~v1 v2 = du_isRelMonomorphism_1600 v2
du_isRelMonomorphism_1600 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1600 v0
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
d_surjective_1602 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1602 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1604 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1604 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1606 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1606 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1610 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1610 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1612 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1612 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1614 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1614 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1616 ~v0 = du_isMagmaMonomorphism_1616
du_isMagmaMonomorphism_1616 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1616 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1618 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1618 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1620 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1620 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1622 ~v0 ~v1 v2 = du_isRelMonomorphism_1622 v2
du_isRelMonomorphism_1622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1622 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1624 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1626 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1630 :: T_TransactionStructure_58 -> ()
d_Addr_1630 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AttrSizeOf
d_AttrSizeOf_1634 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1636 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1640 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1644 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1648 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1648 ~v0 = du_Dec'45'isScript_1648
du_Dec'45'isScript_1648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1648
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1650 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1650 ~v0 = du_Dec'45'isVKey_1650
du_Dec'45'isVKey_1650 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1650
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1652 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1404 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1406 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1406 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1654 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1404 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1406 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1406 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1656 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1406 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1406 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1658 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe d_globalConstants_1404 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe d_cryptoStructure_1406 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1406 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize
d_HasAttrSize_1660 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1664 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1664 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1664
du_HasAttrSize'45'BootstrapAddr_1664 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1664
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1666 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1670 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1670 ~v0
  = du_HasCredential'45'RewardAddress_1670
du_HasCredential'45'RewardAddress_1670 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1670
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1672 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1676 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1680 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1680 ~v0
  = du_HasNetworkId'45'BaseAddr_1680
du_HasNetworkId'45'BaseAddr_1680 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1680
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1682 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1682 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1682
du_HasNetworkId'45'BootstrapAddr_1682 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1682
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1684 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1684 ~v0
  = du_HasNetworkId'45'RewardAddress_1684
du_HasNetworkId'45'RewardAddress_1684 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1684
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress
d_HasRewardAddress_1686 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals
d_HasWithdrawals_1690 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1694 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1696 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1696 ~v0 = du_IsBootstrapAddr'63'_1696
du_IsBootstrapAddr'63'_1696 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1696
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj
d_IsKeyHashObj_1700 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1702 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1702 ~v0 = du_IsKeyHashObj'63'_1702
du_IsKeyHashObj'63'_1702 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1702
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1706 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1706 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1708 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress
d_RewardAddress_1710 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddressOf
d_RewardAddressOf_1714 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1714 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1718 :: T_TransactionStructure_58 -> ()
d_ScriptAddr_1718 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1720 :: T_TransactionStructure_58 -> ()
d_ScriptBaseAddr_1720 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1722 :: T_TransactionStructure_58 -> ()
d_ScriptBootstrapAddr_1722 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1726 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1726 ~v0 = du_Show'45'Credential_1726
du_Show'45'Credential_1726 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1726 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1728 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1728 ~v0
  = du_Show'45'Credential'215'Coin_1728
du_Show'45'Credential'215'Coin_1728 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1728 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1730 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1730 ~v0 = du_Show'45'RewardAddress_1730
du_Show'45'RewardAddress_1730 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1730
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1732 :: T_TransactionStructure_58 -> ()
d_VKeyAddr_1732 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1734 :: T_TransactionStructure_58 -> ()
d_VKeyBaseAddr_1734 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1736 :: T_TransactionStructure_58 -> ()
d_VKeyBootstrapAddr_1736 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Withdrawals
d_Withdrawals_1740 :: T_TransactionStructure_58 -> ()
d_Withdrawals_1740 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.WithdrawalsOf
d_WithdrawalsOf_1742 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1742 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1744 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1744 ~v0 = du_getScriptHash_1744
du_getScriptHash_1744 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1744
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1746 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1746 ~v0 = du_isBootstrapAddr_1746
du_isBootstrapAddr_1746 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1746
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1748 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1748 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1750 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1750 ~v0 = du_isKeyHashObj_1750
du_isKeyHashObj_1750 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1750
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1752 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1752 ~v0 = du_isKeyHashObj'7495'_1752
du_isKeyHashObj'7495'_1752 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1752
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1754 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1756 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1756 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1758 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1758 ~v0 = du_isScriptObj_1758
du_isScriptObj_1758 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1758
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1760 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1760 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1762 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1764 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1764 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.netId
d_netId_1766 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1766 ~v0 = du_netId_1766
du_netId_1766 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1766
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1768 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1768 ~v0 = du_payCred_1768
du_payCred_1768 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1768
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1770 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1770 ~v0 = du_stakeCred_1770
du_stakeCred_1770 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1770
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1774 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1774 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1776 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1776 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1778 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1778 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1782 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1782 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1786 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1786 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1796 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1796 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1800 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1804 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1804 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1808 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1812 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1812 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1816 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.net
d_net_1828 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.stake
d_stake_1830 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1842 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1842 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1844 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1844 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1846 ::
  T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1846 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1848 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1848 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1850 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1850 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1852 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1852 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1854 :: T_TransactionStructure_58 -> ()
d_Epoch_1854 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1856 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1856 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1858 ::
  T_TransactionStructure_58 -> AgdaAny
d_RandomnessStabilisationWindow_1858 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1860 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1862 :: T_TransactionStructure_58 -> ()
d_Slot_1862 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1864 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1864 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1866 :: T_TransactionStructure_58 -> AgdaAny
d_StabilityWindow_1866 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1868 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1870 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1870 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.e<sucᵉ
d_e'60'suc'7497'_1872 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_1872 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1874 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_epoch_1874 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1876 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_firstSlot_1876 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1878 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1878 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1880 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_suc'7497'_1880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1882 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_ℕtoEpoch_1882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≤-predᵉ
d_'8804''45'pred'7497'_1884 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_1888 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_1888 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (let v2 = d_epochStructure_1410 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                    (coe d_globalConstants_1404 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_396
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-NativeScript
d_DecEq'45'NativeScript_1890 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_1890 v0
  = let v1 = d_cryptoStructure_1406 (coe v0) in
    coe
      (let v2 = d_epochStructure_1410 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                    (coe d_globalConstants_1404 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_342
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.EvalNativeScript
d_EvalNativeScript_1892 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NativeScript
d_NativeScript_1894 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1896 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusLanguage
d_PlutusLanguage_1900 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1902 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1920 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  ()
d_P1Script_1986 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1988 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2002 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_CostModel_2004 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_T_2006 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_THash_2008 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_2012 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Datum_2012 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2026 v0
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
d_DecEq'45'THash_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2028 v0
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
d_ExUnit'45'CommutativeMonoid_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_ExUnits_2032 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_LangDepView_2036 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Language_2038 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_PlutusScript_2040 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_2042 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV1_2042 ~v0 = du_PlutusV1_2042
du_PlutusV1_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV1_2042
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_2044 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV2_2044 ~v0 = du_PlutusV2_2044
du_PlutusV2_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV2_2044
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_2046 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV3_2046 ~v0 = du_PlutusV3_2046
du_PlutusV3_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV3_2046
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV4
d_PlutusV4_2048 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV4_2048 ~v0 = du_PlutusV4_2048
du_PlutusV4_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV4_2048
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Prices_2050 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_2052 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Redeemer_2052 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Language
d_Show'45'Language_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2062 v0
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
d_T'45'Hashable_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2064 v0
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
d_T'45'isHashable_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2066 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny
d_language_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2072 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2078 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_CostModel_2080 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_T_2082 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_THash_2084 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_2088 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_2088 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2104 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2104 ~v0
  = du_DecEq'45'LanguageCostModels_2104
du_DecEq'45'LanguageCostModels_2104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_2108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2108 v0
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
d_DecEq'45'THash_2110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2110 v0
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
d_ExUnit'45'CommutativeMonoid_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_ExUnits_2114 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2120 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2120 ~v0 = du_Hashable'45'Script_2120
du_Hashable'45'Script_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_LangDepView_2122 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Language_2124 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2126 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_P1Script_2130 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_PlutusScript_2132 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_2134 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV1_2134 ~v0 v1 = du_PlutusV1_2134 v1
du_PlutusV1_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV1_2134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_2136 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV2_2136 ~v0 v1 = du_PlutusV2_2136 v1
du_PlutusV2_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV2_2136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_2138 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV3_2138 ~v0 v1 = du_PlutusV3_2138 v1
du_PlutusV3_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV3_2138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV4
d_PlutusV4_2140 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV4_2140 ~v0 v1 = du_PlutusV4_2140 v1
du_PlutusV4_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV4_2140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Prices_2142 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_2144 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_2144 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_2146 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Script_2146 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Language
d_Show'45'Language_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2154 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2154 ~v0
  = du_Show'45'LanguageCostModels_2154
du_Show'45'LanguageCostModels_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2154
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2158 v0
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
d_T'45'Hashable_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2160 v0
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
d_T'45'isHashable_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_2168 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2168 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_2170 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2170 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_2172 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2172 ~v0 = du_isP1Script'63'_2172
du_isP1Script'63'_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2172 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_2174 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2174 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_2176 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2176 ~v0 = du_isP2Script'63'_2176
du_isP2Script'63'_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2176 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny
d_language_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.languageCostModels
d_languageCostModels_2180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_2184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_2184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_2186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_2186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_2188 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2188 ~v0 = du_toP1Script_2188
du_toP1Script_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_2190 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2190 ~v0 = du_toP2Script_2190
du_toP2Script_2190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2192 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_2194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2194 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_2202 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_2202 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__2206 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2206 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_2208 :: T_TransactionStructure_58 -> ()
d_CostModel_2208 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T
d_T_2210 :: T_TransactionStructure_58 -> ()
d_T_2210 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_2212 :: T_TransactionStructure_58 -> ()
d_THash_2212 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_2214 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Datum
d_Datum_2216 :: T_TransactionStructure_58 -> ()
d_Datum_2216 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_2218 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2220 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_2222 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_2224 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_2226 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_2228 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_2230 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2232 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_2234 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2236 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2236 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2202 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2238 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2238 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2202 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2240 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_2242 :: T_TransactionStructure_58 -> ()
d_ExUnits_2242 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_2244 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2246 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_2248 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_2250 :: T_TransactionStructure_58 -> ()
d_LangDepView_2250 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Language
d_Language_2252 :: T_TransactionStructure_58 -> ()
d_Language_2252 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels
d_LanguageCostModels_2254 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_2258 :: T_TransactionStructure_58 -> ()
d_P1Script_2258 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_2260 :: T_TransactionStructure_58 -> ()
d_PlutusScript_2260 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_2262 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV1_2262 v0
  = let v1 = d_scriptStructure_2202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_2264 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV2_2264 v0
  = let v1 = d_scriptStructure_2202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_2266 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV3_2266 v0
  = let v1 = d_scriptStructure_2202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV4
d_PlutusV4_2268 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV4_2268 v0
  = let v1 = d_scriptStructure_2202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Prices
d_Prices_2270 :: T_TransactionStructure_58 -> ()
d_Prices_2270 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_2272 :: T_TransactionStructure_58 -> ()
d_Redeemer_2272 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Script
d_Script_2274 :: T_TransactionStructure_58 -> ()
d_Script_2274 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_2276 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_2278 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Language
d_Show'45'Language_2280 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2282 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_2284 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2286 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2286 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2202 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2288 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2288 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe d_scriptStructure_2202 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_2290 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe d_scriptStructure_2202 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.fromPlutusLanguage
d_fromPlutusLanguage_2292 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_2294 ::
  T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_2296 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2296 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_2298 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2298 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_2300 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2300 ~v0 = du_isP1Script'63'_2300
du_isP1Script'63'_2300 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2300
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_2302 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2302 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_2304 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2304 ~v0 = du_isP2Script'63'_2304
du_isP2Script'63'_2304 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2304
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.language
d_language_2306 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_language_2306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.languageCostModels
d_languageCostModels_2308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.p1s
d_p1s_2312 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_2312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ps
d_ps_2314 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_2314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_2316 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2316 ~v0 = du_toP1Script_2316
du_toP1Script_2316 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2316
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_2318 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2318 ~v0 = du_toP2Script_2318
du_toP2Script_2318 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2320 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2320 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2322 ::
  T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2322 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_2324 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe d_scriptStructure_2202 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_2328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountOf
d_AccountOf_2332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2334 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2340 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2340 ~v0
  = du_DecEq'45'DrepThresholds_2340
du_DecEq'45'DrepThresholds_2340 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2340
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_668
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2342 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2342 ~v0 = du_DecEq'45'PParamGroup_2342
du_DecEq'45'PParamGroup_2342 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2342
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_674
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2344 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_672
      (coe d_epochStructure_1410 (coe v0))
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2346 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2346 ~v0
  = du_DecEq'45'PoolThresholds_2346
du_DecEq'45'PoolThresholds_2346 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2346
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_670
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2348 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2354 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount
d_HasAccount_2360 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_2364 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2368 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2368 ~v0 = du_HasCast'45'Acnt_2368
du_HasCast'45'Acnt_2368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2368
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2370 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_2374 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
d_HasReserves'45'Acnt_2374 ~v0 = du_HasReserves'45'Acnt_2374
du_HasReserves'45'Acnt_2374 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
du_HasReserves'45'Acnt_2374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2376 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_2376 ~v0 = du_HasTreasury'45'Acnt_2376
du_HasTreasury'45'Acnt_2376 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
du_HasTreasury'45'Acnt_2376
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2380 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2382 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2386 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2392 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2398 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2398 ~v0 = du_Show'45'DrepThresholds_2398
du_Show'45'DrepThresholds_2398 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_676
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2400 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_680
      (coe d_epochStructure_1410 (coe v0))
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2402 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2402 ~v0 = du_Show'45'PoolThresholds_2402
du_Show'45'PoolThresholds_2402 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2402
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_678
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2406 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2406 ~v0 = du_paramsWF'45'elim_2406
du_paramsWF'45'elim_2406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_608
      v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2408 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_2408 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2410 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_2410 ~v0 = du_positivePParams_2410
du_positivePParams_2410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_2410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_498
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_2416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_2418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  ()
d_UpdateT_2446 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_2450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2454 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> ()
d_ppdWellFormed_2454 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount.AccountOf
d_AccountOf_2460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_2484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2500 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_2502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_2522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minPoolCost
d_minPoolCost_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_2578 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2584 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> ()
d_ppdWellFormed_2584 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2590 ::
  T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2590 ~v0 = du__'63''8599'__2590
du__'63''8599'__2590 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2590 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1470
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2592 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__2592 v0 v1 v2
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
                  (coe d_scriptStructure_2202 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2594 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
      (coe d_epochStructure_1410 (coe v0))
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2596 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2600 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
      (coe d_scriptStructure_2202 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2602 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2602 ~v0 = du_modifiedUpdateGroups_2602
du_modifiedUpdateGroups_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2602
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2604 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesEconomicGroup_2604 ~v0 = du_modifiesEconomicGroup_2604
du_modifiesEconomicGroup_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesEconomicGroup_2604
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1070
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2606 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesGovernanceGroup_2606 ~v0
  = du_modifiesGovernanceGroup_2606
du_modifiesGovernanceGroup_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesGovernanceGroup_2606
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2608 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesNetworkGroup_2608 ~v0 = du_modifiesNetworkGroup_2608
du_modifiesNetworkGroup_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesNetworkGroup_2608
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_974
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2610 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesSecurityGroup_2610 ~v0 = du_modifiesSecurityGroup_2610
du_modifiesSecurityGroup_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesSecurityGroup_2610
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1358
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2612 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesTechnicalGroup_2612 ~v0 = du_modifiesTechnicalGroup_2612
du_modifiesTechnicalGroup_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesTechnicalGroup_2612
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1166
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2614 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_paramsUpdateWellFormed_2614 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2616 v0
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
d_'8801''45'update_2618 ::
  T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2618 ~v0 = du_'8801''45'update_2618
du_'8801''45'update_2618 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2618 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1484
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_Emax_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_drepActivity_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_leiosMaxEBExUnits_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxBlockExUnits_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_2676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_maxTxExUnits_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_2684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe AgdaAny
d_prices_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govParams
d_govParams_2724 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_govParams_2724 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2726 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2726 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2728 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_txidBytes_2728 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_2730 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_2730 v0
  = case coe v0 of
      C_constructor_4772 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2734 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe d_govParams_2724 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2736 :: T_TransactionStructure_58 -> ()
d_UpdateT_2736 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2738 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_2724 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2740 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe d_govParams_2724 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2742 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_2724 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2744 :: T_TransactionStructure_58 -> AgdaAny -> ()
d_ppdWellFormed_2744 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2746 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe d_govParams_2724 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2750 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2750 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2752 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2752 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2754 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2754 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2756 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2758 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2760 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2764 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2768 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value
d_Value_2772 :: T_TransactionStructure_58 -> ()
d_Value_2772 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2774 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2776 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin
d_coin_2778 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_coin_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2780 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2780 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2782 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2784 ::
  T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2784 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.inject
d_inject_2786 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_inject_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2788 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2788 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.policies
d_policies_2790 ::
  T_TransactionStructure_58 -> AgdaAny -> [AgdaAny]
d_policies_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2792 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2792 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2726 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.size
d_size_2794 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_size_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2796 ::
  T_TransactionStructure_58 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2726 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ε
d_ε_2798 :: T_TransactionStructure_58 -> AgdaAny
d_ε_2798 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2726 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2802 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2802 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2804 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2804 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2806 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2806 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2808 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2808 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2810 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2810 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2814 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2814 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2816 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2816 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2818 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2818 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2820 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2820 ~v0 = du_isMagmaIsomorphism_2820
du_isMagmaIsomorphism_2820 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2820 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2822 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2822 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2822 v2
du_isMagmaMonomorphism_2822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2822 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2824 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2824 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2826 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2828 v0
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
d_isRelIsomorphism_2830 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2830 ~v0 ~v1 v2 = du_isRelIsomorphism_2830 v2
du_isRelIsomorphism_2830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2832 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2832 ~v0 ~v1 v2 = du_isRelMonomorphism_2832 v2
du_isRelMonomorphism_2832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2832 v0
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
d_surjective_2834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2836 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2838 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2842 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2844 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2844 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2846 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2848 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2848 ~v0 = du_isMagmaMonomorphism_2848
du_isMagmaMonomorphism_2848 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2848 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2852 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2854 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2854 ~v0 ~v1 v2 = du_isRelMonomorphism_2854 v2
du_isRelMonomorphism_2854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2856 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2858 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2860 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.C_constructor_1668
      (d_DecEq'45'TxId_1414 (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe d_adHashingScheme_1402 (coe v0)))
      (d_cryptoStructure_1406 (coe v0))
      (d_leiosCryptoStructure_1408 (coe v0))
      (d_epochStructure_1410 (coe v0)) (d_globalConstants_1404 (coe v0))
      (d_scriptStructure_2202 (coe v0)) (d_govParams_2724 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2864 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  Bool
d_'61''61''45'GovAction_2864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1518
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2866 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1500
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2868 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Bool
d_'61''61''45'GovProposal_2868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1552
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_2870 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2870 ~v0 = du_'61''61''45'Set_2870
du_'61''61''45'Set_2870 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2870 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1488
      v1 v2 v3
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2872 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_AnchorOf_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1306
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DReps
d_DReps_2884 :: T_TransactionStructure_58 -> ()
d_DReps_2884 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1286
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2888 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1482
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2890 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2890 ~v0 = du_DecEq'45'GovActionType_2890
du_DecEq'45'GovActionType_2890 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2890
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1372
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2892 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2892 ~v0 = du_DecEq'45'GovRole_2892
du_DecEq'45'GovRole_2892 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2892
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1374
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2894 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1380
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2896 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1550
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2898 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1378
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2900 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2900 ~v0 = du_DecEq'45'Vote_2900
du_DecEq'45'Vote_2900 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2900
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1376
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318 ->
  AgdaAny -> Integer
d_DepositOf_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1326
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2904 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2908 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  ()
d_GovActionData_2908 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2910 :: T_TransactionStructure_58 -> ()
d_GovActionID_2910 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_GovActionOf_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1186
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2914 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2918 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_GovActionTypeOf_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1150
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2922 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2926 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2928 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_940 ->
  ()
d_GovRoleCredential_2928 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2930 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_2934 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_GovVoterOf_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1206
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_2940 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_GovVotesOf_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_2946 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2950 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298
d_HasAnchor'45'GovProposal_2950 ~v0
  = du_HasAnchor'45'GovProposal_2950
du_HasAnchor'45'GovProposal_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298
du_HasAnchor'45'GovProposal_2950
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1352
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2952 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2952 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2952
du_HasCast'45'GovAction'45'Sigma_2952 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2952
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1336
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2954 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2954 ~v0 = du_HasCast'45'GovVote_2954
du_HasCast'45'GovVote_2954 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2954
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1478
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2956 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2956 ~v0
  = du_HasCast'45'HashProtected_2956
du_HasCast'45'HashProtected_2956 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1342
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2958 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2958 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2958
du_HasCast'45'HashProtected'45'MaybeScriptHash_2958 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2958
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1344
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_2960 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_2964 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2968 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318
d_HasDeposit'45'GovProposal_2968 ~v0
  = du_HasDeposit'45'GovProposal_2968
du_HasDeposit'45'GovProposal_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318
du_HasDeposit'45'GovProposal_2968
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1354
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_2970 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2974 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
d_HasGovAction'45'GovActionState_2974 ~v0
  = du_HasGovAction'45'GovActionState_2974
du_HasGovAction'45'GovActionState_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
du_HasGovAction'45'GovActionState_2974
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1358
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2976 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
d_HasGovAction'45'GovProposal_2976 ~v0
  = du_HasGovAction'45'GovProposal_2976
du_HasGovAction'45'GovProposal_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
du_HasGovAction'45'GovProposal_2976
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1356
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_2978 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2982 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovAction_2982 ~v0
  = du_HasGovActionType'45'GovAction_2982
du_HasGovActionType'45'GovAction_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovAction_2982
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1334
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2984 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovActionState_2984 ~v0
  = du_HasGovActionType'45'GovActionState_2984
du_HasGovActionType'45'GovActionState_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovActionState_2984
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1362
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2986 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovProposal_2986 ~v0
  = du_HasGovActionType'45'GovProposal_2986
du_HasGovActionType'45'GovProposal_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovProposal_2986
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1360
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_2988 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2992 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198
d_HasGovVoter'45'GovVote_2992 ~v0 = du_HasGovVoter'45'GovVote_2992
du_HasGovVoter'45'GovVote_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198
du_HasGovVoter'45'GovVote_2992
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1346
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_2994 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2998 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218
d_HasGovVotes'45'GovActionState_2998 ~v0
  = du_HasGovVotes'45'GovActionState_2998
du_HasGovVotes'45'GovActionState_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218
du_HasGovVotes'45'GovActionState_2998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_3000 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3004 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258
d_HasPolicy'45'GovProposal_3004 ~v0
  = du_HasPolicy'45'GovProposal_3004
du_HasPolicy'45'GovProposal_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258
du_HasPolicy'45'GovProposal_3004
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1350
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3006 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3006 ~v0
  = du_HasRewardAddress'45'GovActionState_3006
du_HasRewardAddress'45'GovActionState_3006 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3006
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1366
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3008 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3008 ~v0
  = du_HasRewardAddress'45'GovProposal_3008
du_HasRewardAddress'45'GovProposal_3008 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3008
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1368
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote
d_HasVote_3010 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_3014 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238
d_HasVote'45'GovVote_3014 ~v0 = du_HasVote'45'GovVote_3014
du_HasVote'45'GovVote_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238
du_HasVote'45'GovVote_3014
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1348
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_3016 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_3020 :: T_TransactionStructure_58 -> () -> ()
d_HashProtected_3020 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_3024 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  ()
d_NeedsHash_3024 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Policy
d_Policy_3030 :: T_TransactionStructure_58 -> ()
d_Policy_3030 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_3036 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3036 ~v0 = du_Show'45'GovRole_3036
du_Show'45'GovRole_3036 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3036
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1370
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_3038 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1480
      (coe d_govStructure_2860 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_3046 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_3048 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_3050 :: T_TransactionStructure_58 -> ()
d_VoteDelegs_3050 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1170
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_VoteOf_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1246
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_3058 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3058 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1658
      (coe d_govStructure_2860 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_3060 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3060 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  AgdaAny
d_gaData_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_976
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_gaType_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_974
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_3066 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3066 ~v0 = du_govVoterCredential_3066
du_govVoterCredential_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3066
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1128
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_3068 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3068 ~v0 = du_isGovVoterDRep_3068
du_isGovVoterDRep_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1124
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_3072 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3072 ~v0 = du_proposedCC_3072
du_proposedCC_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3072
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1136
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002 ->
  AgdaAny
d_hash_3088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1010
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_3090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1008
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  AgdaAny
d_gaData_3094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_976
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_gaType_3096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_974
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_action_3100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1116
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.deposit
d_deposit_3102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  Integer
d_deposit_3102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1120
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  AgdaAny
d_expiresIn_3104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1114
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  AgdaAny
d_prevAction_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1118
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_3110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_votes_3110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1110
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_action_3130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1082
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_anchor_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1092
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Integer
d_deposit_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1088
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Maybe AgdaAny
d_policy_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1086
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  AgdaAny
d_prevAction_3138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1084
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_3140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1090
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_anchor_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1030
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1024
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_vote_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1028
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_voter_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1026
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvCredential
d_gvCredential_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  AgdaAny
d_gvCredential_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_998
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvRole
d_gvRole_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_940
d_gvRole_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_996
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvCC
d_gvCC_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1042
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvDRep
d_gvDRep_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1044
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvSPO
d_gvSPO_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1046
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_AnchorOf_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1306
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1286
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318 ->
  AgdaAny -> Integer
d_DepositOf_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1326
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_GovActionOf_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1186
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_GovActionTypeOf_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1150
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_GovVoterOf_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1206
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_GovVotesOf_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1266
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_VoteOf_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1246
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1170
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCert
d_DCert_3264 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountBalanceIntervals
d_AccountBalanceIntervals_3708 :: T_TransactionStructure_58 -> ()
d_AccountBalanceIntervals_3708 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceInterval
d_BalanceInterval_3710 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3712 ::
  T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_940 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3712 ~v0
  = du_Dec'45'InBalanceInterval_3712
du_Dec'45'InBalanceInterval_3712 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_940 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3712
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_974
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3714 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3714 ~v0
  = du_DecEq'45'BalanceInterval_3714
du_DecEq'45'BalanceInterval_3714 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1098
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDeposits
d_DirectDeposits_3716 :: T_TransactionStructure_58 -> ()
d_DirectDeposits_3716 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.InBalanceInterval
d_InBalanceInterval_3720 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3756 :: T_TransactionStructure_58 -> ()
d_TxIn_3756 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3758 :: T_TransactionStructure_58 -> ()
d_TxOut_3758 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3760 :: T_TransactionStructure_58 -> ()
d_UTxO_3760 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.RedeemerPtr
d_RedeemerPtr_3762 :: T_TransactionStructure_58 -> ()
d_RedeemerPtr_3762 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3764 :: T_TransactionStructure_58 -> ()
d_ProposedPPUpdates_3764 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Update
d_Update_3766 :: T_TransactionStructure_58 -> ()
d_Update_3766 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3772 a0 a1 a2 = ()
newtype T_HasUTxO_3772
  = C_constructor_3782 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3780 ::
  T_HasUTxO_3772 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3780 v0
  = case coe v0 of
      C_constructor_3782 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3786 ::
  T_HasUTxO_3772 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3786 v0 = coe d_UTxOOf_3780 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx
d_Tx_3790 a0 a1 = ()
data T_Tx_3790
  = C_constructor_3820 T_TxBody_3794 T_TxWitnesses_3796 Integer
                       AgdaAny (Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3794 a0 a1 = ()
data T_TxBody_3794
  = C_constructor_3918 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392]
                       AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny (Maybe AgdaAny) AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3796 a0 = ()
data T_TxWitnesses_3796
  = C_constructor_3938 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txBody
d_txBody_3810 :: T_Tx_3790 -> T_TxBody_3794
d_txBody_3810 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txWitnesses
d_txWitnesses_3812 :: T_Tx_3790 -> T_TxWitnesses_3796
d_txWitnesses_3812 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txSize
d_txSize_3814 :: T_Tx_3790 -> Integer
d_txSize_3814 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3816 :: T_Tx_3790 -> AgdaAny
d_isValid_3816 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txAuxData
d_txAuxData_3818 :: T_Tx_3790 -> Maybe AgdaAny
d_txAuxData_3818 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txIns
d_txIns_3870 ::
  T_TxBody_3794 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3870 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_3872 ::
  T_TxBody_3794 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3872 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_3874 :: T_TxBody_3794 -> AgdaAny
d_collateralInputs_3874 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txOuts
d_txOuts_3876 ::
  T_TxBody_3794 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3876 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txId
d_txId_3878 :: T_TxBody_3794 -> AgdaAny
d_txId_3878 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txCerts
d_txCerts_3880 ::
  T_TxBody_3794 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392]
d_txCerts_3880 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txFee
d_txFee_3882 :: T_TxBody_3794 -> AgdaAny
d_txFee_3882 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_3884 ::
  T_TxBody_3794 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3884 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txVldt
d_txVldt_3886 ::
  T_TxBody_3794 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3886 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3888 :: T_TxBody_3794 -> Maybe AgdaAny
d_txADhash_3888 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDonation
d_txDonation_3890 :: T_TxBody_3794 -> Integer
d_txDonation_3890 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_3892 ::
  T_TxBody_3794 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_txGovVotes_3892 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_3894 ::
  T_TxBody_3794 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_txGovProposals_3894 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3896 :: T_TxBody_3794 -> Maybe AgdaAny
d_txNetworkId_3896 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_3898 :: T_TxBody_3794 -> Maybe Integer
d_currentTreasury_3898 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3900 :: T_TxBody_3794 -> AgdaAny
d_mint_3900 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3902 :: T_TxBody_3794 -> Maybe AgdaAny
d_scriptIntegrityHash_3902 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_3904 :: T_TxBody_3794 -> AgdaAny
d_txSubTransactions_3904 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGuards
d_txGuards_3906 ::
  T_TxBody_3794 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3906 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3908 ::
  T_TxBody_3794 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3908 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_3910 ::
  T_TxBody_3794 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3910 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_3912 ::
  T_TxBody_3794 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3912 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_3914 :: T_TxBody_3794 -> AgdaAny
d_txStartingBalanceIntervals_3914 v0
  = case coe v0 of
      C_constructor_3918 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_3916 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_TxBody_3794 -> [AgdaAny]
d_requiredSignerHashes_3916 ~v0 ~v1 v2
  = du_requiredSignerHashes_3916 v2
du_requiredSignerHashes_3916 :: T_TxBody_3794 -> [AgdaAny]
du_requiredSignerHashes_3916 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
      (d_txGuards_3906 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_3928 ::
  T_TxWitnesses_3796 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3928 v0
  = case coe v0 of
      C_constructor_3938 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3930 ::
  T_TxWitnesses_3796 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3930 v0
  = case coe v0 of
      C_constructor_3938 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txData
d_txData_3932 :: T_TxWitnesses_3796 -> [AgdaAny]
d_txData_3932 v0
  = case coe v0 of
      C_constructor_3938 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_3934 ::
  T_TxWitnesses_3796 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3934 v0
  = case coe v0 of
      C_constructor_3938 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3936 ::
  T_TransactionStructure_58 -> T_TxWitnesses_3796 -> [AgdaAny]
d_scriptsP1_3936 ~v0 v1 = du_scriptsP1_3936 v1
du_scriptsP1_3936 :: T_TxWitnesses_3796 -> [AgdaAny]
du_scriptsP1_3936 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3930 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TopLevelTx
d_TopLevelTx_3940 :: T_TransactionStructure_58 -> ()
d_TopLevelTx_3940 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.SubLevelTx
d_SubLevelTx_3942 :: T_TransactionStructure_58 -> ()
d_SubLevelTx_3942 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3944 :: T_TransactionStructure_58 -> ()
d_AnyLevelTx_3944 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3952 a0 a1 a2 a3 = ()
newtype T_HasTxBody_3952
  = C_constructor_3964 (AgdaAny -> T_TxBody_3794)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3962 :: T_HasTxBody_3952 -> AgdaAny -> T_TxBody_3794
d_TxBodyOf_3962 v0
  = case coe v0 of
      C_constructor_3964 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3968 :: T_HasTxBody_3952 -> AgdaAny -> T_TxBody_3794
d_TxBodyOf_3968 v0 = coe d_TxBodyOf_3962 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3974 a0 a1 a2 = ()
newtype T_HasTxWitnesses_3974
  = C_constructor_3984 (AgdaAny -> T_TxWitnesses_3796)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_3982 ::
  T_HasTxWitnesses_3974 -> AgdaAny -> T_TxWitnesses_3796
d_TxWitnessesOf_3982 v0
  = case coe v0 of
      C_constructor_3984 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxWitnessesOf
d_TxWitnessesOf_3988 ::
  T_HasTxWitnesses_3974 -> AgdaAny -> T_TxWitnesses_3796
d_TxWitnessesOf_3988 v0 = coe d_TxWitnessesOf_3982 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers
d_HasRedeemers_3994 a0 a1 a2 = ()
newtype T_HasRedeemers_3994
  = C_constructor_4004 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_4002 ::
  T_HasRedeemers_3994 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4002 v0
  = case coe v0 of
      C_constructor_4004 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RedeemersOf
d_RedeemersOf_4008 ::
  T_HasRedeemers_3994 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4008 v0 = coe d_RedeemersOf_4002 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_4016 a0 a1 a2 a3 = ()
newtype T_HasCollateralInputs_4016
  = C_constructor_4028 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_4026 ::
  T_HasCollateralInputs_4016 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4026 v0
  = case coe v0 of
      C_constructor_4028 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CollateralInputsOf
d_CollateralInputsOf_4032 ::
  T_HasCollateralInputs_4016 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4032 v0
  = coe d_CollateralInputsOf_4026 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees
d_HasTxFees_4040 a0 a1 a2 a3 = ()
newtype T_HasTxFees_4040 = C_constructor_4052 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_4050 :: T_HasTxFees_4040 -> AgdaAny -> AgdaAny
d_TxFeesOf_4050 v0
  = case coe v0 of
      C_constructor_4052 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxFeesOf
d_TxFeesOf_4056 :: T_HasTxFees_4040 -> AgdaAny -> AgdaAny
d_TxFeesOf_4056 v0 = coe d_TxFeesOf_4050 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions
d_HasSubTransactions_4064 a0 a1 a2 a3 = ()
newtype T_HasSubTransactions_4064
  = C_constructor_4076 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_4074 ::
  T_HasSubTransactions_4064 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4074 v0
  = case coe v0 of
      C_constructor_4076 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SubTransactionsOf
d_SubTransactionsOf_4080 ::
  T_HasSubTransactions_4064 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4080 v0 = coe d_SubTransactionsOf_4074 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId
d_HasTxId_4086 a0 a1 a2 = ()
newtype T_HasTxId_4086 = C_constructor_4096 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_4094 :: T_HasTxId_4086 -> AgdaAny -> AgdaAny
d_TxIdOf_4094 v0
  = case coe v0 of
      C_constructor_4096 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxIdOf
d_TxIdOf_4100 :: T_HasTxId_4086 -> AgdaAny -> AgdaAny
d_TxIdOf_4100 v0 = coe d_TxIdOf_4094 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize
d_HasSize_4106 a0 a1 a2 = ()
newtype T_HasSize_4106 = C_constructor_4116 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize.SizeOf
d_SizeOf_4114 :: T_HasSize_4106 -> AgdaAny -> Integer
d_SizeOf_4114 v0
  = case coe v0 of
      C_constructor_4116 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SizeOf
d_SizeOf_4120 :: T_HasSize_4106 -> AgdaAny -> Integer
d_SizeOf_4120 v0 = coe d_SizeOf_4114 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_4126 a0 a1 a2 = ()
newtype T_HasTopLevelGuards_4126
  = C_constructor_4136 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_4134 ::
  T_HasTopLevelGuards_4126 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4134 v0
  = case coe v0 of
      C_constructor_4136 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TopLevelGuardsOf
d_TopLevelGuardsOf_4140 ::
  T_HasTopLevelGuards_4126 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4140 v0 = coe d_TopLevelGuardsOf_4134 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval
d_HasValidInterval_4146 a0 a1 a2 = ()
newtype T_HasValidInterval_4146
  = C_constructor_4156 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_4154 ::
  T_HasValidInterval_4146 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4154 v0
  = case coe v0 of
      C_constructor_4156 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ValidIntervalOf
d_ValidIntervalOf_4160 ::
  T_HasValidInterval_4146 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4160 v0 = coe d_ValidIntervalOf_4154 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs
d_HasSpendInputs_4166 a0 a1 a2 = ()
newtype T_HasSpendInputs_4166
  = C_constructor_4176 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_4174 ::
  T_HasSpendInputs_4166 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4174 v0
  = case coe v0 of
      C_constructor_4176 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SpendInputsOf
d_SpendInputsOf_4180 ::
  T_HasSpendInputs_4166 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4180 v0 = coe d_SpendInputsOf_4174 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_4186 a0 a1 a2 = ()
newtype T_HasReferenceInputs_4186
  = C_constructor_4196 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_4194 ::
  T_HasReferenceInputs_4186 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4194 v0
  = case coe v0 of
      C_constructor_4196 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ReferenceInputsOf
d_ReferenceInputsOf_4200 ::
  T_HasReferenceInputs_4186 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4200 v0 = coe d_ReferenceInputsOf_4194 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue
d_HasMintedValue_4206 a0 a1 a2 = ()
newtype T_HasMintedValue_4206
  = C_constructor_4216 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_4214 :: T_HasMintedValue_4206 -> AgdaAny -> AgdaAny
d_MintedValueOf_4214 v0
  = case coe v0 of
      C_constructor_4216 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MintedValueOf
d_MintedValueOf_4220 :: T_HasMintedValue_4206 -> AgdaAny -> AgdaAny
d_MintedValueOf_4220 v0 = coe d_MintedValueOf_4214 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?
d_HasFees'63'_4226 a0 a1 a2 = ()
newtype T_HasFees'63'_4226
  = C_constructor_4236 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_4234 :: T_HasFees'63'_4226 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4234 v0
  = case coe v0 of
      C_constructor_4236 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.FeesOf?
d_FeesOf'63'_4240 :: T_HasFees'63'_4226 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4240 v0 = coe d_FeesOf'63'_4234 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts
d_HasDCerts_4246 a0 a1 a2 = ()
newtype T_HasDCerts_4246
  = C_constructor_4256 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_4254 ::
  T_HasDCerts_4246 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392]
d_DCertsOf_4254 v0
  = case coe v0 of
      C_constructor_4256 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCertsOf
d_DCertsOf_4260 ::
  T_HasDCerts_4246 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392]
d_DCertsOf_4260 v0 = coe d_DCertsOf_4254 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals
d_HasGovProposals_4266 a0 a1 a2 = ()
newtype T_HasGovProposals_4266
  = C_constructor_4276 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_4274 ::
  T_HasGovProposals_4266 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_GovProposalsOf_4274 v0
  = case coe v0 of
      C_constructor_4276 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovProposalsOf
d_GovProposalsOf_4280 ::
  T_HasGovProposals_4266 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_GovProposalsOf_4280 v0 = coe d_GovProposalsOf_4274 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData
d_HasData_4286 a0 a1 a2 = ()
newtype T_HasData_4286 = C_constructor_4296 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData.DataOf
d_DataOf_4294 :: T_HasData_4286 -> AgdaAny -> [AgdaAny]
d_DataOf_4294 v0
  = case coe v0 of
      C_constructor_4296 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DataOf
d_DataOf_4300 :: T_HasData_4286 -> AgdaAny -> [AgdaAny]
d_DataOf_4300 v0 = coe d_DataOf_4294 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_4306 a0 a1 a2 = ()
newtype T_HasListOfGovProposals_4306
  = C_constructor_4316 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4314 ::
  T_HasListOfGovProposals_4306 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_ListOfGovProposalsOf_4314 v0
  = case coe v0 of
      C_constructor_4316 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4320 ::
  T_HasListOfGovProposals_4306 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_ListOfGovProposalsOf_4320 v0
  = coe d_ListOfGovProposalsOf_4314 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_4326 a0 a1 a2 = ()
newtype T_HasListOfGovVotes_4326
  = C_constructor_4336 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_4334 ::
  T_HasListOfGovVotes_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_ListOfGovVotesOf_4334 v0
  = case coe v0 of
      C_constructor_4336 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovVotesOf
d_ListOfGovVotesOf_4340 ::
  T_HasListOfGovVotes_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_ListOfGovVotesOf_4340 v0 = coe d_ListOfGovVotesOf_4334 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards
d_HasGuards_4346 a0 a1 a2 = ()
newtype T_HasGuards_4346
  = C_constructor_4356 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_4354 ::
  T_HasGuards_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4354 v0
  = case coe v0 of
      C_constructor_4356 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GuardsOf
d_GuardsOf_4360 ::
  T_HasGuards_4346 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4360 v0 = coe d_GuardsOf_4354 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts
d_HasScripts_4366 a0 a1 a2 = ()
newtype T_HasScripts_4366
  = C_constructor_4376 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_4374 ::
  T_HasScripts_4366 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4374 v0
  = case coe v0 of
      C_constructor_4376 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptsOf
d_ScriptsOf_4380 ::
  T_HasScripts_4366 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4380 v0 = coe d_ScriptsOf_4374 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts
d_HasTxOuts_4386 a0 a1 a2 = ()
newtype T_HasTxOuts_4386
  = C_constructor_4396 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_4394 ::
  T_HasTxOuts_4386 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4394 v0
  = case coe v0 of
      C_constructor_4396 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxOutsOf
d_TxOutsOf_4400 ::
  T_HasTxOuts_4386 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4400 v0 = coe d_TxOutsOf_4394 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_4406 a0 a1 a2 = ()
newtype T_HasRequiredSingerHashes_4406
  = C_constructor_4416 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4414 ::
  T_HasRequiredSingerHashes_4406 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4414 v0
  = case coe v0 of
      C_constructor_4416 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4420 ::
  T_HasRequiredSingerHashes_4406 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4420 v0
  = coe d_RequiredSignerHashesOf_4414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_4426 a0 a1 a2 = ()
newtype T_HasCurrentTreasury_4426
  = C_constructor_4436 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_4434 ::
  T_HasCurrentTreasury_4426 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4434 v0
  = case coe v0 of
      C_constructor_4436 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CurrentTreasuryOf
d_CurrentTreasuryOf_4440 ::
  T_HasCurrentTreasury_4426 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4440 v0 = coe d_CurrentTreasuryOf_4434 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_4446 a0 a1 a2 = ()
newtype T_HasDirectDeposits_4446
  = C_constructor_4456 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_4454 ::
  T_HasDirectDeposits_4446 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4454 v0
  = case coe v0 of
      C_constructor_4456 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDepositsOf
d_DirectDepositsOf_4460 ::
  T_HasDirectDeposits_4446 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4460 v0 = coe d_DirectDepositsOf_4454 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_4466 a0 a1 a2 = ()
newtype T_HasBalanceIntervals_4466
  = C_constructor_4476 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_4474 ::
  T_HasBalanceIntervals_4466 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4474 v0
  = case coe v0 of
      C_constructor_4476 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceIntervalsOf
d_BalanceIntervalsOf_4480 ::
  T_HasBalanceIntervals_4466 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4480 v0
  = coe d_BalanceIntervalsOf_4474 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_4486 a0 a1 a2 = ()
newtype T_HasStartingBalanceIntervals_4486
  = C_constructor_4496 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4494 ::
  T_HasStartingBalanceIntervals_4486 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4494 v0
  = case coe v0 of
      C_constructor_4496 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_4500 ::
  T_HasStartingBalanceIntervals_4486 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_4500 v0
  = coe d_StartingBalanceIntervalsOf_4494 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_4506 a0 a1 a2 = ()
newtype T_HasIsValidFlag_4506
  = C_constructor_4516 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_4514 :: T_HasIsValidFlag_4506 -> AgdaAny -> Bool
d_IsValidFlagOf_4514 v0
  = case coe v0 of
      C_constructor_4516 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsValidFlagOf
d_IsValidFlagOf_4520 :: T_HasIsValidFlag_4506 -> AgdaAny -> Bool
d_IsValidFlagOf_4520 v0 = coe d_IsValidFlagOf_4514 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_4522 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxBody_3952
d_HasTxBody'45'Tx_4522 ~v0 ~v1 = du_HasTxBody'45'Tx_4522
du_HasTxBody'45'Tx_4522 :: T_HasTxBody_3952
du_HasTxBody'45'Tx_4522
  = coe C_constructor_3964 (coe (\ v0 -> d_txBody_3810 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_4524 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSize_4106
d_HasSize'45'Tx_4524 ~v0 ~v1 = du_HasSize'45'Tx_4524
du_HasSize'45'Tx_4524 :: T_HasSize_4106
du_HasSize'45'Tx_4524
  = coe C_constructor_4116 (coe (\ v0 -> d_txSize_3814 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_4526 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxWitnesses_3974
d_HasTxWitnesses'45'Tx_4526 ~v0 ~v1 = du_HasTxWitnesses'45'Tx_4526
du_HasTxWitnesses'45'Tx_4526 :: T_HasTxWitnesses_3974
du_HasTxWitnesses'45'Tx_4526
  = coe
      C_constructor_3984 (coe (\ v0 -> d_txWitnesses_3812 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_4528 ::
  T_TransactionStructure_58 -> T_HasIsValidFlag_4506
d_HasIsValidFlag'45'Tx_4528 ~v0 = du_HasIsValidFlag'45'Tx_4528
du_HasIsValidFlag'45'Tx_4528 :: T_HasIsValidFlag_4506
du_HasIsValidFlag'45'Tx_4528
  = coe C_constructor_4516 (coe (\ v0 -> d_isValid_3816 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_4530 ::
  T_TransactionStructure_58 -> T_HasRedeemers_3994
d_HasRedeemers'45'TxWitnesses_4530 ~v0
  = du_HasRedeemers'45'TxWitnesses_4530
du_HasRedeemers'45'TxWitnesses_4530 :: T_HasRedeemers_3994
du_HasRedeemers'45'TxWitnesses_4530
  = coe
      C_constructor_4004 (coe (\ v0 -> d_txRedeemers_3934 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_4532 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasRedeemers_3994
d_HasRedeemers'45'Tx_4532 ~v0 ~v1 = du_HasRedeemers'45'Tx_4532
du_HasRedeemers'45'Tx_4532 :: T_HasRedeemers_3994
du_HasRedeemers'45'Tx_4532
  = coe
      C_constructor_4004
      (coe
         (\ v0 -> d_txRedeemers_3934 (coe d_txWitnesses_3812 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_4534 ::
  T_TransactionStructure_58 -> T_HasCollateralInputs_4016
d_HasCollateralInputs'45'TopLevelTx_4534 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_4534
du_HasCollateralInputs'45'TopLevelTx_4534 ::
  T_HasCollateralInputs_4016
du_HasCollateralInputs'45'TopLevelTx_4534
  = coe
      C_constructor_4028
      (coe
         (\ v0 -> d_collateralInputs_3874 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_4536 ::
  T_TransactionStructure_58 -> T_HasTxFees_4040
d_HasTxFees'45'TopLevelTx_4536 ~v0
  = du_HasTxFees'45'TopLevelTx_4536
du_HasTxFees'45'TopLevelTx_4536 :: T_HasTxFees_4040
du_HasTxFees'45'TopLevelTx_4536
  = coe
      C_constructor_4052
      (coe (\ v0 -> d_txFee_3882 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_4538 ::
  T_TransactionStructure_58 -> T_HasSubTransactions_4064
d_HasSubTransactions'45'TopLevelTx_4538 ~v0
  = du_HasSubTransactions'45'TopLevelTx_4538
du_HasSubTransactions'45'TopLevelTx_4538 ::
  T_HasSubTransactions_4064
du_HasSubTransactions'45'TopLevelTx_4538
  = coe
      C_constructor_4076
      (coe
         (\ v0 -> d_txSubTransactions_3904 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_4540 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4126
d_HasTopLevelGuards'45'TxBody_4540 ~v0 ~v1
  = du_HasTopLevelGuards'45'TxBody_4540
du_HasTopLevelGuards'45'TxBody_4540 :: T_HasTopLevelGuards_4126
du_HasTopLevelGuards'45'TxBody_4540
  = coe
      C_constructor_4136
      (coe (\ v0 -> d_txRequiredTopLevelGuards_3908 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_4542 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4126
d_HasTopLevelGuards'45'Tx_4542 ~v0 ~v1
  = du_HasTopLevelGuards'45'Tx_4542
du_HasTopLevelGuards'45'Tx_4542 :: T_HasTopLevelGuards_4126
du_HasTopLevelGuards'45'Tx_4542
  = coe
      C_constructor_4136
      (coe
         (\ v0 ->
            d_txRequiredTopLevelGuards_3908 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_4544 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4246
d_HasDCerts'45'TxBody_4544 ~v0 ~v1 = du_HasDCerts'45'TxBody_4544
du_HasDCerts'45'TxBody_4544 :: T_HasDCerts_4246
du_HasDCerts'45'TxBody_4544
  = coe C_constructor_4256 (coe (\ v0 -> d_txCerts_3880 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_4546 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4246
d_HasDCerts'45'Tx_4546 ~v0 ~v1 = du_HasDCerts'45'Tx_4546
du_HasDCerts'45'Tx_4546 :: T_HasDCerts_4246
du_HasDCerts'45'Tx_4546
  = coe
      C_constructor_4256
      (coe (\ v0 -> d_txCerts_3880 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_4548 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_4548 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_4548
du_HasWithdrawals'45'TxBody_4548 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_4548
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3884 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_4550 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_4550 ~v0 ~v1 = du_HasWithdrawals'45'Tx_4550
du_HasWithdrawals'45'Tx_4550 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_4550
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3884 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_4552 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4446
d_HasDirectDeposits'45'TxBody_4552 ~v0 ~v1
  = du_HasDirectDeposits'45'TxBody_4552
du_HasDirectDeposits'45'TxBody_4552 :: T_HasDirectDeposits_4446
du_HasDirectDeposits'45'TxBody_4552
  = coe
      C_constructor_4456 (coe (\ v0 -> d_txDirectDeposits_3910 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_4554 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4446
d_HasDirectDeposits'45'Tx_4554 ~v0 ~v1
  = du_HasDirectDeposits'45'Tx_4554
du_HasDirectDeposits'45'Tx_4554 :: T_HasDirectDeposits_4446
du_HasDirectDeposits'45'Tx_4554
  = coe
      C_constructor_4456
      (coe
         (\ v0 -> d_txDirectDeposits_3910 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_4556 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4466
d_HasBalanceIntervals'45'TxBody_4556 ~v0 ~v1
  = du_HasBalanceIntervals'45'TxBody_4556
du_HasBalanceIntervals'45'TxBody_4556 :: T_HasBalanceIntervals_4466
du_HasBalanceIntervals'45'TxBody_4556
  = coe
      C_constructor_4476
      (coe (\ v0 -> d_txBalanceIntervals_3912 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_4558 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4466
d_HasBalanceIntervals'45'Tx_4558 ~v0 ~v1
  = du_HasBalanceIntervals'45'Tx_4558
du_HasBalanceIntervals'45'Tx_4558 :: T_HasBalanceIntervals_4466
du_HasBalanceIntervals'45'Tx_4558
  = coe
      C_constructor_4476
      (coe
         (\ v0 -> d_txBalanceIntervals_3912 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_4560 ::
  T_TransactionStructure_58 -> T_HasStartingBalanceIntervals_4486
d_HasStartingBalanceIntervals'45'TxBody_4560 ~v0
  = du_HasStartingBalanceIntervals'45'TxBody_4560
du_HasStartingBalanceIntervals'45'TxBody_4560 ::
  T_HasStartingBalanceIntervals_4486
du_HasStartingBalanceIntervals'45'TxBody_4560
  = coe
      C_constructor_4496
      (coe (\ v0 -> d_txStartingBalanceIntervals_3914 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_4562 ::
  T_TransactionStructure_58 -> T_HasStartingBalanceIntervals_4486
d_HasStartingBalanceIntervals'45'Tx_4562 ~v0
  = du_HasStartingBalanceIntervals'45'Tx_4562
du_HasStartingBalanceIntervals'45'Tx_4562 ::
  T_HasStartingBalanceIntervals_4486
du_HasStartingBalanceIntervals'45'Tx_4562
  = coe
      C_constructor_4496
      (coe
         (\ v0 ->
            d_txStartingBalanceIntervals_3914 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_4564 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4146
d_HasValidInterval'45'TxBody_4564 ~v0 ~v1
  = du_HasValidInterval'45'TxBody_4564
du_HasValidInterval'45'TxBody_4564 :: T_HasValidInterval_4146
du_HasValidInterval'45'TxBody_4564
  = coe C_constructor_4156 (coe (\ v0 -> d_txVldt_3886 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_4566 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4146
d_HasValidInterval'45'Tx_4566 ~v0 ~v1
  = du_HasValidInterval'45'Tx_4566
du_HasValidInterval'45'Tx_4566 :: T_HasValidInterval_4146
du_HasValidInterval'45'Tx_4566
  = coe
      C_constructor_4156
      (coe (\ v0 -> d_txVldt_3886 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_4568 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4166
d_HasSpendInputs'45'TxBody_4568 ~v0 ~v1
  = du_HasSpendInputs'45'TxBody_4568
du_HasSpendInputs'45'TxBody_4568 :: T_HasSpendInputs_4166
du_HasSpendInputs'45'TxBody_4568
  = coe C_constructor_4176 (coe (\ v0 -> d_txIns_3870 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_4570 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4166
d_HasSpendInputs'45'Tx_4570 ~v0 ~v1 = du_HasSpendInputs'45'Tx_4570
du_HasSpendInputs'45'Tx_4570 :: T_HasSpendInputs_4166
du_HasSpendInputs'45'Tx_4570
  = coe
      C_constructor_4176
      (coe (\ v0 -> d_txIns_3870 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_4572 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4186
d_HasReferenceInputs'45'TxBody_4572 ~v0 ~v1
  = du_HasReferenceInputs'45'TxBody_4572
du_HasReferenceInputs'45'TxBody_4572 :: T_HasReferenceInputs_4186
du_HasReferenceInputs'45'TxBody_4572
  = coe
      C_constructor_4196 (coe (\ v0 -> d_referenceInputs_3872 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_4574 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4186
d_HasReferenceInputs'45'Tx_4574 ~v0 ~v1
  = du_HasReferenceInputs'45'Tx_4574
du_HasReferenceInputs'45'Tx_4574 :: T_HasReferenceInputs_4186
du_HasReferenceInputs'45'Tx_4574
  = coe
      C_constructor_4196
      (coe (\ v0 -> d_referenceInputs_3872 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_4576 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4206
d_HasMintedValue'45'TxBody_4576 ~v0 ~v1
  = du_HasMintedValue'45'TxBody_4576
du_HasMintedValue'45'TxBody_4576 :: T_HasMintedValue_4206
du_HasMintedValue'45'TxBody_4576
  = coe C_constructor_4216 (coe (\ v0 -> d_mint_3900 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_4578 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4206
d_HasMintedValue'45'Tx_4578 ~v0 ~v1 = du_HasMintedValue'45'Tx_4578
du_HasMintedValue'45'Tx_4578 :: T_HasMintedValue_4206
du_HasMintedValue'45'Tx_4578
  = coe
      C_constructor_4216
      (coe (\ v0 -> d_mint_3900 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_4580 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4326
d_HasListOfGovVotes'45'TxBody_4580 ~v0 ~v1
  = du_HasListOfGovVotes'45'TxBody_4580
du_HasListOfGovVotes'45'TxBody_4580 :: T_HasListOfGovVotes_4326
du_HasListOfGovVotes'45'TxBody_4580
  = coe C_constructor_4336 (coe (\ v0 -> d_txGovVotes_3892 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_4582 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4326
d_HasListOfGovVotes'45'Tx_4582 ~v0 ~v1
  = du_HasListOfGovVotes'45'Tx_4582
du_HasListOfGovVotes'45'Tx_4582 :: T_HasListOfGovVotes_4326
du_HasListOfGovVotes'45'Tx_4582
  = coe
      C_constructor_4336
      (coe (\ v0 -> d_txGovVotes_3892 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_4584 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4306
d_HasListOfGovProposals'45'TxBody_4584 ~v0 ~v1
  = du_HasListOfGovProposals'45'TxBody_4584
du_HasListOfGovProposals'45'TxBody_4584 ::
  T_HasListOfGovProposals_4306
du_HasListOfGovProposals'45'TxBody_4584
  = coe
      C_constructor_4316 (coe (\ v0 -> d_txGovProposals_3894 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_4586 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4306
d_HasListOfGovProposals'45'Tx_4586 ~v0 ~v1
  = du_HasListOfGovProposals'45'Tx_4586
du_HasListOfGovProposals'45'Tx_4586 :: T_HasListOfGovProposals_4306
du_HasListOfGovProposals'45'Tx_4586
  = coe
      C_constructor_4316
      (coe (\ v0 -> d_txGovProposals_3894 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_4588 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_4588 ~v0 ~v1
  = du_HasMaybeNetworkId'45'TxBody_4588
du_HasMaybeNetworkId'45'TxBody_4588 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_4588
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3896 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_4590 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_4590 ~v0 ~v1
  = du_HasMaybeNetworkId'45'Tx_4590
du_HasMaybeNetworkId'45'Tx_4590 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_4590
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3896 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_4594 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4226
d_HasFees'63''45'TxBody_4594 ~v0 v1
  = du_HasFees'63''45'TxBody_4594 v1
du_HasFees'63''45'TxBody_4594 :: T_TxLevel_8 -> T_HasFees'63'_4226
du_HasFees'63''45'TxBody_4594 v0
  = coe
      C_constructor_4236
      (case coe v0 of
         C_TxLevelTop_10
           -> coe
                (\ v1 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe d_txFee_3882 (coe v1)))
         C_TxLevelSub_12
           -> coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_4600 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4226
d_HasFees'63''45'Tx_4600 ~v0 v1 = du_HasFees'63''45'Tx_4600 v1
du_HasFees'63''45'Tx_4600 :: T_TxLevel_8 -> T_HasFees'63'_4226
du_HasFees'63''45'Tx_4600 v0
  = coe
      C_constructor_4236
      (coe
         (\ v1 ->
            coe
              d_FeesOf'63'_4234 (coe du_HasFees'63''45'TxBody_4594 (coe v0))
              (d_txBody_3810 (coe v1))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_4602 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4086
d_HasTxId'45'TxBody_4602 ~v0 ~v1 = du_HasTxId'45'TxBody_4602
du_HasTxId'45'TxBody_4602 :: T_HasTxId_4086
du_HasTxId'45'TxBody_4602
  = coe C_constructor_4096 (coe (\ v0 -> d_txId_3878 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_4604 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4086
d_HasTxId'45'Tx_4604 ~v0 ~v1 = du_HasTxId'45'Tx_4604
du_HasTxId'45'Tx_4604 :: T_HasTxId_4086
du_HasTxId'45'Tx_4604
  = coe
      C_constructor_4096
      (coe (\ v0 -> d_txId_3878 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_4606 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'TxBody_4606 ~v0 ~v1
  = du_HasDonations'45'TxBody_4606
du_HasDonations'45'TxBody_4606 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
du_HasDonations'45'TxBody_4606
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_32
      (coe (\ v0 -> d_txDonation_3890 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_4608 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'Tx_4608 ~v0 ~v1 = du_HasDonations'45'Tx_4608
du_HasDonations'45'Tx_4608 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
du_HasDonations'45'Tx_4608
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_32
      (coe (\ v0 -> d_txDonation_3890 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_4610 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_4610 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2726 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_4612 ::
  T_TransactionStructure_58 -> T_HasData_4286
d_HasData'45'TxWitnesses_4612 ~v0 = du_HasData'45'TxWitnesses_4612
du_HasData'45'TxWitnesses_4612 :: T_HasData_4286
du_HasData'45'TxWitnesses_4612
  = coe C_constructor_4296 (coe (\ v0 -> d_txData_3932 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-Tx
d_HasData'45'Tx_4614 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasData_4286
d_HasData'45'Tx_4614 ~v0 ~v1 = du_HasData'45'Tx_4614
du_HasData'45'Tx_4614 :: T_HasData_4286
du_HasData'45'Tx_4614
  = coe
      C_constructor_4296
      (coe (\ v0 -> d_txData_3932 (coe d_txWitnesses_3812 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_4616 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4346
d_HasGuards'45'TxBody_4616 ~v0 ~v1 = du_HasGuards'45'TxBody_4616
du_HasGuards'45'TxBody_4616 :: T_HasGuards_4346
du_HasGuards'45'TxBody_4616
  = coe C_constructor_4356 (coe (\ v0 -> d_txGuards_3906 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_4618 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4346
d_HasGuards'45'Tx_4618 ~v0 ~v1 = du_HasGuards'45'Tx_4618
du_HasGuards'45'Tx_4618 :: T_HasGuards_4346
du_HasGuards'45'Tx_4618
  = coe
      C_constructor_4356
      (coe (\ v0 -> d_txGuards_3906 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_4620 ::
  T_TransactionStructure_58 -> T_HasScripts_4366
d_HasScripts'45'TxWitnesses_4620 ~v0
  = du_HasScripts'45'TxWitnesses_4620
du_HasScripts'45'TxWitnesses_4620 :: T_HasScripts_4366
du_HasScripts'45'TxWitnesses_4620
  = coe C_constructor_4376 (coe (\ v0 -> d_scripts_3930 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_4622 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasScripts_4366
d_HasScripts'45'Tx_4622 ~v0 ~v1 = du_HasScripts'45'Tx_4622
du_HasScripts'45'Tx_4622 :: T_HasScripts_4366
du_HasScripts'45'Tx_4622
  = coe
      C_constructor_4376
      (coe (\ v0 -> d_scripts_3930 (coe d_txWitnesses_3812 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_4624 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4386
d_HasTxOuts'45'TxBody_4624 ~v0 ~v1 = du_HasTxOuts'45'TxBody_4624
du_HasTxOuts'45'TxBody_4624 :: T_HasTxOuts_4386
du_HasTxOuts'45'TxBody_4624
  = coe C_constructor_4396 (coe (\ v0 -> d_txOuts_3876 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_4626 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4386
d_HasTxOuts'45'Tx_4626 ~v0 ~v1 = du_HasTxOuts'45'Tx_4626
du_HasTxOuts'45'Tx_4626 :: T_HasTxOuts_4386
du_HasTxOuts'45'Tx_4626
  = coe
      C_constructor_4396
      (coe (\ v0 -> d_txOuts_3876 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_4628 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4406
d_HasRequiredSingerHashes'45'TxBody_4628 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'TxBody_4628
du_HasRequiredSingerHashes'45'TxBody_4628 ::
  T_HasRequiredSingerHashes_4406
du_HasRequiredSingerHashes'45'TxBody_4628
  = coe C_constructor_4416 (coe du_requiredSignerHashes_3916)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_4630 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4406
d_HasRequiredSingerHashes'45'Tx_4630 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'Tx_4630
du_HasRequiredSingerHashes'45'Tx_4630 ::
  T_HasRequiredSingerHashes_4406
du_HasRequiredSingerHashes'45'Tx_4630
  = coe
      C_constructor_4416
      (coe
         (\ v0 ->
            coe du_requiredSignerHashes_3916 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_4632 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4426
d_HasCurrentTreasury'45'TxBody_4632 ~v0 ~v1
  = du_HasCurrentTreasury'45'TxBody_4632
du_HasCurrentTreasury'45'TxBody_4632 :: T_HasCurrentTreasury_4426
du_HasCurrentTreasury'45'TxBody_4632
  = coe
      C_constructor_4436 (coe (\ v0 -> d_currentTreasury_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_4634 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4426
d_HasCurrentTreasury'45'Tx_4634 ~v0 ~v1
  = du_HasCurrentTreasury'45'Tx_4634
du_HasCurrentTreasury'45'Tx_4634 :: T_HasCurrentTreasury_4426
du_HasCurrentTreasury'45'Tx_4634
  = coe
      C_constructor_4436
      (coe (\ v0 -> d_currentTreasury_3898 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToScript
d_txOutToScript_4636 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4636 ~v0 v1 = du_txOutToScript_4636 v1
du_txOutToScript_4636 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_4636 v0
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
d_txOutToDatum_4640 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4640 ~v0 v1 = du_txOutToDatum_4640 v1
du_txOutToDatum_4640 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDatum_4640 v0
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
d_txOutToValue_4644 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4644 ~v0 v1 = du_txOutToValue_4644 v1
du_txOutToValue_4644 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_4644 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4648 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4648 ~v0 v1 = du_valuesOfUTxO_4648 v1
du_valuesOfUTxO_4648 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_valuesOfUTxO_4648 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToValue_4644)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputs
d_allSpendInputs_4650 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4650 ~v0 v1 = du_allSpendInputs_4650 v1
du_allSpendInputs_4650 ::
  T_Tx_3790 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_4650 v0
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
              (coe d_SpendInputsOf_4174 (coe du_HasSpendInputs'45'Tx_4570) v2)))
      (coe d_SpendInputsOf_4174 (coe du_HasSpendInputs'45'Tx_4570) v0)
      (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4658 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4658 ~v0 v1 = du_allSpendInputsList_4658 v1
du_allSpendInputsList_4658 ::
  T_Tx_3790 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_4658 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_SpendInputsOf_4174 (coe du_HasSpendInputs'45'Tx_4570) v0)
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (d_SpendInputsOf_4174 (coe du_HasSpendInputs'45'Tx_4570))
         (d_txSubTransactions_3904 (coe d_txBody_3810 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4662 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4662 ~v0 v1 = du_allReferenceInputs_4662 v1
du_allReferenceInputs_4662 ::
  T_Tx_3790 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_4662 v0
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
                 d_ReferenceInputsOf_4194 (coe du_HasReferenceInputs'45'Tx_4574)
                 v2)))
      (coe
         d_ReferenceInputsOf_4194 (coe du_HasReferenceInputs'45'Tx_4574) v0)
      (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendTxOuts
d_spendTxOuts_4674 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4674 v0 ~v1 v2 v3 = du_spendTxOuts_4674 v0 v2 v3
du_spendTxOuts_4674 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_spendTxOuts_4674 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1414 (coe v0))
               (coe d_DecEq'45'Ix_1412 (coe v0))))
         (coe v2)
         (coe d_SpendInputsOf_4174 (coe du_HasSpendInputs'45'Tx_4570) v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4680 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4680 v0 ~v1 v2 v3
  = du_referencedTxOuts_4680 v0 v2 v3
du_referencedTxOuts_4680 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referencedTxOuts_4680 v0 v1 v2
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
               (coe d_DecEq'45'TxId_1414 (coe v0))
               (coe d_DecEq'45'Ix_1412 (coe v0))))
         (coe v2)
         (coe
            d_ReferenceInputsOf_4194 (coe du_HasReferenceInputs'45'Tx_4574)
            v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4686 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4686 ~v0 v1 = du_scriptsOfUTxO_4686 v1
du_scriptsOfUTxO_4686 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_4686 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4636)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4688 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4688 ~v0 ~v1 v2 = du_scriptsOfTx_4688 v2
du_scriptsOfTx_4688 ::
  T_Tx_3790 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_4688 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4636)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4394 (coe du_HasTxOuts'45'Tx_4626) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendScripts
d_spendScripts_4690 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4690 v0 ~v1 = du_spendScripts_4690 v0
du_spendScripts_4690 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_spendScripts_4690 v0
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
              (coe du_txOutToScript_4636)))
      (coe du_spendTxOuts_4674 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceScripts
d_referenceScripts_4692 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4692 v0 ~v1 v2 v3
  = du_referenceScripts_4692 v0 v2 v3
du_referenceScripts_4692 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_referenceScripts_4692 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4636)
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_referencedTxOuts_4680 (coe v0) (coe v1) (coe v2))
         (coe du_spendTxOuts_4674 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4698 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4698 v0 v1 v2
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
              (coe du_referenceScripts_4692 (coe v0) (coe v4) (coe v2))))
      (coe du_referenceScripts_4692 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessScripts
d_witnessScripts_4708 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4708 ~v0 ~v1 = du_witnessScripts_4708
du_witnessScripts_4708 ::
  T_Tx_3790 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_4708
  = coe d_ScriptsOf_4374 (coe du_HasScripts'45'Tx_4622)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4710 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4710 ~v0 v1 = du_allWitnessScripts_4710 v1
du_allWitnessScripts_4710 ::
  T_Tx_3790 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_4710 v0
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
              (coe v1) (coe du_witnessScripts_4708 v2)))
      (coe du_witnessScripts_4708 v0)
      (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxScripts
d_getTxScripts_4718 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4718 v0 ~v1 v2 v3 = du_getTxScripts_4718 v0 v2 v3
du_getTxScripts_4718 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_getTxScripts_4718 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_scriptsOfTx_4688 (coe v1))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_spendScripts_4690 v0 v1 v2)
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe du_referenceScripts_4692 (coe v0) (coe v1) (coe v2))
            (coe du_witnessScripts_4708 v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getAllScripts
d_getAllScripts_4724 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4724 v0 v1 v2
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
              (coe v3) (coe du_getTxScripts_4718 (coe v0) (coe v4) (coe v2))))
      (coe du_getTxScripts_4718 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.dataOfTx
d_dataOfTx_4734 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3790 -> [AgdaAny]
d_dataOfTx_4734 ~v0 ~v1 v2 = du_dataOfTx_4734 v2
du_dataOfTx_4734 :: T_Tx_3790 -> [AgdaAny]
du_dataOfTx_4734 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4640)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4394 (coe du_HasTxOuts'45'Tx_4626) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4736 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4736 ~v0 v1 = du_txOutDataOfUTxO_4736 v1
du_txOutDataOfUTxO_4736 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_txOutDataOfUTxO_4736 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4640)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendData
d_spendData_4738 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4738 v0 ~v1 = du_spendData_4738 v0
du_spendData_4738 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_spendData_4738 v0
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
              (coe du_txOutToDatum_4640)))
      (coe du_spendTxOuts_4674 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceData
d_referenceData_4740 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3790 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4740 v0 ~v1 = du_referenceData_4740 v0
du_referenceData_4740 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_referenceData_4740 v0
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
              (coe du_txOutToDatum_4640)))
      (coe du_referencedTxOuts_4680 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessData
d_witnessData_4742 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3790 -> [AgdaAny]
d_witnessData_4742 ~v0 ~v1 = du_witnessData_4742
du_witnessData_4742 :: T_Tx_3790 -> [AgdaAny]
du_witnessData_4742 = coe d_DataOf_4294 (coe du_HasData'45'Tx_4614)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxData
d_getTxData_4744 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3790 -> [AgdaAny]
d_getTxData_4744 ~v0 ~v1 v2 = du_getTxData_4744 v2
du_getTxData_4744 :: T_Tx_3790 -> [AgdaAny]
du_getTxData_4744 v0 = coe du_witnessData_4742 v0
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4748 ::
  T_TransactionStructure_58 -> T_Tx_3790 -> ()
d_NoOverlappingSpendInputs_4748 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allMintedCoin
d_allMintedCoin_4752 ::
  T_TransactionStructure_58 -> T_Tx_3790 -> Integer
d_allMintedCoin_4752 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                 (d_tokenAlgebra_2726 (coe v0))
                 (coe d_MintedValueOf_4214 (coe du_HasMintedValue'45'Tx_4578) v3))
              (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (d_tokenAlgebra_2726 (coe v0))
         (coe d_MintedValueOf_4214 (coe du_HasMintedValue'45'Tx_4578) v1))
      (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4760 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  AgdaAny ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4760 v0 ~v1 v2 v3 v4
  = du_lookupScriptHash_4760 v0 v2 v3 v4
du_lookupScriptHash_4760 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_lookupScriptHash_4760 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe d_cryptoStructure_1406 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
         (d_scriptStructure_2202 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
               (coe d_scriptStructure_2202 (coe v0))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe d_scriptStructure_2202 (coe v0)))))
      (coe v1) (coe du_getTxScripts_4718 (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allDCerts
d_allDCerts_4768 ::
  T_TransactionStructure_58 ->
  T_Tx_3790 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392]
d_allDCerts_4768 ~v0 v1 = du_allDCerts_4768 v1
du_allDCerts_4768 ::
  T_Tx_3790 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1392]
du_allDCerts_4768 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe d_DCertsOf_4254 (coe du_HasDCerts'45'Tx_4546))
         (coe d_txSubTransactions_3904 (coe d_txBody_3810 (coe v0))))
      (coe d_DCertsOf_4254 (coe du_HasDCerts'45'Tx_4546) v0)
