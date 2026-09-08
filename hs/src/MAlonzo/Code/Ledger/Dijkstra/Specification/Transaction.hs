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
import qualified MAlonzo.Code.Relation.Binary.Structures
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
  = C_constructor_4752 MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
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
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Network_100 = erased
-- Ledger.Dijkstra.Specification.Transaction._.THash
d_THash_170 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_THash_170 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptHash
d_ScriptHash_178 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptHash_178 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Ser
d_Ser_180 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Ser_180 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra
d_TokenAlgebra_220 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__230 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__230 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value
d_Value_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_248 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin
d_coin_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_260 = erased
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.inject
d_inject_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.policies
d_policies_266 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.TokenAlgebra.size
d_size_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure
d_ScriptStructure_628 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Datum
d_Datum_796 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Datum_796 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.Redeemer
d_Redeemer_852 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Redeemer_852 = erased
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.p1s
d_p1s_892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.ScriptStructure.ps
d_ps_894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.Datum
d_Datum_924 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Datum_924 = erased
-- Ledger.Dijkstra.Specification.Transaction._.Redeemer
d_Redeemer_980 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Redeemer_980 = erased
-- Ledger.Dijkstra.Specification.Transaction._.GovParams
d_GovParams_1062 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction._.GovParams.ppUpd
d_ppUpd_1158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Ix
d_Ix_1404 :: T_TransactionStructure_58 -> ()
d_Ix_1404 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxId
d_TxId_1406 :: T_TransactionStructure_58 -> ()
d_TxId_1406 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_1408 :: T_TransactionStructure_58 -> ()
d_AuxiliaryData_1408 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1410 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1410 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.globalConstants
d_globalConstants_1412 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1412 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.cryptoStructure
d_cryptoStructure_1414 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1414 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.epochStructure
d_epochStructure_1416 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1416 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1418 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1418 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1420 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1420 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v9
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
      (coe d_adHashingScheme_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1428 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1428 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe d_adHashingScheme_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1430 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1430 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe d_adHashingScheme_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1432 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe d_adHashingScheme_1410 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ActiveSlotCoeff
d_ActiveSlotCoeff_1436 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_1436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_1438 :: T_TransactionStructure_58 -> Integer
d_BlsKeyMaxAge'7580'_1438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1440 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1440 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1442 ::
  T_TransactionStructure_58 -> Integer
d_MaxLovelaceSupply'7580'_1442 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Network
d_Network_1444 :: T_TransactionStructure_58 -> ()
d_Network_1444 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1446 :: T_TransactionStructure_58 -> AgdaAny
d_NetworkId_1446 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1448 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1450 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1450 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1452 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Quorum
d_Quorum_1454 :: T_TransactionStructure_58 -> Integer
d_Quorum_1454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1456 ::
  T_TransactionStructure_58 -> Integer
d_RandomnessStabilisationWindow'7580'_1456 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Network
d_Show'45'Network_1458 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1460 :: T_TransactionStructure_58 -> Integer
d_SlotsPerEpoch'7580'_1460 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1462 ::
  T_TransactionStructure_58 -> Integer
d_StabilityWindow'7580'_1462 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1464 ::
  T_TransactionStructure_58 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1464 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1466 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1466 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
      (coe d_globalConstants_1412 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._<ᵏʰ_
d__'60''7503''688'__1470 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__1470 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_1472 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_1472 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BlsPoP
d_BlsPoP_1474 :: T_TransactionStructure_58 -> ()
d_BlsPoP_1474 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BlsSig
d_BlsSig_1476 :: T_TransactionStructure_58 -> ()
d_BlsSig_1476 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BlsVKey
d_BlsVKey_1478 :: T_TransactionStructure_58 -> ()
d_BlsVKey_1478 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_1480 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_1480 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1482 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1482 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSignedBy
d_Dec'45'isSignedBy_1484 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_1484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_1486 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_1486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isValidPoP
d_Dec'45'isValidPoP_1488 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_1488 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_1490 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_1490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BlsSig
d_DecEq'45'BlsSig_1492 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_1492 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_1494 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_1494 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-EBHash
d_DecEq'45'EBHash_1496 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_1496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_1498 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_1498 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1500 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1500 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1502 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1502 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1504 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1504 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1506 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1506 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_1508 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_1508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-VRF
d_DecEq'45'VRF_1510 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1510 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.EBHash
d_EBHash_1512 :: T_TransactionStructure_58 -> ()
d_EBHash_1512 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_1514 :: T_TransactionStructure_58 -> ()
d_THash_1514 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1516 :: T_TransactionStructure_58 -> ()
d_KeyPair_1516 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RBHeaderHash
d_RBHeaderHash_1518 :: T_TransactionStructure_58 -> ()
d_RBHeaderHash_1518 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SKey
d_SKey_1520 :: T_TransactionStructure_58 -> ()
d_SKey_1520 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1522 :: T_TransactionStructure_58 -> ()
d_ScriptHash_1522 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Ser
d_Ser_1524 :: T_TransactionStructure_58 -> ()
d_Ser_1524 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ScriptHash
d_Show'45'ScriptHash_1526 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1526 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_1528 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1528 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Sig
d_Sig_1530 :: T_TransactionStructure_58 -> ()
d_Sig_1530 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1532 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1532 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxRefHash
d_TxRefHash_1534 :: T_TransactionStructure_58 -> ()
d_TxRefHash_1534 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKey
d_VKey_1536 :: T_TransactionStructure_58 -> ()
d_VKey_1536 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VRF
d_VRF_1538 :: T_TransactionStructure_58 -> ()
d_VRF_1538 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.hashEBRefs
d_hashEBRefs_1540 ::
  T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_1540 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1542 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1542 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned
d_isSigned_1544 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1544 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1546 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1546 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSignedBy
d_isSignedBy_1548 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_1548 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isSignedByAggregate
d_isSignedByAggregate_1550 ::
  T_TransactionStructure_58 -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_1550 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isValidPoP
d_isValidPoP_1552 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d_isValidPoP_1552 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.khs
d_khs_1554 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1554 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.pkk
d_pkk_1556 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1556 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
      (coe d_cryptoStructure_1414 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sign
d_sign_1558 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1558 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1562 :: T_TransactionStructure_58 -> ()
d_MemoryEstimate_1562 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1564 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1570 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1572 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1574 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1580 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1584 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1588 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_1592 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1596 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1596 ~v0 = du_addValue_1596
du_addValue_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_1596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1600 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1600 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1604 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1608 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1612 v0
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
d_size_1614 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1616 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1616 ~v0 = du_sum'7515'_1616
du_sum'7515'_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_1618 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1622 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1624 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1626 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1628 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1628 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1630 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1630 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1634 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1636 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1638 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1638 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1640 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1640 ~v0 = du_isMagmaIsomorphism_1640
du_isMagmaIsomorphism_1640 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_1640 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1642 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1642 v2
du_isMagmaMonomorphism_1642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1642 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1644 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1644 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1646 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1646 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1648 v0
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
d_isRelIsomorphism_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1650 ~v0 ~v1 v2 = du_isRelIsomorphism_1650 v2
du_isRelIsomorphism_1650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1652 ~v0 ~v1 v2 = du_isRelMonomorphism_1652 v2
du_isRelMonomorphism_1652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1652 v0
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
d_surjective_1654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1654 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1656 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1658 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1662 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1664 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1664 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1666 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1666 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1668 ~v0 = du_isMagmaMonomorphism_1668
du_isMagmaMonomorphism_1668 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1668 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1670 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1672 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1674 ~v0 ~v1 v2 = du_isRelMonomorphism_1674 v2
du_isRelMonomorphism_1674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1674 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1676 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1678 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Addr
d_Addr_1682 :: T_TransactionStructure_58 -> ()
d_Addr_1682 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AttrSizeOf
d_AttrSizeOf_1686 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1688 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1692 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Credential
d_Credential_1696 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CredentialOf
d_CredentialOf_1698 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1700 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1700 ~v0 = du_Dec'45'isScript_1700
du_Dec'45'isScript_1700 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1700
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1702 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1702 ~v0 = du_Dec'45'isVKey_1702
du_Dec'45'isVKey_1702 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1702
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1704 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe d_globalConstants_1412 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe d_cryptoStructure_1414 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe d_cryptoStructure_1414 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1706 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1706 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe d_globalConstants_1412 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe d_cryptoStructure_1414 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe d_cryptoStructure_1414 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Credential
d_DecEq'45'Credential_1708 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe d_cryptoStructure_1414 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe d_cryptoStructure_1414 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_1710 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_1710 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe d_globalConstants_1412 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe d_cryptoStructure_1414 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe d_cryptoStructure_1414 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize
d_HasAttrSize_1712 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1716 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1716 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1716
du_HasAttrSize'45'BootstrapAddr_1716 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1716
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential
d_HasCredential_1718 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1722 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1722 ~v0
  = du_HasCredential'45'RewardAddress_1722
du_HasCredential'45'RewardAddress_1722 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1722
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId
d_HasMaybeNetworkId_1724 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId
d_HasNetworkId_1728 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1732 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1732 ~v0
  = du_HasNetworkId'45'BaseAddr_1732
du_HasNetworkId'45'BaseAddr_1732 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1732
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1734 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1734 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1734
du_HasNetworkId'45'BootstrapAddr_1734 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1734
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1736 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1736 ~v0
  = du_HasNetworkId'45'RewardAddress_1736
du_HasNetworkId'45'RewardAddress_1736 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1736
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress
d_HasRewardAddress_1738 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals
d_HasWithdrawals_1742 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr
d_IsBootstrapAddr_1746 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1748 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1748 ~v0 = du_IsBootstrapAddr'63'_1748
du_IsBootstrapAddr'63'_1748 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1748
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj
d_IsKeyHashObj_1752 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsKeyHashObj?
d_IsKeyHashObj'63'_1754 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1754 ~v0 = du_IsKeyHashObj'63'_1754
du_IsKeyHashObj'63'_1754 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1754
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1758 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1758 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NetworkIdOf
d_NetworkIdOf_1760 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1760 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress
d_RewardAddress_1762 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddressOf
d_RewardAddressOf_1766 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1766 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1770 :: T_TransactionStructure_58 -> ()
d_ScriptAddr_1770 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1772 :: T_TransactionStructure_58 -> ()
d_ScriptBaseAddr_1772 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1774 :: T_TransactionStructure_58 -> ()
d_ScriptBootstrapAddr_1774 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential
d_Show'45'Credential_1778 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1778 ~v0 = du_Show'45'Credential_1778
du_Show'45'Credential_1778 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1778 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1780 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1780 ~v0
  = du_Show'45'Credential'215'Coin_1780
du_Show'45'Credential'215'Coin_1780 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1780 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-RewardAddress
d_Show'45'RewardAddress_1782 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1782 ~v0 = du_Show'45'RewardAddress_1782
du_Show'45'RewardAddress_1782 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1782
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1784 :: T_TransactionStructure_58 -> ()
d_VKeyAddr_1784 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1786 :: T_TransactionStructure_58 -> ()
d_VKeyBaseAddr_1786 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1788 :: T_TransactionStructure_58 -> ()
d_VKeyBootstrapAddr_1788 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Withdrawals
d_Withdrawals_1792 :: T_TransactionStructure_58 -> ()
d_Withdrawals_1792 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.WithdrawalsOf
d_WithdrawalsOf_1794 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1794 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1796 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_1796 ~v0 = du_getScriptHash_1796
du_getScriptHash_1796 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_1796
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isBootstrapAddr
d_isBootstrapAddr_1798 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1798 ~v0 = du_isBootstrapAddr_1798
du_isBootstrapAddr_1798 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1798
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHash
d_isKeyHash_1800 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1800 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObj
d_isKeyHashObj_1802 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_1802 ~v0 = du_isKeyHashObj_1802
du_isKeyHashObj_1802 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_1802
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1804 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1804 ~v0 = du_isKeyHashObj'7495'_1804
du_isKeyHashObj'7495'_1804 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1804
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScript
d_isScript_1806 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1808 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1808 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptObj
d_isScriptObj_1810 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_1810 ~v0 = du_isScriptObj_1810
du_isScriptObj_1810 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_1810
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isScriptRewardAddress
d_isScriptRewardAddress_1812 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1812 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKey
d_isVKey_1814 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1816 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1816 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.netId
d_netId_1818 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1818 ~v0 = du_netId_1818
du_netId_1818 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1818
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.payCred
d_payCred_1820 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1820 ~v0 = du_payCred_1820
du_payCred_1820 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1820
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.stakeCred
d_stakeCred_1822 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1822 ~v0 = du_stakeCred_1822
du_stakeCred_1822 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1822
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.net
d_net_1826 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_1826 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1828 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1830 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1834 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1834 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1836 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_1836 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1838 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1838 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1848 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1848 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCredential.CredentialOf
d_CredentialOf_1852 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1852 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1856 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_1856 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1860 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_1860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1864 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1864 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1868 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1868 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.net
d_net_1880 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_1880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RewardAddress.stake
d_stake_1882 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1894 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._+ᵉ'_
d__'43''7497'''__1896 ::
  T_TransactionStructure_58 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__1896 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1898 ::
  T_TransactionStructure_58 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1898 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1900 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1902 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1902 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1904 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_1904 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Epoch
d_Epoch_1906 :: T_TransactionStructure_58 -> ()
d_Epoch_1906 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Number-Epoch
d_Number'45'Epoch_1908 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1908 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1910 ::
  T_TransactionStructure_58 -> AgdaAny
d_RandomnessStabilisationWindow_1910 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Epoch
d_Show'45'Epoch_1912 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slot
d_Slot_1914 :: T_TransactionStructure_58 -> ()
d_Slot_1914 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1916 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1916 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1918 :: T_TransactionStructure_58 -> AgdaAny
d_StabilityWindow_1918 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1920 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1920 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addSlot
d_addSlot_1922 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1922 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.e<sucᵉ
d_e'60'suc'7497'_1924 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_e'60'suc'7497'_1924 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.epoch
d_epoch_1926 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_epoch_1926 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1928 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_firstSlot_1928 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1930 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1930 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1932 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_suc'7497'_1932 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1934 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_ℕtoEpoch_1934 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≤-predᵉ
d_'8804''45'pred'7497'_1936 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1936 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe d_epochStructure_1416 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_1940 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_370 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_1940 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (let v2 = d_epochStructure_1416 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                    (coe d_globalConstants_1412 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_440
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-NativeScript
d_DecEq'45'NativeScript_1942 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_1942 v0
  = let v1 = d_cryptoStructure_1414 (coe v0) in
    coe
      (let v2 = d_epochStructure_1416 (coe v0) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                    (coe d_globalConstants_1412 (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_386
               (coe v1) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.EvalNativeScript
d_EvalNativeScript_1944 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.NativeScript
d_NativeScript_1946 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1948 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusLanguage
d_PlutusLanguage_1952 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1954 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1972 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  ()
d_P1Script_2038 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2040 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2054 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_CostModel_2056 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T
d_T_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_T_2058 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_THash_2060 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_2064 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Datum_2064 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2078 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2080 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_ExUnits_2084 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_LangDepView_2088 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Language_2090 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_PlutusScript_2092 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV1
d_PlutusV1_2094 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV1_2094 ~v0 = du_PlutusV1_2094
du_PlutusV1_2094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV1_2094
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV2
d_PlutusV2_2096 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV2_2096 ~v0 = du_PlutusV2_2096
du_PlutusV2_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV2_2096
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV3
d_PlutusV3_2098 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV3_2098 ~v0 = du_PlutusV3_2098
du_PlutusV3_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV3_2098
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.PlutusV4
d_PlutusV4_2100 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV4_2100 ~v0 = du_PlutusV4_2100
du_PlutusV4_2100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV4_2100
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_2102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Prices_2102 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_2104 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Redeemer_2104 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Language
d_Show'45'Language_2110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-Prices
d_Show'45'Prices_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.Show-THash
d_Show'45'THash_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2114 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2116 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.language
d_language_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny
d_language_2122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2124 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2130 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_2132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_CostModel_2132 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T
d_T_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_T_2134 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_2136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_THash_2136 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_2140 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Datum_2140 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2156 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2156 ~v0
  = du_DecEq'45'LanguageCostModels_2156
du_DecEq'45'LanguageCostModels_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2156
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2160 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2162 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_ExUnits_2166 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2172 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2172 ~v0 = du_Hashable'45'Script_2172
du_Hashable'45'Script_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2172
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_2174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_LangDepView_2174 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Language_2176 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2178 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_2182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_P1Script_2182 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_2184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_PlutusScript_2184 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV1
d_PlutusV1_2186 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV1_2186 ~v0 v1 = du_PlutusV1_2186 v1
du_PlutusV1_2186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV1_2186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV2
d_PlutusV2_2188 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV2_2188 ~v0 v1 = du_PlutusV2_2188 v1
du_PlutusV2_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV2_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV3
d_PlutusV3_2190 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV3_2190 ~v0 v1 = du_PlutusV3_2190 v1
du_PlutusV3_2190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV3_2190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.PlutusV4
d_PlutusV4_2192 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV4_2192 ~v0 v1 = du_PlutusV4_2192 v1
du_PlutusV4_2192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV4_2192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_2194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Prices_2194 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_2196 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Redeemer_2196 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_2198 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Script_2198 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Language
d_Show'45'Language_2204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2206 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2206 ~v0
  = du_Show'45'LanguageCostModels_2206
du_Show'45'LanguageCostModels_2206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2206
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-Prices
d_Show'45'Prices_2208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.Show-THash
d_Show'45'THash_2210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2210 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_2212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2212 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_2214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isNativeScript
d_isNativeScript_2220 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2220 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script
d_isP1Script_2222 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2222 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP1Script?
d_isP1Script'63'_2224 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2224 ~v0 = du_isP1Script'63'_2224
du_isP1Script'63'_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2224 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script
d_isP2Script_2226 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2226 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.isP2Script?
d_isP2Script'63'_2228 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2228 ~v0 = du_isP2Script'63'_2228
du_isP2Script'63'_2228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2228 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.language
d_language_2230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny
d_language_2230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.languageCostModels
d_languageCostModels_2232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_2236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_2238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP1Script
d_toP1Script_2240 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2240 ~v0 = du_toP1Script_2240
du_toP1Script_2240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.toP2Script
d_toP2Script_2242 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2242 ~v0 = du_toP2Script_2242
du_toP2Script_2242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_2244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2244 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_2246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2246 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_2254 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_scriptStructure_2254 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__2258 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2258 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CostModel
d_CostModel_2260 :: T_TransactionStructure_58 -> ()
d_CostModel_2260 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T
d_T_2262 :: T_TransactionStructure_58 -> ()
d_T_2262 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.THash
d_THash_2264 :: T_TransactionStructure_58 -> ()
d_THash_2264 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_2266 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Datum
d_Datum_2268 :: T_TransactionStructure_58 -> ()
d_Datum_2268 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_2270 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2272 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_2274 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_2276 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_2278 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2278 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_2280 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Language
d_DecEq'45'Language_2282 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2284 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_2286 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2286 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_2288 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2288 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_2254 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_2290 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2290 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_2254 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2292 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ExUnits
d_ExUnits_2294 :: T_TransactionStructure_58 -> ()
d_ExUnits_2294 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_2296 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2298 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_2300 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LangDepView
d_LangDepView_2302 :: T_TransactionStructure_58 -> ()
d_LangDepView_2302 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Language
d_Language_2304 :: T_TransactionStructure_58 -> ()
d_Language_2304 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels
d_LanguageCostModels_2306 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.P1Script
d_P1Script_2310 :: T_TransactionStructure_58 -> ()
d_P1Script_2310 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_2312 :: T_TransactionStructure_58 -> ()
d_PlutusScript_2312 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV1
d_PlutusV1_2314 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV1_2314 v0
  = let v1 = d_scriptStructure_2254 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV2
d_PlutusV2_2316 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV2_2316 v0
  = let v1 = d_scriptStructure_2254 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV3
d_PlutusV3_2318 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV3_2318 v0
  = let v1 = d_scriptStructure_2254 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PlutusV4
d_PlutusV4_2320 :: T_TransactionStructure_58 -> AgdaAny
d_PlutusV4_2320 v0
  = let v1 = d_scriptStructure_2254 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Prices
d_Prices_2322 :: T_TransactionStructure_58 -> ()
d_Prices_2322 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Redeemer
d_Redeemer_2324 :: T_TransactionStructure_58 -> ()
d_Redeemer_2324 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Script
d_Script_2326 :: T_TransactionStructure_58 -> ()
d_Script_2326 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-CostModel
d_Show'45'CostModel_2328 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-ExUnits
d_Show'45'ExUnits_2330 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Language
d_Show'45'Language_2332 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2334 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-Prices
d_Show'45'Prices_2336 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-THash
d_Show'45'THash_2338 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2338 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_2254 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_2340 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2340 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe d_scriptStructure_2254 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_2342 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe d_scriptStructure_2254 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.fromPlutusLanguage
d_fromPlutusLanguage_2344 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_2346 ::
  T_TransactionStructure_58 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isNativeScript
d_isNativeScript_2348 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2348 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script
d_isP1Script_2350 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2350 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP1Script?
d_isP1Script'63'_2352 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2352 ~v0 = du_isP1Script'63'_2352
du_isP1Script'63'_2352 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2352
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script
d_isP2Script_2354 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2354 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.isP2Script?
d_isP2Script'63'_2356 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2356 ~v0 = du_isP2Script'63'_2356
du_isP2Script'63'_2356 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2356
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.language
d_language_2358 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_language_2358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.languageCostModels
d_languageCostModels_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.p1s
d_p1s_2364 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_2364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ps
d_ps_2366 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_2366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP1Script
d_toP1Script_2368 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2368 ~v0 = du_toP1Script_2368
du_toP1Script_2368 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2368
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.toP2Script
d_toP2Script_2370 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2370 ~v0 = du_toP2Script_2370
du_toP2Script_2370 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2370
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validP1Script
d_validP1Script_2372 ::
  T_TransactionStructure_58 ->
  [AgdaAny] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2372 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_2374 ::
  T_TransactionStructure_58 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2374 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.≥ᵉ-Dec
d_'8805''7497''45'Dec_2376 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe d_scriptStructure_2254 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.LanguageCostModels.languageCostModels
d_languageCostModels_2380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountOf
d_AccountOf_2384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt
d_Acnt_2386 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2392 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2392 ~v0
  = du_DecEq'45'DrepThresholds_2392
du_DecEq'45'DrepThresholds_2392 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_614
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2394 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2394 ~v0 = du_DecEq'45'PParamGroup_2394
du_DecEq'45'PParamGroup_2394 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2394
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_620
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_2396 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_618
      (coe d_epochStructure_1416 (coe v0))
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2398 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2398 ~v0
  = du_DecEq'45'PoolThresholds_2398
du_DecEq'45'PoolThresholds_2398 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2398
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_616
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_2400 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams
d_GovParams_2406 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount
d_HasAccount_2412 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength
d_HasCCMaxTermLength_2416 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCast-Acnt
d_HasCast'45'Acnt_2420 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2420 ~v0 = du_HasCast'45'Acnt_2420
du_HasCast'45'Acnt_2420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2420
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams
d_HasPParams_2422 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasReserves-Acnt
d_HasReserves'45'Acnt_2426 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_2426 ~v0 = du_HasReserves'45'Acnt_2426
du_HasReserves'45'Acnt_2426 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_2426
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2428 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_2428 ~v0 = du_HasTreasury'45'Acnt_2428
du_HasTreasury'45'Acnt_2428 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_2428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_2432 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams
d_PParams_2434 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_2438 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsOf
d_PParamsOf_2442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_2444 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-DrepThresholds
d_Show'45'DrepThresholds_2450 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_2450 ~v0 = du_Show'45'DrepThresholds_2450
du_Show'45'DrepThresholds_2450 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_2450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_622
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PParams
d_Show'45'PParams_2452 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_2452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_626
      (coe d_epochStructure_1416 (coe v0))
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Show-PoolThresholds
d_Show'45'PoolThresholds_2454 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_2454 ~v0 = du_Show'45'PoolThresholds_2454
du_Show'45'PoolThresholds_2454 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_2454
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_624
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWF-elim
d_paramsWF'45'elim_2458 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_2458 ~v0 = du_paramsWF'45'elim_2458
du_paramsWF'45'elim_2458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_2458 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_2460 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_2460 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.positivePParams
d_positivePParams_2462 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_2462 ~v0 = du_positivePParams_2462
du_positivePParams_2462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_2462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_462
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_2468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_2468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_2470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_2470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_2474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_2476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_2478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_2480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_2482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_2484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_2486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_2488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_2490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_2492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  ()
d_UpdateT_2498 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_2502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_2502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppWF?
d_ppWF'63'_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_2506 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> ()
d_ppdWellFormed_2506 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_2508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasAccount.AccountOf
d_AccountOf_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.HasPParams.PParamsOf
d_PParamsOf_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.Emax
d_Emax_2536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_2536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a
d_a_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.a0
d_a0_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.b
d_b_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_2546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_2552 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_458
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.costmdlsAssoc
d_costmdlsAssoc_2554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdlsAssoc_2554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_2556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.keyDeposit
d_keyDeposit_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minPoolCost
d_minPoolCost_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.monetaryExpansion
d_monetaryExpansion_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.nopt
d_nopt_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.prices
d_prices_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.pv
d_pv_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.refScriptCostStride
d_refScriptCostStride_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParams.treasuryCut
d_treasuryCut_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_2612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_2612 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppWF?
d_ppWF'63'_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2618 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> ()
d_ppdWellFormed_2618 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._?↗_
d__'63''8599'__2624 ::
  T_TransactionStructure_58 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2624 ~v0 = du__'63''8599'__2624
du__'63''8599'__2624 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2624 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1272
      v1 v2
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2626 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d__'8746''737''7580''7504'__2626 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_730
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                  (coe d_scriptStructure_2254 (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2628 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
      (coe d_epochStructure_1416 (coe v0))
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2630 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2634 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
      (coe d_scriptStructure_2254 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2636 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2636 ~v0 = du_modifiedUpdateGroups_2636
du_modifiedUpdateGroups_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2636
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2638 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesEconomicGroup_2638 ~v0 = du_modifiesEconomicGroup_2638
du_modifiesEconomicGroup_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesEconomicGroup_2638
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_944
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2640 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesGovernanceGroup_2640 ~v0
  = du_modifiesGovernanceGroup_2640
du_modifiesGovernanceGroup_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesGovernanceGroup_2640
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1100
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2642 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesNetworkGroup_2642 ~v0 = du_modifiesNetworkGroup_2642
du_modifiesNetworkGroup_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesNetworkGroup_2642
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_866
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2644 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesSecurityGroup_2644 ~v0 = du_modifiesSecurityGroup_2644
du_modifiesSecurityGroup_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesSecurityGroup_2644
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1178
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2646 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesTechnicalGroup_2646 ~v0 = du_modifiesTechnicalGroup_2646
du_modifiesTechnicalGroup_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesTechnicalGroup_2646
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2648 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_paramsUpdateWellFormed_2648 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2650 v0
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
d_'8801''45'update_2652 ::
  T_TransactionStructure_58 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2652 ~v0 = du_'8801''45'update_2652
du_'8801''45'update_2652 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2652 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1286
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_Emax_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a
d_a_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.a0
d_a0_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.b
d_b_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_2668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_2670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdls_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_drepActivity_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_2676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_2680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_2682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_2684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxBlockExUnits_2686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_2688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_2690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_2692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_maxTxExUnits_2698 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_2700 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_2702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2704 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_2706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_2712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.prices
d_prices_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe AgdaAny
d_prices_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.pv
d_pv_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.PoolThresholds.Q5
d_Q5_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govParams
d_govParams_2740 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_govParams_2740 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_2742 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_2742 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txidBytes
d_txidBytes_2744 :: T_TransactionStructure_58 -> AgdaAny -> AgdaAny
d_txidBytes_2744 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_2746 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_2746 v0
  = case coe v0 of
      C_constructor_4752 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_2750 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe d_govParams_2740 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UpdateT
d_UpdateT_2752 :: T_TransactionStructure_58 -> ()
d_UpdateT_2752 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_2754 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_2740 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppUpd
d_ppUpd_2756 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe d_govParams_2740 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppWF?
d_ppWF'63'_2758 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_2740 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_2760 :: T_TransactionStructure_58 -> AgdaAny -> ()
d_ppdWellFormed_2760 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.updateGroups
d_updateGroups_2762 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe d_govParams_2740 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._∙_
d__'8729'__2766 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2766 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2742 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≈_
d__'8776'__2768 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2768 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__2770 ::
  T_TransactionStructure_58 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2770 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_2772 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_2774 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2776 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2780 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2784 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value
d_Value_2788 :: T_TransactionStructure_58 -> ()
d_Value_2788 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2790 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.addValue
d_addValue_2792 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin
d_coin_2794 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_coin_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_2796 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2796 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2798 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.coin∘inject≗id
d_coin'8728'inject'8791'id_2800 ::
  T_TransactionStructure_58 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2800 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.inject
d_inject_2802 :: T_TransactionStructure_58 -> Integer -> AgdaAny
d_inject_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.monoid
d_monoid_2804 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2804 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2742 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.policies
d_policies_2806 ::
  T_TransactionStructure_58 -> AgdaAny -> [AgdaAny]
d_policies_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_2808 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2808 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe d_tokenAlgebra_2742 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.size
d_size_2810 :: T_TransactionStructure_58 -> AgdaAny -> Integer
d_size_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_2812 ::
  T_TransactionStructure_58 -> [AgdaAny] -> AgdaAny
d_sum'7515'_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe d_tokenAlgebra_2742 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ε
d_ε_2814 :: T_TransactionStructure_58 -> AgdaAny
d_ε_2814 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe d_tokenAlgebra_2742 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_2818 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2818 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2820 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2820 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2822 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2824 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2824 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_2826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2826 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_2830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2830 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_2832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2832 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2836 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2836 ~v0 = du_isMagmaIsomorphism_2836
du_isMagmaIsomorphism_2836 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2836 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2838 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2838 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2838 v2
du_isMagmaMonomorphism_2838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2838 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2840 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2842 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2844 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2844 v0
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
d_isRelIsomorphism_2846 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2846 ~v0 ~v1 v2 = du_isRelIsomorphism_2846 v2
du_isRelIsomorphism_2846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2846 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2848 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2848 ~v0 ~v1 v2 = du_isRelMonomorphism_2848 v2
du_isRelMonomorphism_2848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2848 v0
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
d_surjective_2850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2852 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_2854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2854 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_2858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2858 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_2860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2860 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2862 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2864 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2864 ~v0 = du_isMagmaMonomorphism_2864
du_isMagmaMonomorphism_2864 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2864 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2866 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2868 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2870 ::
  T_TransactionStructure_58 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2870 ~v0 ~v1 v2 = du_isRelMonomorphism_2870 v2
du_isRelMonomorphism_2870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2870 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2872 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2872 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_2874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2874 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.govStructure
d_govStructure_2876 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.C_constructor_1588
      (d_DecEq'45'TxId_1420 (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe d_adHashingScheme_1410 (coe v0)))
      (d_cryptoStructure_1414 (coe v0)) (d_epochStructure_1416 (coe v0))
      (d_globalConstants_1412 (coe v0)) (d_scriptStructure_2254 (coe v0))
      (d_govParams_2740 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2880 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2882 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2884 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.==-Set
d_'61''61''45'Set_2886 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2886 ~v0 = du_'61''61''45'Set_2886
du_'61''61''45'Set_2886 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2886 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor
d_Anchor_2888 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.AnchorOf
d_AnchorOf_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DReps
d_DReps_2900 :: T_TransactionStructure_58 -> ()
d_DReps_2900 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DRepsOf
d_DRepsOf_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2904 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2906 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2906 ~v0 = du_DecEq'45'GovActionType_2906
du_DecEq'45'GovActionType_2906 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2906
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2908 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2908 ~v0 = du_DecEq'45'GovRole_2908
du_DecEq'45'GovRole_2908 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2908
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2910 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2912 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2914 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2916 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2916 ~v0 = du_DecEq'45'Vote_2916
du_DecEq'45'Vote_2916 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2916
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.DepositOf
d_DepositOf_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction
d_GovAction_2920 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionData
d_GovActionData_2924 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_2924 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionID
d_GovActionID_2926 :: T_TransactionStructure_58 -> ()
d_GovActionID_2926 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionOf
d_GovActionOf_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState
d_GovActionState_2930 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionType
d_GovActionType_2934 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal
d_GovProposal_2938 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRole
d_GovRole_2942 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2944 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_2944 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote
d_GovVote_2946 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter
d_GovVoter_2950 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoterOf
d_GovVoterOf_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_2954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes
d_GovVotes_2956 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotesOf
d_GovVotesOf_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor
d_HasAnchor_2962 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2966 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_2966 ~v0
  = du_HasAnchor'45'GovProposal_2966
du_HasAnchor'45'GovProposal_2966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
du_HasAnchor'45'GovProposal_2966
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2968 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2968 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2968
du_HasCast'45'GovAction'45'Sigma_2968 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2968
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2970 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2970 ~v0 = du_HasCast'45'GovVote_2970
du_HasCast'45'GovVote_2970 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2970
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2972 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2972 ~v0
  = du_HasCast'45'HashProtected_2972
du_HasCast'45'HashProtected_2972 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2974 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2974 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2974
du_HasCast'45'HashProtected'45'MaybeScriptHash_2974 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2974
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps
d_HasDReps_2976 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit
d_HasDeposit_2980 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2984 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_2984 ~v0
  = du_HasDeposit'45'GovProposal_2984
du_HasDeposit'45'GovProposal_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
du_HasDeposit'45'GovProposal_2984
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction
d_HasGovAction_2986 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2990 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_2990 ~v0
  = du_HasGovAction'45'GovActionState_2990
du_HasGovAction'45'GovActionState_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovActionState_2990
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2992 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_2992 ~v0
  = du_HasGovAction'45'GovProposal_2992
du_HasGovAction'45'GovProposal_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovProposal_2992
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType
d_HasGovActionType_2994 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2998 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_2998 ~v0
  = du_HasGovActionType'45'GovAction_2998
du_HasGovActionType'45'GovAction_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovAction_2998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3000 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_3000 ~v0
  = du_HasGovActionType'45'GovActionState_3000
du_HasGovActionType'45'GovActionState_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovActionState_3000
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3002 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_3002 ~v0
  = du_HasGovActionType'45'GovProposal_3002
du_HasGovActionType'45'GovProposal_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovProposal_3002
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter
d_HasGovVoter_3004 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3008 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_3008 ~v0 = du_HasGovVoter'45'GovVote_3008
du_HasGovVoter'45'GovVote_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
du_HasGovVoter'45'GovVote_3008
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes
d_HasGovVotes_3010 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_3014 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_3014 ~v0
  = du_HasGovVotes'45'GovActionState_3014
du_HasGovVotes'45'GovActionState_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
du_HasGovVotes'45'GovActionState_3014
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy
d_HasPolicy_3016 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3020 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_3020 ~v0
  = du_HasPolicy'45'GovProposal_3020
du_HasPolicy'45'GovProposal_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
du_HasPolicy'45'GovProposal_3020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_3022 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_3022 ~v0
  = du_HasRewardAddress'45'GovActionState_3022
du_HasRewardAddress'45'GovActionState_3022 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_3022
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_3024 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_3024 ~v0
  = du_HasRewardAddress'45'GovProposal_3024
du_HasRewardAddress'45'GovProposal_3024 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_3024
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote
d_HasVote_3026 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_3030 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_3030 ~v0 = du_HasVote'45'GovVote_3030
du_HasVote'45'GovVote_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
du_HasVote'45'GovVote_3030
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_3032 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HashProtected
d_HashProtected_3036 :: T_TransactionStructure_58 -> () -> ()
d_HashProtected_3036 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.NeedsHash
d_NeedsHash_3040 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_3040 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Policy
d_Policy_3046 :: T_TransactionStructure_58 -> ()
d_Policy_3046 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.PolicyOf
d_PolicyOf_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-GovRole
d_Show'45'GovRole_3052 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3052 ~v0 = du_Show'45'GovRole_3052
du_Show'45'GovRole_3052 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3052
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_3054 ::
  T_TransactionStructure_58 -> MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
      (coe d_govStructure_2876 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VDeleg
d_VDeleg_3062 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Vote
d_Vote_3064 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegs
d_VoteDelegs_3066 :: T_TransactionStructure_58 -> ()
d_VoteDelegs_3066 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.VoteOf
d_VoteOf_3070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_3070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeDRepsOf
d_activeDRepsOf_3074 ::
  T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3074 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
      (coe d_govStructure_2876 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.activeInEpoch
d_activeInEpoch_3076 ::
  T_TransactionStructure_58 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3076 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaData
d_gaData_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_3078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.gaType
d_gaType_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_3080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.govVoterCredential
d_govVoterCredential_3082 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3082 ~v0 = du_govVoterCredential_3082
du_govVoterCredential_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3082
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_3084 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3084 ~v0 = du_isGovVoterDRep_3084
du_isGovVoterDRep_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3084
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.proposedCC
d_proposedCC_3088 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3088 ~v0 = du_proposedCC_3088
du_proposedCC_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3088
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.hash
d_hash_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  AgdaAny
d_hash_3104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_972
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.Anchor.url
d_url_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_970
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaData
d_gaData_3110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_3110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovAction.gaType
d_gaType_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.action
d_action_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_3116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.deposit
d_deposit_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  Integer
d_deposit_3118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1082
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.expiresIn
d_expiresIn_3120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  AgdaAny
d_expiresIn_3120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1076
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.prevAction
d_prevAction_3122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  AgdaAny
d_prevAction_3122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.returnAddr
d_returnAddr_3124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1074
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovActionState.votes
d_votes_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_votes_3126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1072
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.action
d_action_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1044
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.anchor
d_anchor_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_3148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1054
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.deposit
d_deposit_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Integer
d_deposit_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1050
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.policy
d_policy_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Maybe AgdaAny
d_policy_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1048
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.prevAction
d_prevAction_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  AgdaAny
d_prevAction_3154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1046
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovProposal.returnAddr
d_returnAddr_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1052
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.anchor
d_anchor_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_992
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.gid
d_gid_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_986
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.vote
d_vote_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_vote_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_990
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVote.voter
d_voter_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_voter_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_988
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvCredential
d_gvCredential_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  AgdaAny
d_gvCredential_3178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_960
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVoter.gvRole
d_gvRole_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902
d_gvRole_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_958
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvCC
d_gvCC_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1004
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvDRep
d_gvDRep_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1006
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.GovVotes.gvSPO
d_gvSPO_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1008
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_3204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_3208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_3216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_3216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVote.VoteOf
d_VoteOf_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCert
d_DCert_3280 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.AccountBalanceIntervals
d_AccountBalanceIntervals_3716 :: T_TransactionStructure_58 -> ()
d_AccountBalanceIntervals_3716 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceInterval
d_BalanceInterval_3718 a0 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_3720 ::
  T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_3720 ~v0
  = du_Dec'45'InBalanceInterval_3720
du_Dec'45'InBalanceInterval_3720 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_3720
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_936
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_3722 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_3722 ~v0
  = du_DecEq'45'BalanceInterval_3722
du_DecEq'45'BalanceInterval_3722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_3722
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1060
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDeposits
d_DirectDeposits_3724 :: T_TransactionStructure_58 -> ()
d_DirectDeposits_3724 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.InBalanceInterval
d_InBalanceInterval_3728 a0 a1 a2 = ()
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxIn
d_TxIn_3764 :: T_TransactionStructure_58 -> ()
d_TxIn_3764 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxOut
d_TxOut_3766 :: T_TransactionStructure_58 -> ()
d_TxOut_3766 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.UTxO
d_UTxO_3768 :: T_TransactionStructure_58 -> ()
d_UTxO_3768 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.RedeemerPtr
d_RedeemerPtr_3770 :: T_TransactionStructure_58 -> ()
d_RedeemerPtr_3770 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3772 :: T_TransactionStructure_58 -> ()
d_ProposedPPUpdates_3772 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Update
d_Update_3774 :: T_TransactionStructure_58 -> ()
d_Update_3774 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO
d_HasUTxO_3780 a0 a1 a2 = ()
newtype T_HasUTxO_3780
  = C_constructor_3790 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3788 ::
  T_HasUTxO_3780 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3788 v0
  = case coe v0 of
      C_constructor_3790 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.UTxOOf
d_UTxOOf_3794 ::
  T_HasUTxO_3780 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3794 v0 = coe d_UTxOOf_3788 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx
d_Tx_3798 a0 a1 = ()
data T_Tx_3798
  = C_constructor_3828 T_TxBody_3802 T_TxWitnesses_3804 Integer
                       AgdaAny (Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody
d_TxBody_3802 a0 a1 = ()
data T_TxBody_3802
  = C_constructor_3922 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] AgdaAny
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
                       AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (Maybe AgdaAny) Integer
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
                       (Maybe AgdaAny) (Maybe Integer) AgdaAny (Maybe AgdaAny) AgdaAny
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_3804 a0 = ()
data T_TxWitnesses_3804
  = C_constructor_3942 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] [AgdaAny]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txBody
d_txBody_3818 :: T_Tx_3798 -> T_TxBody_3802
d_txBody_3818 v0
  = case coe v0 of
      C_constructor_3828 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txWitnesses
d_txWitnesses_3820 :: T_Tx_3798 -> T_TxWitnesses_3804
d_txWitnesses_3820 v0
  = case coe v0 of
      C_constructor_3828 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txSize
d_txSize_3822 :: T_Tx_3798 -> Integer
d_txSize_3822 v0
  = case coe v0 of
      C_constructor_3828 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.isValid
d_isValid_3824 :: T_Tx_3798 -> AgdaAny
d_isValid_3824 v0
  = case coe v0 of
      C_constructor_3828 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.Tx.txAuxData
d_txAuxData_3826 :: T_Tx_3798 -> Maybe AgdaAny
d_txAuxData_3826 v0
  = case coe v0 of
      C_constructor_3828 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txIns
d_txIns_3876 ::
  T_TxBody_3802 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3876 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.referenceInputs
d_referenceInputs_3878 ::
  T_TxBody_3802 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3878 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_3880 :: T_TxBody_3802 -> AgdaAny
d_collateralInputs_3880 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txOuts
d_txOuts_3882 ::
  T_TxBody_3802 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3882 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txId
d_txId_3884 :: T_TxBody_3802 -> AgdaAny
d_txId_3884 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txCerts
d_txCerts_3886 ::
  T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_txCerts_3886 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txFee
d_txFee_3888 :: T_TxBody_3802 -> AgdaAny
d_txFee_3888 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_3890 ::
  T_TxBody_3802 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3890 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txVldt
d_txVldt_3892 ::
  T_TxBody_3802 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3892 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_3894 :: T_TxBody_3802 -> Maybe AgdaAny
d_txADhash_3894 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDonation
d_txDonation_3896 :: T_TxBody_3802 -> Integer
d_txDonation_3896 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_3898 ::
  T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_txGovVotes_3898 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_3900 ::
  T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_txGovProposals_3900 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_3902 :: T_TxBody_3802 -> Maybe AgdaAny
d_txNetworkId_3902 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_3904 :: T_TxBody_3802 -> Maybe Integer
d_currentTreasury_3904 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.mint
d_mint_3906 :: T_TxBody_3802 -> AgdaAny
d_mint_3906 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3908 :: T_TxBody_3802 -> Maybe AgdaAny
d_scriptIntegrityHash_3908 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txSubTransactions
d_txSubTransactions_3910 :: T_TxBody_3802 -> AgdaAny
d_txSubTransactions_3910 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txGuards
d_txGuards_3912 ::
  T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3912 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3914 ::
  T_TxBody_3802 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3914 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txDirectDeposits
d_txDirectDeposits_3916 ::
  T_TxBody_3802 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3916 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.txBalanceIntervals
d_txBalanceIntervals_3918 ::
  T_TxBody_3802 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3918 v0
  = case coe v0 of
      C_constructor_3922 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxBody.requiredSignerHashes
d_requiredSignerHashes_3920 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_TxBody_3802 -> [AgdaAny]
d_requiredSignerHashes_3920 ~v0 ~v1 v2
  = du_requiredSignerHashes_3920 v2
du_requiredSignerHashes_3920 :: T_TxBody_3802 -> [AgdaAny]
du_requiredSignerHashes_3920 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46)
      (d_txGuards_3912 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.vKeySigs
d_vKeySigs_3932 ::
  T_TxWitnesses_3804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3932 v0
  = case coe v0 of
      C_constructor_3942 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_3934 ::
  T_TxWitnesses_3804 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3934 v0
  = case coe v0 of
      C_constructor_3942 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txData
d_txData_3936 :: T_TxWitnesses_3804 -> [AgdaAny]
d_txData_3936 v0
  = case coe v0 of
      C_constructor_3942 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.txRedeemers
d_txRedeemers_3938 ::
  T_TxWitnesses_3804 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3938 v0
  = case coe v0 of
      C_constructor_3942 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_3940 ::
  T_TransactionStructure_58 -> T_TxWitnesses_3804 -> [AgdaAny]
d_scriptsP1_3940 ~v0 v1 = du_scriptsP1_3940 v1
du_scriptsP1_3940 :: T_TxWitnesses_3804 -> [AgdaAny]
du_scriptsP1_3940 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_3934 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.TopLevelTx
d_TopLevelTx_3944 :: T_TransactionStructure_58 -> ()
d_TopLevelTx_3944 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.SubLevelTx
d_SubLevelTx_3946 :: T_TransactionStructure_58 -> ()
d_SubLevelTx_3946 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.AnyLevelTx
d_AnyLevelTx_3948 :: T_TransactionStructure_58 -> ()
d_AnyLevelTx_3948 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody
d_HasTxBody_3956 a0 a1 a2 a3 = ()
newtype T_HasTxBody_3956
  = C_constructor_3968 (AgdaAny -> T_TxBody_3802)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3966 :: T_HasTxBody_3956 -> AgdaAny -> T_TxBody_3802
d_TxBodyOf_3966 v0
  = case coe v0 of
      C_constructor_3968 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxBodyOf
d_TxBodyOf_3972 :: T_HasTxBody_3956 -> AgdaAny -> T_TxBody_3802
d_TxBodyOf_3972 v0 = coe d_TxBodyOf_3966 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses
d_HasTxWitnesses_3978 a0 a1 a2 = ()
newtype T_HasTxWitnesses_3978
  = C_constructor_3988 (AgdaAny -> T_TxWitnesses_3804)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_3986 ::
  T_HasTxWitnesses_3978 -> AgdaAny -> T_TxWitnesses_3804
d_TxWitnessesOf_3986 v0
  = case coe v0 of
      C_constructor_3988 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxWitnessesOf
d_TxWitnessesOf_3992 ::
  T_HasTxWitnesses_3978 -> AgdaAny -> T_TxWitnesses_3804
d_TxWitnessesOf_3992 v0 = coe d_TxWitnessesOf_3986 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers
d_HasRedeemers_3998 a0 a1 a2 = ()
newtype T_HasRedeemers_3998
  = C_constructor_4008 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers.RedeemersOf
d_RedeemersOf_4006 ::
  T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4006 v0
  = case coe v0 of
      C_constructor_4008 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RedeemersOf
d_RedeemersOf_4012 ::
  T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_4012 v0 = coe d_RedeemersOf_4006 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs
d_HasCollateralInputs_4020 a0 a1 a2 a3 = ()
newtype T_HasCollateralInputs_4020
  = C_constructor_4032 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_4030 ::
  T_HasCollateralInputs_4020 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4030 v0
  = case coe v0 of
      C_constructor_4032 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CollateralInputsOf
d_CollateralInputsOf_4036 ::
  T_HasCollateralInputs_4020 -> AgdaAny -> AgdaAny
d_CollateralInputsOf_4036 v0
  = coe d_CollateralInputsOf_4030 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees
d_HasTxFees_4044 a0 a1 a2 a3 = ()
newtype T_HasTxFees_4044 = C_constructor_4056 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees.TxFeesOf
d_TxFeesOf_4054 :: T_HasTxFees_4044 -> AgdaAny -> AgdaAny
d_TxFeesOf_4054 v0
  = case coe v0 of
      C_constructor_4056 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxFeesOf
d_TxFeesOf_4060 :: T_HasTxFees_4044 -> AgdaAny -> AgdaAny
d_TxFeesOf_4060 v0 = coe d_TxFeesOf_4054 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions
d_HasSubTransactions_4068 a0 a1 a2 a3 = ()
newtype T_HasSubTransactions_4068
  = C_constructor_4080 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_4078 ::
  T_HasSubTransactions_4068 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4078 v0
  = case coe v0 of
      C_constructor_4080 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SubTransactionsOf
d_SubTransactionsOf_4084 ::
  T_HasSubTransactions_4068 -> AgdaAny -> AgdaAny
d_SubTransactionsOf_4084 v0 = coe d_SubTransactionsOf_4078 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId
d_HasTxId_4090 a0 a1 a2 = ()
newtype T_HasTxId_4090 = C_constructor_4100 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_4098 :: T_HasTxId_4090 -> AgdaAny -> AgdaAny
d_TxIdOf_4098 v0
  = case coe v0 of
      C_constructor_4100 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxIdOf
d_TxIdOf_4104 :: T_HasTxId_4090 -> AgdaAny -> AgdaAny
d_TxIdOf_4104 v0 = coe d_TxIdOf_4098 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize
d_HasSize_4110 a0 a1 a2 = ()
newtype T_HasSize_4110 = C_constructor_4120 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize.SizeOf
d_SizeOf_4118 :: T_HasSize_4110 -> AgdaAny -> Integer
d_SizeOf_4118 v0
  = case coe v0 of
      C_constructor_4120 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SizeOf
d_SizeOf_4124 :: T_HasSize_4110 -> AgdaAny -> Integer
d_SizeOf_4124 v0 = coe d_SizeOf_4118 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards
d_HasTopLevelGuards_4130 a0 a1 a2 = ()
newtype T_HasTopLevelGuards_4130
  = C_constructor_4140 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_4138 ::
  T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4138 v0
  = case coe v0 of
      C_constructor_4140 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TopLevelGuardsOf
d_TopLevelGuardsOf_4144 ::
  T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_4144 v0 = coe d_TopLevelGuardsOf_4138 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval
d_HasValidInterval_4150 a0 a1 a2 = ()
newtype T_HasValidInterval_4150
  = C_constructor_4160 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_4158 ::
  T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4158 v0
  = case coe v0 of
      C_constructor_4160 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ValidIntervalOf
d_ValidIntervalOf_4164 ::
  T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_4164 v0 = coe d_ValidIntervalOf_4158 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs
d_HasSpendInputs_4170 a0 a1 a2 = ()
newtype T_HasSpendInputs_4170
  = C_constructor_4180 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_4178 ::
  T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4178 v0
  = case coe v0 of
      C_constructor_4180 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.SpendInputsOf
d_SpendInputsOf_4184 ::
  T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_4184 v0 = coe d_SpendInputsOf_4178 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs
d_HasReferenceInputs_4190 a0 a1 a2 = ()
newtype T_HasReferenceInputs_4190
  = C_constructor_4200 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_4198 ::
  T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4198 v0
  = case coe v0 of
      C_constructor_4200 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ReferenceInputsOf
d_ReferenceInputsOf_4204 ::
  T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_4204 v0 = coe d_ReferenceInputsOf_4198 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue
d_HasMintedValue_4210 a0 a1 a2 = ()
newtype T_HasMintedValue_4210
  = C_constructor_4220 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue.MintedValueOf
d_MintedValueOf_4218 :: T_HasMintedValue_4210 -> AgdaAny -> AgdaAny
d_MintedValueOf_4218 v0
  = case coe v0 of
      C_constructor_4220 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.MintedValueOf
d_MintedValueOf_4224 :: T_HasMintedValue_4210 -> AgdaAny -> AgdaAny
d_MintedValueOf_4224 v0 = coe d_MintedValueOf_4218 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?
d_HasFees'63'_4230 a0 a1 a2 = ()
newtype T_HasFees'63'_4230
  = C_constructor_4240 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?.FeesOf?
d_FeesOf'63'_4238 :: T_HasFees'63'_4230 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4238 v0
  = case coe v0 of
      C_constructor_4240 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.FeesOf?
d_FeesOf'63'_4244 :: T_HasFees'63'_4230 -> AgdaAny -> Maybe Integer
d_FeesOf'63'_4244 v0 = coe d_FeesOf'63'_4238 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts
d_HasDCerts_4250 a0 a1 a2 = ()
newtype T_HasDCerts_4250
  = C_constructor_4260 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_4258 ::
  T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_4258 v0
  = case coe v0 of
      C_constructor_4260 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DCertsOf
d_DCertsOf_4264 ::
  T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_4264 v0 = coe d_DCertsOf_4258 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals
d_HasGovProposals_4270 a0 a1 a2 = ()
newtype T_HasGovProposals_4270
  = C_constructor_4280 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_4278 ::
  T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_4278 v0
  = case coe v0 of
      C_constructor_4280 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GovProposalsOf
d_GovProposalsOf_4284 ::
  T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_4284 v0 = coe d_GovProposalsOf_4278 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData
d_HasData_4290 a0 a1 a2 = ()
newtype T_HasData_4290 = C_constructor_4300 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData.DataOf
d_DataOf_4298 :: T_HasData_4290 -> AgdaAny -> [AgdaAny]
d_DataOf_4298 v0
  = case coe v0 of
      C_constructor_4300 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DataOf
d_DataOf_4304 :: T_HasData_4290 -> AgdaAny -> [AgdaAny]
d_DataOf_4304 v0 = coe d_DataOf_4298 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals
d_HasListOfGovProposals_4310 a0 a1 a2 = ()
newtype T_HasListOfGovProposals_4310
  = C_constructor_4320 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4318 ::
  T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_4318 v0
  = case coe v0 of
      C_constructor_4320 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_4324 ::
  T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_4324 v0
  = coe d_ListOfGovProposalsOf_4318 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes
d_HasListOfGovVotes_4330 a0 a1 a2 = ()
newtype T_HasListOfGovVotes_4330
  = C_constructor_4340 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_4338 ::
  T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_4338 v0
  = case coe v0 of
      C_constructor_4340 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ListOfGovVotesOf
d_ListOfGovVotesOf_4344 ::
  T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_4344 v0 = coe d_ListOfGovVotesOf_4338 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards
d_HasGuards_4350 a0 a1 a2 = ()
newtype T_HasGuards_4350
  = C_constructor_4360 (AgdaAny ->
                        [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards.GuardsOf
d_GuardsOf_4358 ::
  T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4358 v0
  = case coe v0 of
      C_constructor_4360 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.GuardsOf
d_GuardsOf_4364 ::
  T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_4364 v0 = coe d_GuardsOf_4358 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts
d_HasScripts_4370 a0 a1 a2 = ()
newtype T_HasScripts_4370
  = C_constructor_4380 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts.ScriptsOf
d_ScriptsOf_4378 ::
  T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4378 v0
  = case coe v0 of
      C_constructor_4380 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.ScriptsOf
d_ScriptsOf_4384 ::
  T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_4384 v0 = coe d_ScriptsOf_4378 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts
d_HasTxOuts_4390 a0 a1 a2 = ()
newtype T_HasTxOuts_4390
  = C_constructor_4400 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts.TxOutsOf
d_TxOutsOf_4398 ::
  T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4398 v0
  = case coe v0 of
      C_constructor_4400 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.TxOutsOf
d_TxOutsOf_4404 ::
  T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_4404 v0 = coe d_TxOutsOf_4398 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes
d_HasRequiredSingerHashes_4410 a0 a1 a2 = ()
newtype T_HasRequiredSingerHashes_4410
  = C_constructor_4420 (AgdaAny -> [AgdaAny])
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4418 ::
  T_HasRequiredSingerHashes_4410 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4418 v0
  = case coe v0 of
      C_constructor_4420 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_4424 ::
  T_HasRequiredSingerHashes_4410 -> AgdaAny -> [AgdaAny]
d_RequiredSignerHashesOf_4424 v0
  = coe d_RequiredSignerHashesOf_4418 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury
d_HasCurrentTreasury_4430 a0 a1 a2 = ()
newtype T_HasCurrentTreasury_4430
  = C_constructor_4440 (AgdaAny -> Maybe Integer)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_4438 ::
  T_HasCurrentTreasury_4430 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4438 v0
  = case coe v0 of
      C_constructor_4440 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.CurrentTreasuryOf
d_CurrentTreasuryOf_4444 ::
  T_HasCurrentTreasury_4430 -> AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_4444 v0 = coe d_CurrentTreasuryOf_4438 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits
d_HasDirectDeposits_4450 a0 a1 a2 = ()
newtype T_HasDirectDeposits_4450
  = C_constructor_4460 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_4458 ::
  T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4458 v0
  = case coe v0 of
      C_constructor_4460 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.DirectDepositsOf
d_DirectDepositsOf_4464 ::
  T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_4464 v0 = coe d_DirectDepositsOf_4458 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals
d_HasBalanceIntervals_4470 a0 a1 a2 = ()
newtype T_HasBalanceIntervals_4470
  = C_constructor_4480 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_4478 ::
  T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4478 v0
  = case coe v0 of
      C_constructor_4480 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.BalanceIntervalsOf
d_BalanceIntervalsOf_4484 ::
  T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_4484 v0
  = coe d_BalanceIntervalsOf_4478 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag
d_HasIsValidFlag_4490 a0 a1 a2 = ()
newtype T_HasIsValidFlag_4490
  = C_constructor_4500 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_4498 :: T_HasIsValidFlag_4490 -> AgdaAny -> Bool
d_IsValidFlagOf_4498 v0
  = case coe v0 of
      C_constructor_4500 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure._.IsValidFlagOf
d_IsValidFlagOf_4504 :: T_HasIsValidFlag_4490 -> AgdaAny -> Bool
d_IsValidFlagOf_4504 v0 = coe d_IsValidFlagOf_4498 (coe v0)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_4506 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxBody_3956
d_HasTxBody'45'Tx_4506 ~v0 ~v1 = du_HasTxBody'45'Tx_4506
du_HasTxBody'45'Tx_4506 :: T_HasTxBody_3956
du_HasTxBody'45'Tx_4506
  = coe C_constructor_3968 (coe (\ v0 -> d_txBody_3818 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSize-Tx
d_HasSize'45'Tx_4508 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSize_4110
d_HasSize'45'Tx_4508 ~v0 ~v1 = du_HasSize'45'Tx_4508
du_HasSize'45'Tx_4508 :: T_HasSize_4110
du_HasSize'45'Tx_4508
  = coe C_constructor_4120 (coe (\ v0 -> d_txSize_3822 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_4510 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxWitnesses_3978
d_HasTxWitnesses'45'Tx_4510 ~v0 ~v1 = du_HasTxWitnesses'45'Tx_4510
du_HasTxWitnesses'45'Tx_4510 :: T_HasTxWitnesses_3978
du_HasTxWitnesses'45'Tx_4510
  = coe
      C_constructor_3988 (coe (\ v0 -> d_txWitnesses_3820 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_4512 ::
  T_TransactionStructure_58 -> T_HasIsValidFlag_4490
d_HasIsValidFlag'45'Tx_4512 ~v0 = du_HasIsValidFlag'45'Tx_4512
du_HasIsValidFlag'45'Tx_4512 :: T_HasIsValidFlag_4490
du_HasIsValidFlag'45'Tx_4512
  = coe C_constructor_4500 (coe (\ v0 -> d_isValid_3824 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_4514 ::
  T_TransactionStructure_58 -> T_HasRedeemers_3998
d_HasRedeemers'45'TxWitnesses_4514 ~v0
  = du_HasRedeemers'45'TxWitnesses_4514
du_HasRedeemers'45'TxWitnesses_4514 :: T_HasRedeemers_3998
du_HasRedeemers'45'TxWitnesses_4514
  = coe
      C_constructor_4008 (coe (\ v0 -> d_txRedeemers_3938 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRedeemers-Tx
d_HasRedeemers'45'Tx_4516 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasRedeemers_3998
d_HasRedeemers'45'Tx_4516 ~v0 ~v1 = du_HasRedeemers'45'Tx_4516
du_HasRedeemers'45'Tx_4516 :: T_HasRedeemers_3998
du_HasRedeemers'45'Tx_4516
  = coe
      C_constructor_4008
      (coe
         (\ v0 -> d_txRedeemers_3938 (coe d_txWitnesses_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_4518 ::
  T_TransactionStructure_58 -> T_HasCollateralInputs_4020
d_HasCollateralInputs'45'TopLevelTx_4518 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_4518
du_HasCollateralInputs'45'TopLevelTx_4518 ::
  T_HasCollateralInputs_4020
du_HasCollateralInputs'45'TopLevelTx_4518
  = coe
      C_constructor_4032
      (coe
         (\ v0 -> d_collateralInputs_3880 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_4520 ::
  T_TransactionStructure_58 -> T_HasTxFees_4044
d_HasTxFees'45'TopLevelTx_4520 ~v0
  = du_HasTxFees'45'TopLevelTx_4520
du_HasTxFees'45'TopLevelTx_4520 :: T_HasTxFees_4044
du_HasTxFees'45'TopLevelTx_4520
  = coe
      C_constructor_4056
      (coe (\ v0 -> d_txFee_3888 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_4522 ::
  T_TransactionStructure_58 -> T_HasSubTransactions_4068
d_HasSubTransactions'45'TopLevelTx_4522 ~v0
  = du_HasSubTransactions'45'TopLevelTx_4522
du_HasSubTransactions'45'TopLevelTx_4522 ::
  T_HasSubTransactions_4068
du_HasSubTransactions'45'TopLevelTx_4522
  = coe
      C_constructor_4080
      (coe
         (\ v0 -> d_txSubTransactions_3910 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_4524 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'TxBody_4524 ~v0 ~v1
  = du_HasTopLevelGuards'45'TxBody_4524
du_HasTopLevelGuards'45'TxBody_4524 :: T_HasTopLevelGuards_4130
du_HasTopLevelGuards'45'TxBody_4524
  = coe
      C_constructor_4140
      (coe (\ v0 -> d_txRequiredTopLevelGuards_3914 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_4526 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'Tx_4526 ~v0 ~v1
  = du_HasTopLevelGuards'45'Tx_4526
du_HasTopLevelGuards'45'Tx_4526 :: T_HasTopLevelGuards_4130
du_HasTopLevelGuards'45'Tx_4526
  = coe
      C_constructor_4140
      (coe
         (\ v0 ->
            d_txRequiredTopLevelGuards_3914 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-TxBody
d_HasDCerts'45'TxBody_4528 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4250
d_HasDCerts'45'TxBody_4528 ~v0 ~v1 = du_HasDCerts'45'TxBody_4528
du_HasDCerts'45'TxBody_4528 :: T_HasDCerts_4250
du_HasDCerts'45'TxBody_4528
  = coe C_constructor_4260 (coe (\ v0 -> d_txCerts_3886 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_4530 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasDCerts_4250
d_HasDCerts'45'Tx_4530 ~v0 ~v1 = du_HasDCerts'45'Tx_4530
du_HasDCerts'45'Tx_4530 :: T_HasDCerts_4250
du_HasDCerts'45'Tx_4530
  = coe
      C_constructor_4260
      (coe (\ v0 -> d_txCerts_3886 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_4532 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_4532 ~v0 ~v1
  = du_HasWithdrawals'45'TxBody_4532
du_HasWithdrawals'45'TxBody_4532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_4532
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3890 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_4534 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_4534 ~v0 ~v1 = du_HasWithdrawals'45'Tx_4534
du_HasWithdrawals'45'Tx_4534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_4534
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_204
      (coe (\ v0 -> d_txWithdrawals_3890 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_4536 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4450
d_HasDirectDeposits'45'TxBody_4536 ~v0 ~v1
  = du_HasDirectDeposits'45'TxBody_4536
du_HasDirectDeposits'45'TxBody_4536 :: T_HasDirectDeposits_4450
du_HasDirectDeposits'45'TxBody_4536
  = coe
      C_constructor_4460 (coe (\ v0 -> d_txDirectDeposits_3916 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_4538 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasDirectDeposits_4450
d_HasDirectDeposits'45'Tx_4538 ~v0 ~v1
  = du_HasDirectDeposits'45'Tx_4538
du_HasDirectDeposits'45'Tx_4538 :: T_HasDirectDeposits_4450
du_HasDirectDeposits'45'Tx_4538
  = coe
      C_constructor_4460
      (coe
         (\ v0 -> d_txDirectDeposits_3916 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_4540 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'TxBody_4540 ~v0 ~v1
  = du_HasBalanceIntervals'45'TxBody_4540
du_HasBalanceIntervals'45'TxBody_4540 :: T_HasBalanceIntervals_4470
du_HasBalanceIntervals'45'TxBody_4540
  = coe
      C_constructor_4480
      (coe (\ v0 -> d_txBalanceIntervals_3918 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_4542 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'Tx_4542 ~v0 ~v1
  = du_HasBalanceIntervals'45'Tx_4542
du_HasBalanceIntervals'45'Tx_4542 :: T_HasBalanceIntervals_4470
du_HasBalanceIntervals'45'Tx_4542
  = coe
      C_constructor_4480
      (coe
         (\ v0 -> d_txBalanceIntervals_3918 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_4544 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4150
d_HasValidInterval'45'TxBody_4544 ~v0 ~v1
  = du_HasValidInterval'45'TxBody_4544
du_HasValidInterval'45'TxBody_4544 :: T_HasValidInterval_4150
du_HasValidInterval'45'TxBody_4544
  = coe C_constructor_4160 (coe (\ v0 -> d_txVldt_3892 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasValidInterval-Tx
d_HasValidInterval'45'Tx_4546 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasValidInterval_4150
d_HasValidInterval'45'Tx_4546 ~v0 ~v1
  = du_HasValidInterval'45'Tx_4546
du_HasValidInterval'45'Tx_4546 :: T_HasValidInterval_4150
du_HasValidInterval'45'Tx_4546
  = coe
      C_constructor_4160
      (coe (\ v0 -> d_txVldt_3892 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_4548 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4170
d_HasSpendInputs'45'TxBody_4548 ~v0 ~v1
  = du_HasSpendInputs'45'TxBody_4548
du_HasSpendInputs'45'TxBody_4548 :: T_HasSpendInputs_4170
du_HasSpendInputs'45'TxBody_4548
  = coe C_constructor_4180 (coe (\ v0 -> d_txIns_3876 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_4550 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasSpendInputs_4170
d_HasSpendInputs'45'Tx_4550 ~v0 ~v1 = du_HasSpendInputs'45'Tx_4550
du_HasSpendInputs'45'Tx_4550 :: T_HasSpendInputs_4170
du_HasSpendInputs'45'Tx_4550
  = coe
      C_constructor_4180
      (coe (\ v0 -> d_txIns_3876 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_4552 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4190
d_HasReferenceInputs'45'TxBody_4552 ~v0 ~v1
  = du_HasReferenceInputs'45'TxBody_4552
du_HasReferenceInputs'45'TxBody_4552 :: T_HasReferenceInputs_4190
du_HasReferenceInputs'45'TxBody_4552
  = coe
      C_constructor_4200 (coe (\ v0 -> d_referenceInputs_3878 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_4554 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasReferenceInputs_4190
d_HasReferenceInputs'45'Tx_4554 ~v0 ~v1
  = du_HasReferenceInputs'45'Tx_4554
du_HasReferenceInputs'45'Tx_4554 :: T_HasReferenceInputs_4190
du_HasReferenceInputs'45'Tx_4554
  = coe
      C_constructor_4200
      (coe (\ v0 -> d_referenceInputs_3878 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_4556 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4210
d_HasMintedValue'45'TxBody_4556 ~v0 ~v1
  = du_HasMintedValue'45'TxBody_4556
du_HasMintedValue'45'TxBody_4556 :: T_HasMintedValue_4210
du_HasMintedValue'45'TxBody_4556
  = coe C_constructor_4220 (coe (\ v0 -> d_mint_3906 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMintedValue-Tx
d_HasMintedValue'45'Tx_4558 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasMintedValue_4210
d_HasMintedValue'45'Tx_4558 ~v0 ~v1 = du_HasMintedValue'45'Tx_4558
du_HasMintedValue'45'Tx_4558 :: T_HasMintedValue_4210
du_HasMintedValue'45'Tx_4558
  = coe
      C_constructor_4220
      (coe (\ v0 -> d_mint_3906 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_4560 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'TxBody_4560 ~v0 ~v1
  = du_HasListOfGovVotes'45'TxBody_4560
du_HasListOfGovVotes'45'TxBody_4560 :: T_HasListOfGovVotes_4330
du_HasListOfGovVotes'45'TxBody_4560
  = coe C_constructor_4340 (coe (\ v0 -> d_txGovVotes_3898 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_4562 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'Tx_4562 ~v0 ~v1
  = du_HasListOfGovVotes'45'Tx_4562
du_HasListOfGovVotes'45'Tx_4562 :: T_HasListOfGovVotes_4330
du_HasListOfGovVotes'45'Tx_4562
  = coe
      C_constructor_4340
      (coe (\ v0 -> d_txGovVotes_3898 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_4564 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'TxBody_4564 ~v0 ~v1
  = du_HasListOfGovProposals'45'TxBody_4564
du_HasListOfGovProposals'45'TxBody_4564 ::
  T_HasListOfGovProposals_4310
du_HasListOfGovProposals'45'TxBody_4564
  = coe
      C_constructor_4320 (coe (\ v0 -> d_txGovProposals_3900 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_4566 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'Tx_4566 ~v0 ~v1
  = du_HasListOfGovProposals'45'Tx_4566
du_HasListOfGovProposals'45'Tx_4566 :: T_HasListOfGovProposals_4310
du_HasListOfGovProposals'45'Tx_4566
  = coe
      C_constructor_4320
      (coe (\ v0 -> d_txGovProposals_3900 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_4568 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_4568 ~v0 ~v1
  = du_HasMaybeNetworkId'45'TxBody_4568
du_HasMaybeNetworkId'45'TxBody_4568 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_4568
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3902 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_4570 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_4570 ~v0 ~v1
  = du_HasMaybeNetworkId'45'Tx_4570
du_HasMaybeNetworkId'45'Tx_4570 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_4570
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_184
      (coe (\ v0 -> d_txNetworkId_3902 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-TxBody
d_HasFees'63''45'TxBody_4574 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4230
d_HasFees'63''45'TxBody_4574 ~v0 v1
  = du_HasFees'63''45'TxBody_4574 v1
du_HasFees'63''45'TxBody_4574 :: T_TxLevel_8 -> T_HasFees'63'_4230
du_HasFees'63''45'TxBody_4574 v0
  = coe
      C_constructor_4240
      (case coe v0 of
         C_TxLevelTop_10
           -> coe
                (\ v1 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe d_txFee_3888 (coe v1)))
         C_TxLevelSub_12
           -> coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasFees?-Tx
d_HasFees'63''45'Tx_4580 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasFees'63'_4230
d_HasFees'63''45'Tx_4580 ~v0 v1 = du_HasFees'63''45'Tx_4580 v1
du_HasFees'63''45'Tx_4580 :: T_TxLevel_8 -> T_HasFees'63'_4230
du_HasFees'63''45'Tx_4580 v0
  = coe
      C_constructor_4240
      (coe
         (\ v1 ->
            coe
              d_FeesOf'63'_4238 (coe du_HasFees'63''45'TxBody_4574 (coe v0))
              (d_txBody_3818 (coe v1))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-TxBody
d_HasTxId'45'TxBody_4582 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4090
d_HasTxId'45'TxBody_4582 ~v0 ~v1 = du_HasTxId'45'TxBody_4582
du_HasTxId'45'TxBody_4582 :: T_HasTxId_4090
du_HasTxId'45'TxBody_4582
  = coe C_constructor_4100 (coe (\ v0 -> d_txId_3884 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_4584 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxId_4090
d_HasTxId'45'Tx_4584 ~v0 ~v1 = du_HasTxId'45'Tx_4584
du_HasTxId'45'Tx_4584 :: T_HasTxId_4090
du_HasTxId'45'Tx_4584
  = coe
      C_constructor_4100
      (coe (\ v0 -> d_txId_3884 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_4586 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_4586 ~v0 ~v1
  = du_HasDonations'45'TxBody_4586
du_HasDonations'45'TxBody_4586 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_4586
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_3896 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_4588 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_4588 ~v0 ~v1 = du_HasDonations'45'Tx_4588
du_HasDonations'45'Tx_4588 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_4588
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_txDonation_3896 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_4590 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_4590 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
              (d_tokenAlgebra_2742 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-TxWitnesses
d_HasData'45'TxWitnesses_4592 ::
  T_TransactionStructure_58 -> T_HasData_4290
d_HasData'45'TxWitnesses_4592 ~v0 = du_HasData'45'TxWitnesses_4592
du_HasData'45'TxWitnesses_4592 :: T_HasData_4290
du_HasData'45'TxWitnesses_4592
  = coe C_constructor_4300 (coe (\ v0 -> d_txData_3936 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasData-Tx
d_HasData'45'Tx_4594 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasData_4290
d_HasData'45'Tx_4594 ~v0 ~v1 = du_HasData'45'Tx_4594
du_HasData'45'Tx_4594 :: T_HasData_4290
du_HasData'45'Tx_4594
  = coe
      C_constructor_4300
      (coe (\ v0 -> d_txData_3936 (coe d_txWitnesses_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-TxBody
d_HasGuards'45'TxBody_4596 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4350
d_HasGuards'45'TxBody_4596 ~v0 ~v1 = du_HasGuards'45'TxBody_4596
du_HasGuards'45'TxBody_4596 :: T_HasGuards_4350
du_HasGuards'45'TxBody_4596
  = coe C_constructor_4360 (coe (\ v0 -> d_txGuards_3912 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasGuards-Tx
d_HasGuards'45'Tx_4598 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasGuards_4350
d_HasGuards'45'Tx_4598 ~v0 ~v1 = du_HasGuards'45'Tx_4598
du_HasGuards'45'Tx_4598 :: T_HasGuards_4350
du_HasGuards'45'Tx_4598
  = coe
      C_constructor_4360
      (coe (\ v0 -> d_txGuards_3912 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_4600 ::
  T_TransactionStructure_58 -> T_HasScripts_4370
d_HasScripts'45'TxWitnesses_4600 ~v0
  = du_HasScripts'45'TxWitnesses_4600
du_HasScripts'45'TxWitnesses_4600 :: T_HasScripts_4370
du_HasScripts'45'TxWitnesses_4600
  = coe C_constructor_4380 (coe (\ v0 -> d_scripts_3934 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasScripts-Tx
d_HasScripts'45'Tx_4602 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasScripts_4370
d_HasScripts'45'Tx_4602 ~v0 ~v1 = du_HasScripts'45'Tx_4602
du_HasScripts'45'Tx_4602 :: T_HasScripts_4370
du_HasScripts'45'Tx_4602
  = coe
      C_constructor_4380
      (coe (\ v0 -> d_scripts_3934 (coe d_txWitnesses_3820 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_4604 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4390
d_HasTxOuts'45'TxBody_4604 ~v0 ~v1 = du_HasTxOuts'45'TxBody_4604
du_HasTxOuts'45'TxBody_4604 :: T_HasTxOuts_4390
du_HasTxOuts'45'TxBody_4604
  = coe C_constructor_4400 (coe (\ v0 -> d_txOuts_3882 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasTxOuts-Tx
d_HasTxOuts'45'Tx_4606 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_HasTxOuts_4390
d_HasTxOuts'45'Tx_4606 ~v0 ~v1 = du_HasTxOuts'45'Tx_4606
du_HasTxOuts'45'Tx_4606 :: T_HasTxOuts_4390
du_HasTxOuts'45'Tx_4606
  = coe
      C_constructor_4400
      (coe (\ v0 -> d_txOuts_3882 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_4608 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'TxBody_4608 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'TxBody_4608
du_HasRequiredSingerHashes'45'TxBody_4608 ::
  T_HasRequiredSingerHashes_4410
du_HasRequiredSingerHashes'45'TxBody_4608
  = coe C_constructor_4420 (coe du_requiredSignerHashes_3920)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_4610 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'Tx_4610 ~v0 ~v1
  = du_HasRequiredSingerHashes'45'Tx_4610
du_HasRequiredSingerHashes'45'Tx_4610 ::
  T_HasRequiredSingerHashes_4410
du_HasRequiredSingerHashes'45'Tx_4610
  = coe
      C_constructor_4420
      (coe
         (\ v0 ->
            coe du_requiredSignerHashes_3920 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_4612 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'TxBody_4612 ~v0 ~v1
  = du_HasCurrentTreasury'45'TxBody_4612
du_HasCurrentTreasury'45'TxBody_4612 :: T_HasCurrentTreasury_4430
du_HasCurrentTreasury'45'TxBody_4612
  = coe
      C_constructor_4440 (coe (\ v0 -> d_currentTreasury_3904 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_4614 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 -> T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'Tx_4614 ~v0 ~v1
  = du_HasCurrentTreasury'45'Tx_4614
du_HasCurrentTreasury'45'Tx_4614 :: T_HasCurrentTreasury_4430
du_HasCurrentTreasury'45'Tx_4614
  = coe
      C_constructor_4440
      (coe (\ v0 -> d_currentTreasury_3904 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutToScript
d_txOutToScript_4616 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_4616 ~v0 v1 = du_txOutToScript_4616 v1
du_txOutToScript_4616 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_4616 v0
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
d_txOutToDatum_4620 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDatum_4620 ~v0 v1 = du_txOutToDatum_4620 v1
du_txOutToDatum_4620 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDatum_4620 v0
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
d_txOutToValue_4624 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_4624 ~v0 v1 = du_txOutToValue_4624 v1
du_txOutToValue_4624 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_4624 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.valuesOfUTxO
d_valuesOfUTxO_4628 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_valuesOfUTxO_4628 ~v0 v1 = du_valuesOfUTxO_4628 v1
du_valuesOfUTxO_4628 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_valuesOfUTxO_4628 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToValue_4624)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputs
d_allSpendInputs_4630 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_4630 ~v0 v1 = du_allSpendInputs_4630 v1
du_allSpendInputs_4630 ::
  T_Tx_3798 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_4630 v0
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
              (coe d_SpendInputsOf_4178 (coe du_HasSpendInputs'45'Tx_4550) v2)))
      (coe d_SpendInputsOf_4178 (coe du_HasSpendInputs'45'Tx_4550) v0)
      (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allSpendInputsList
d_allSpendInputsList_4638 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_4638 ~v0 v1 = du_allSpendInputsList_4638 v1
du_allSpendInputsList_4638 ::
  T_Tx_3798 -> [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_4638 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe d_SpendInputsOf_4178 (coe du_HasSpendInputs'45'Tx_4550) v0)
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (d_SpendInputsOf_4178 (coe du_HasSpendInputs'45'Tx_4550))
         (d_txSubTransactions_3910 (coe d_txBody_3818 (coe v0))))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceInputs
d_allReferenceInputs_4642 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_4642 ~v0 v1 = du_allReferenceInputs_4642 v1
du_allReferenceInputs_4642 ::
  T_Tx_3798 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_4642 v0
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
                 d_ReferenceInputsOf_4198 (coe du_HasReferenceInputs'45'Tx_4554)
                 v2)))
      (coe
         d_ReferenceInputsOf_4198 (coe du_HasReferenceInputs'45'Tx_4554) v0)
      (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendTxOuts
d_spendTxOuts_4654 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_4654 v0 ~v1 v2 v3 = du_spendTxOuts_4654 v0 v2 v3
du_spendTxOuts_4654 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_spendTxOuts_4654 v0 v1 v2
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
         (coe d_SpendInputsOf_4178 (coe du_HasSpendInputs'45'Tx_4550) v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referencedTxOuts
d_referencedTxOuts_4660 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_4660 v0 ~v1 v2 v3
  = du_referencedTxOuts_4660 v0 v2 v3
du_referencedTxOuts_4660 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_referencedTxOuts_4660 v0 v1 v2
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
            d_ReferenceInputsOf_4198 (coe du_HasReferenceInputs'45'Tx_4554)
            v1))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfUTxO
d_scriptsOfUTxO_4666 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_4666 ~v0 v1 = du_scriptsOfUTxO_4666 v1
du_scriptsOfUTxO_4666 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_4666 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4616)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.scriptsOfTx
d_scriptsOfTx_4668 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_4668 ~v0 ~v1 v2 = du_scriptsOfTx_4668 v2
du_scriptsOfTx_4668 ::
  T_Tx_3798 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_4668 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4616)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4398 (coe du_HasTxOuts'45'Tx_4606) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendScripts
d_spendScripts_4670 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_4670 v0 ~v1 = du_spendScripts_4670 v0
du_spendScripts_4670 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_spendScripts_4670 v0
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
              (coe du_txOutToScript_4616)))
      (coe du_spendTxOuts_4654 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceScripts
d_referenceScripts_4672 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_4672 v0 ~v1 v2 v3
  = du_referenceScripts_4672 v0 v2 v3
du_referenceScripts_4672 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_referenceScripts_4672 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToScript_4616)
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_referencedTxOuts_4660 (coe v0) (coe v1) (coe v2))
         (coe du_spendTxOuts_4654 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allReferenceScripts
d_allReferenceScripts_4678 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_4678 v0 v1 v2
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
              (coe du_referenceScripts_4672 (coe v0) (coe v4) (coe v2))))
      (coe du_referenceScripts_4672 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessScripts
d_witnessScripts_4688 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_4688 ~v0 ~v1 = du_witnessScripts_4688
du_witnessScripts_4688 ::
  T_Tx_3798 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_4688
  = coe d_ScriptsOf_4378 (coe du_HasScripts'45'Tx_4602)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allWitnessScripts
d_allWitnessScripts_4690 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_4690 ~v0 v1 = du_allWitnessScripts_4690 v1
du_allWitnessScripts_4690 ::
  T_Tx_3798 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_4690 v0
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
              (coe v1) (coe du_witnessScripts_4688 v2)))
      (coe du_witnessScripts_4688 v0)
      (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v0)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxScripts
d_getTxScripts_4698 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_4698 v0 ~v1 v2 v3 = du_getTxScripts_4698 v0 v2 v3
du_getTxScripts_4698 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_getTxScripts_4698 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_scriptsOfTx_4668 (coe v1))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_spendScripts_4670 v0 v1 v2)
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__708
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe du_referenceScripts_4672 (coe v0) (coe v1) (coe v2))
            (coe du_witnessScripts_4688 v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getAllScripts
d_getAllScripts_4704 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_4704 v0 v1 v2
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
              (coe v3) (coe du_getTxScripts_4698 (coe v0) (coe v4) (coe v2))))
      (coe du_getTxScripts_4698 (coe v0) (coe v1) (coe v2))
      (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.dataOfTx
d_dataOfTx_4714 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3798 -> [AgdaAny]
d_dataOfTx_4714 ~v0 ~v1 v2 = du_dataOfTx_4714 v2
du_dataOfTx_4714 :: T_Tx_3798 -> [AgdaAny]
du_dataOfTx_4714 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4620)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe d_TxOutsOf_4398 (coe du_HasTxOuts'45'Tx_4606) v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.txOutDataOfUTxO
d_txOutDataOfUTxO_4716 ::
  T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_txOutDataOfUTxO_4716 ~v0 v1 = du_txOutDataOfUTxO_4716 v1
du_txOutDataOfUTxO_4716 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_txOutDataOfUTxO_4716 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe du_txOutToDatum_4620)
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.spendData
d_spendData_4718 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_spendData_4718 v0 ~v1 = du_spendData_4718 v0
du_spendData_4718 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_spendData_4718 v0
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
              (coe du_txOutToDatum_4620)))
      (coe du_spendTxOuts_4654 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.referenceData
d_referenceData_4720 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  T_Tx_3798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_referenceData_4720 v0 ~v1 = du_referenceData_4720 v0
du_referenceData_4720 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_referenceData_4720 v0
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
              (coe du_txOutToDatum_4620)))
      (coe du_referencedTxOuts_4660 (coe v0))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.witnessData
d_witnessData_4722 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3798 -> [AgdaAny]
d_witnessData_4722 ~v0 ~v1 = du_witnessData_4722
du_witnessData_4722 :: T_Tx_3798 -> [AgdaAny]
du_witnessData_4722 = coe d_DataOf_4298 (coe du_HasData'45'Tx_4594)
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.getTxData
d_getTxData_4724 ::
  T_TransactionStructure_58 -> T_TxLevel_8 -> T_Tx_3798 -> [AgdaAny]
d_getTxData_4724 ~v0 ~v1 v2 = du_getTxData_4724 v2
du_getTxData_4724 :: T_Tx_3798 -> [AgdaAny]
du_getTxData_4724 v0 = coe du_witnessData_4722 v0
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_4728 ::
  T_TransactionStructure_58 -> T_Tx_3798 -> ()
d_NoOverlappingSpendInputs_4728 = erased
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allMintedCoin
d_allMintedCoin_4732 ::
  T_TransactionStructure_58 -> T_Tx_3798 -> Integer
d_allMintedCoin_4732 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                 (d_tokenAlgebra_2742 (coe v0))
                 (coe d_MintedValueOf_4218 (coe du_HasMintedValue'45'Tx_4558) v3))
              (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (d_tokenAlgebra_2742 (coe v0))
         (coe d_MintedValueOf_4218 (coe du_HasMintedValue'45'Tx_4558) v1))
      (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v1)))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_4740 ::
  T_TransactionStructure_58 ->
  T_TxLevel_8 ->
  AgdaAny ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_4740 v0 ~v1 v2 v3 v4
  = du_lookupScriptHash_4740 v0 v2 v3 v4
du_lookupScriptHash_4740 ::
  T_TransactionStructure_58 ->
  AgdaAny ->
  T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_lookupScriptHash_4740 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe d_cryptoStructure_1414 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
         (d_scriptStructure_2254 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
               (coe d_scriptStructure_2254 (coe v0))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe d_scriptStructure_2254 (coe v0)))))
      (coe v1) (coe du_getTxScripts_4698 (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Transaction.TransactionStructure.allDCerts
d_allDCerts_4748 ::
  T_TransactionStructure_58 ->
  T_Tx_3798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_allDCerts_4748 ~v0 v1 = du_allDCerts_4748 v1
du_allDCerts_4748 ::
  T_Tx_3798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
du_allDCerts_4748 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe d_DCertsOf_4258 (coe du_HasDCerts'45'Tx_4530))
         (coe d_txSubTransactions_3910 (coe d_txBody_3818 (coe v0))))
      (coe d_DCertsOf_4258 (coe du_HasDCerts'45'Tx_4530) v0)
