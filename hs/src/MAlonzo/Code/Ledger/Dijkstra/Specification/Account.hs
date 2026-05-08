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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Account where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_46 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Account.DirectDeposits
d_DirectDeposits_846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DirectDeposits_846 = erased
-- Ledger.Dijkstra.Specification.Account.HasDirectDeposits
d_HasDirectDeposits_852 a0 a1 a2 = ()
newtype T_HasDirectDeposits_852
  = C_constructor_862 (AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Account.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_860 ::
  T_HasDirectDeposits_852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_860 v0
  = case coe v0 of
      C_constructor_862 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Account._.DirectDepositsOf
d_DirectDepositsOf_866 ::
  T_HasDirectDeposits_852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_866 v0 = coe d_DirectDepositsOf_860 (coe v0)
-- Ledger.Dijkstra.Specification.Account.BalanceInterval
d_BalanceInterval_868 a0 = ()
data T_BalanceInterval_868
  = C_'10214'_'44'_'10630'_870 Integer Integer |
    C_'10214'_'44''8734''10630'_872 Integer |
    C_'10214'0'44'_'10630'_874 Integer
-- Ledger.Dijkstra.Specification.Account.InBalanceInterval
d_InBalanceInterval_878 a0 a1 a2 = ()
data T_InBalanceInterval_878
  = C_bounded_886 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
                  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_lowerBounded_890 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_upperBounded_894 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
-- Ledger.Dijkstra.Specification.Account.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  Integer ->
  T_BalanceInterval_868 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_896 ~v0 v1 v2
  = du_Dec'45'InBalanceInterval_896 v1 v2
du_Dec'45'InBalanceInterval_896 ::
  Integer ->
  T_BalanceInterval_868 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_896 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v1 of
         C_'10214'_'44'_'10630'_870 v2 v3
           -> let v4
                    = coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                             (coe v2))
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2866)
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                           (coe
                              MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v2)
                              (coe v0))) in
              coe
                (let v5
                       = coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                                (coe addInt (coe (1 :: Integer)) (coe v0)))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2866)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                              (coe
                                 MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v3))) in
                 coe
                   (case coe v4 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                        -> if coe v6
                             then case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                                      -> case coe v5 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                             -> if coe v9
                                                  then case coe v10 of
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                           -> coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                   (coe C_bounded_886 v8 v11))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  else coe
                                                         seq (coe v10)
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                            (coe v9)
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             else coe
                                    seq (coe v7)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe v6)
                                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                      _ -> MAlonzo.RTE.mazUnreachableError))
         C_'10214'_'44''8734''10630'_872 v2
           -> let v3
                    = coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                             (coe v2))
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2866)
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                           (coe
                              MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v2)
                              (coe v0))) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                     -> if coe v4
                          then case coe v5 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                   -> coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v4)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                           (coe C_lowerBounded_890 v6))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          else coe
                                 seq (coe v5)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v4)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                   _ -> MAlonzo.RTE.mazUnreachableError)
         C_'10214'0'44'_'10630'_874 v2
           -> let v3
                    = coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2854
                             (coe addInt (coe (1 :: Integer)) (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2866)
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_72
                           (coe
                              MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                              (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v2))) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                     -> if coe v4
                          then case coe v5 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                   -> coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v4)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                           (coe C_upperBounded_894 v6))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          else coe
                                 seq (coe v5)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v4)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Account.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_996 ~v0
  = du_DecEq'45'BalanceInterval_996
du_DecEq'45'BalanceInterval_996 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_996
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_'10214'_'44'_'10630'_870 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_'10214'_'44'_'10630'_870 v4 v5
                            -> let v6
                                     = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                         (coe v1) (coe v4) in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then let v9
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v2) (coe v5) in
                                                coe
                                                  (case coe v9 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                                       -> if coe v10
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v10)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v10)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_'10214'_'44''8734''10630'_872 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_'10214'0'44'_'10630'_874 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_'10214'_'44''8734''10630'_872 v1
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_'10214'_'44'_'10630'_870 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_'10214'_'44''8734''10630'_872 v3
                            -> let v4
                                     = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                         (coe v1) (coe v3) in
                               coe
                                 (case coe v4 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                                      -> if coe v5
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v5)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v5)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_'10214'0'44'_'10630'_874 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_'10214'0'44'_'10630'_874 v1
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_'10214'_'44'_'10630'_870 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_'10214'_'44''8734''10630'_872 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_'10214'0'44'_'10630'_874 v3
                            -> let v4
                                     = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                         (coe v1) (coe v3) in
                               coe
                                 (case coe v4 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                                      -> if coe v5
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v5)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v5)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Account.AccountBalanceIntervals
d_AccountBalanceIntervals_998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_AccountBalanceIntervals_998 = erased
