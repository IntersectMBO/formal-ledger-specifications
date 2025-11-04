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

module MAlonzo.Code.Ledger.Core.Specification.Script.Timelock where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- _.THash
d_THash_24 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_24 = erased
-- _.Slot
d_Slot_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  ()
d_Slot_80 = erased
-- Ledger.Core.Specification.Script.Timelock.Timelock
d_Timelock_104 a0 a1 = ()
data T_Timelock_104
  = C_RequireAllOf_106 [T_Timelock_104] |
    C_RequireAnyOf_108 [T_Timelock_104] |
    C_RequireMOf_110 Integer [T_Timelock_104] |
    C_RequireSig_112 AgdaAny | C_RequireTimeStart_114 AgdaAny |
    C_RequireTimeExpire_116 AgdaAny
-- Ledger.Core.Specification.Script.Timelock.DecEq-Timelock
d_DecEq'45'Timelock_118 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_118 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v2 ->
            case coe v2 of
              C_RequireAllOf_106 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_RequireAllOf_106 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (d_Class'46'DecEq'46'Core'46'DecEq'45'Agda'46'Builtin'46'List'46'ListLedger'46'Core'46'Specification'46'Script'46'Timelock'46'Timelock_583
                                            (coe v0) (coe v1))
                                         v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_RequireAnyOf_108 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireMOf_110 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireSig_112 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeStart_114 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeExpire_116 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_RequireAnyOf_108 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_RequireAllOf_106 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireAnyOf_108 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (d_Class'46'DecEq'46'Core'46'DecEq'45'Agda'46'Builtin'46'List'46'ListLedger'46'Core'46'Specification'46'Script'46'Timelock'46'Timelock_583
                                            (coe v0) (coe v1))
                                         v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_RequireMOf_110 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireSig_112 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeStart_114 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeExpire_116 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_RequireMOf_110 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          C_RequireAllOf_106 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireAnyOf_108 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireMOf_110 v6 v7
                            -> coe
                                 du_'46'extendedlambda_601 (coe v0) (coe v1) (coe v4) (coe v7)
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796 (coe v3)
                                    (coe v6))
                          C_RequireSig_112 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeStart_114 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeExpire_116 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_RequireSig_112 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_RequireAllOf_106 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireAnyOf_108 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireMOf_110 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireSig_112 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe v0)))
                                         v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_RequireTimeStart_114 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeExpire_116 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_RequireTimeStart_114 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_RequireAllOf_106 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireAnyOf_108 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireMOf_110 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireSig_112 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeStart_114 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
                                            (coe v1))
                                         v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_RequireTimeExpire_116 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_RequireTimeExpire_116 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_RequireAllOf_106 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireAnyOf_108 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireMOf_110 v5 v6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireSig_112 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeStart_114 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_RequireTimeExpire_116 v5
                            -> let v6
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
                                            (coe v1))
                                         v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Script.Timelock.evalTimelock
d_evalTimelock_140 a0 a1 a2 a3 a4 = ()
data T_evalTimelock_140
  = C_evalAll_146 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 |
    C_evalAny_148 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_evalMOf_150 MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.T_MOf_24 |
    C_evalSig_152 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_evalTSt_156 MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 |
    C_evalTEx_160 MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18
-- Ledger.Core.Specification.Script.Timelock.Dec-evalTimelock
d_Dec'45'evalTimelock_162 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_162 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe d_go'63'_210 v0 v1 v2 v3 v4 v4)
-- Ledger.Core.Specification.Script.Timelock._.go
d_go_174 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 -> T_Timelock_104 -> ()
d_go_174 = erased
-- Ledger.Core.Specification.Script.Timelock._.evalAll˘
d_evalAll'728'_178 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_evalAll'728'_178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_evalAll'728'_178 v6
du_evalAll'728'_178 ::
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_evalAll'728'_178 v0
  = case coe v0 of
      C_evalAll_146 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.evalAny˘
d_evalAny'728'_182 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_evalAny'728'_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_evalAny'728'_182 v6
du_evalAny'728'_182 ::
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_evalAny'728'_182 v0
  = case coe v0 of
      C_evalAny_148 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.evalTSt˘
d_evalTSt'728'_186 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  AgdaAny ->
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18
d_evalTSt'728'_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_evalTSt'728'_186 v6
du_evalTSt'728'_186 ::
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18
du_evalTSt'728'_186 v0
  = case coe v0 of
      C_evalTSt_156 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.evalTEx˘
d_evalTEx'728'_190 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  AgdaAny ->
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18
d_evalTEx'728'_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_evalTEx'728'_190 v6
du_evalTEx'728'_190 ::
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18
du_evalTEx'728'_190 v0
  = case coe v0 of
      C_evalTEx_160 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.evalSig˘
d_evalSig'728'_192 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  AgdaAny ->
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_evalSig'728'_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_evalSig'728'_192 v6
du_evalSig'728'_192 ::
  T_evalTimelock_140 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_evalSig'728'_192 v0
  = case coe v0 of
      C_evalSig_152 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.evalMOf˘
d_evalMOf'728'_198 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  Integer ->
  [T_Timelock_104] ->
  T_evalTimelock_140 ->
  MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.T_MOf_24
d_evalMOf'728'_198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_evalMOf'728'_198 v7
du_evalMOf'728'_198 ::
  T_evalTimelock_140 ->
  MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.T_MOf_24
du_evalMOf'728'_198 v0
  = case coe v0 of
      C_evalMOf_150 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.MOf-go?
d_MOf'45'go'63'_204 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  Integer ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_MOf'45'go'63'_204 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.du_done_88
                   (coe v6)))
      _ -> let v7 = subInt (coe v5) (coe (1 :: Integer)) in
           coe
             (case coe v6 of
                []
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                (:) v8 v9
                  -> coe
                       d_'46'extendedlambda_76205 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v4) (coe v7) (coe v8) (coe v9)
                       (coe d_go'63'_210 v0 v1 v2 v3 v4 v8)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Script.Timelock._.all-go?
d_all'45'go'63'_206 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'45'go'63'_206 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50))
      (:) v6 v7
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe
                MAlonzo.Code.Data.Product.Base.du_uncurry_244
                (coe MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60))
             (coe MAlonzo.Code.Data.List.Relation.Unary.All.du_uncons_108)
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                (coe d_go'63'_210 v0 v1 v2 v3 v4 v6)
                (coe
                   d_all'45'go'63'_206 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.any-go?
d_any'45'go'63'_208 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'45'go'63'_208 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      (:) v6 v7
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe MAlonzo.Code.Data.List.Relation.Unary.Any.du_fromSum_132)
             (coe MAlonzo.Code.Data.List.Relation.Unary.Any.du_toSum_126)
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                (coe d_go'63'_210 v0 v1 v2 v3 v4 v6)
                (coe
                   d_any'45'go'63'_208 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._.go?
d_go'63'_210 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  T_Timelock_104 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_go'63'_210 v0 v1 v2 v3 v4
  = coe
      d_'46'extendedlambda0_224 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
-- Ledger.Core.Specification.Script.Timelock._..extendedlambda0
d_'46'extendedlambda0_224 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  T_Timelock_104 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'46'extendedlambda0_224 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C_RequireAllOf_106 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe C_evalAll_146) (coe du_evalAll'728'_178)
             (coe
                d_all'45'go'63'_206 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v6))
      C_RequireAnyOf_108 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe C_evalAny_148) (coe du_evalAny'728'_182)
             (coe
                d_any'45'go'63'_208 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v6))
      C_RequireMOf_110 v6 v7
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe C_evalMOf_150) (coe du_evalMOf'728'_198)
             (coe
                d_MOf'45'go'63'_204 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                (coe v6) (coe v7))
      C_RequireSig_112 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe C_evalSig_152) (coe du_evalSig'728'_192)
             (coe
                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                   (coe
                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      erased
                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v0))))
                   (coe v6)
                   (coe
                      MAlonzo.Code.Class.IsSet.d_toSet_526
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590) v2)))
      C_RequireTimeStart_114 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe C_evalTSt_156) (coe du_evalTSt'728'_186)
             (coe
                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                   (coe
                      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
                      (coe
                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                         (coe
                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                               (coe v1))
                            v6)))
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      C_RequireTimeExpire_116 v6
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe C_evalTEx_160) (coe du_evalTEx'728'_190)
             (coe
                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                   (coe
                      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
                      (coe
                         MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                    (coe v1))
                                 v7 v6))))
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock.Class.DecEq.Core.DecEq-Agda.Builtin.List.ListLedger.Core.Specification.Script.Timelock.Timelock
d_Class'46'DecEq'46'Core'46'DecEq'45'Agda'46'Builtin'46'List'46'ListLedger'46'Core'46'Specification'46'Script'46'Timelock'46'Timelock_583 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_Class'46'DecEq'46'Core'46'DecEq'45'Agda'46'Builtin'46'List'46'ListLedger'46'Core'46'Specification'46'Script'46'Timelock'46'Timelock_583 v0
                                                                                                                                          v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v2 ->
            case coe v2 of
              []
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          []
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          (:) v4 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              (:) v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          []
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          (:) v6 v7
                            -> coe
                                 du_'46'extendedlambda_42155 (coe v0) (coe v1) (coe v4) (coe v7)
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (d_DecEq'45'Timelock_118 (coe v0) (coe v1)) v3 v6)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Script.Timelock..extendedlambda
d_'46'extendedlambda_601 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  Integer ->
  [T_Timelock_104] ->
  Integer ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'46'extendedlambda_601 v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'46'extendedlambda_601 v0 v1 v3 v5 v6
du_'46'extendedlambda_601 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [T_Timelock_104] ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'46'extendedlambda_601 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
        -> if coe v5
             then let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (d_Class'46'DecEq'46'Core'46'DecEq'45'Agda'46'Builtin'46'List'46'ListLedger'46'Core'46'Specification'46'Script'46'Timelock'46'Timelock_583
                               (coe v0) (coe v1))
                            v2 v3 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v8)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                              else coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             else coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe v5) (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock..extendedlambda
d_'46'extendedlambda_42155 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'46'extendedlambda_42155 v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'46'extendedlambda_42155 v0 v1 v3 v5 v6
du_'46'extendedlambda_42155 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [T_Timelock_104] ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'46'extendedlambda_42155 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
        -> if coe v5
             then let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (d_Class'46'DecEq'46'Core'46'DecEq'45'Agda'46'Builtin'46'List'46'ListLedger'46'Core'46'Specification'46'Script'46'Timelock'46'Timelock_583
                               (coe v0) (coe v1))
                            v2 v3 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v8)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                              else coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             else coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe v5) (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Script.Timelock._..extendedlambda
d_'46'extendedlambda_76205 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_Timelock_104 ->
  Integer ->
  T_Timelock_104 ->
  [T_Timelock_104] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'46'extendedlambda_76205 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
        -> if coe v9
             then case coe v10 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                           (coe
                              MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.du_cons_60
                              (coe v6) (coe v11))
                           (coe
                              MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.du_uncons_116
                              (coe v7))
                           (coe
                              d_MOf'45'go'63'_204 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                              (coe v5) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                       (coe MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.du_skip_76)
                       (coe
                          MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf.du_unskip_138)
                       (coe
                          d_MOf'45'go'63'_204 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                          (coe addInt (coe (1 :: Integer)) (coe v5)) (coe v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
