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

module MAlonzo.Code.Ledger.Core.Specification.ProtocolVersion where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Core.Specification.ProtocolVersion.ProtVer
d_ProtVer_12 :: ()
d_ProtVer_12 = erased
-- Ledger.Core.Specification.ProtocolVersion.pvMajor
d_pvMajor_14 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_pvMajor_14 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Ledger.Core.Specification.ProtocolVersion.pvMinor
d_pvMinor_16 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_pvMinor_16 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)
-- Ledger.Core.Specification.ProtocolVersion.pvCanFollowMajor
d_pvCanFollowMajor_18 a0 a1 = ()
data T_pvCanFollowMajor_18 = C_canFollowMajor_20
-- Ledger.Core.Specification.ProtocolVersion.pvCanFollowMinor
d_pvCanFollowMinor_22 a0 a1 = ()
data T_pvCanFollowMinor_22 = C_canFollowMinor_24
-- Ledger.Core.Specification.ProtocolVersion.pvCanFollow
d_pvCanFollow_26 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_pvCanFollow_26 = erased
-- Ledger.Core.Specification.ProtocolVersion.Show-ProtVer
d_Show'45'ProtVer_32 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_32
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Core.Specification.ProtocolVersion.Dec-pvCanFollowMajor
d_Dec'45'pvCanFollowMajor_38 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'pvCanFollowMajor_38 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                     erased
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2786
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                        (coe
                           eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
                           (coe addInt (coe (1 :: Integer)) (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                           (coe
                              eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
                              (coe addInt (coe (1 :: Integer)) (coe v2))))) in
           coe
             (let v5 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0) in
              coe
                (let v6 = 0 :: Integer in
                 coe
                   (case coe v4 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                        -> if coe v7
                             then let v9
                                        = seq
                                            (coe v8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                               erased erased
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                  v5 v6)) in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                         -> if coe v10
                                              then coe
                                                     seq (coe v11)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                           (coe C_canFollowMajor_20)))
                                              else coe
                                                     seq (coe v11)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             else (let v9
                                         = seq
                                             (coe v8)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                   coe
                                     (case coe v9 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                          -> if coe v10
                                               then coe
                                                      seq (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                         (coe v10)
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                            (coe C_canFollowMajor_20)))
                                               else coe
                                                      seq (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                         (coe v10)
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.ProtocolVersion.Dec-pvCanFollowMinor
d_Dec'45'pvCanFollowMinor_70 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'pvCanFollowMinor_70 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                     erased
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2786
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                        (coe
                           eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
                           (coe v2))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                           (coe
                              eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
                              (coe v2)))) in
           coe
             (let v5 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0) in
              coe
                (let v6 = addInt (coe (1 :: Integer)) (coe v3) in
                 coe
                   (case coe v4 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                        -> if coe v7
                             then let v9
                                        = seq
                                            (coe v8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                               erased erased
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                  v5 v6)) in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                         -> if coe v10
                                              then coe
                                                     seq (coe v11)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                           (coe C_canFollowMinor_24)))
                                              else coe
                                                     seq (coe v11)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             else (let v9
                                         = seq
                                             (coe v8)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                   coe
                                     (case coe v9 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                          -> if coe v10
                                               then coe
                                                      seq (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                         (coe v10)
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                            (coe C_canFollowMinor_24)))
                                               else coe
                                                      seq (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                         (coe v10)
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.ProtocolVersion.pvCanFollowMajor?
d_pvCanFollowMajor'63'_98 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_pvCanFollowMajor'63'_98 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe d_Dec'45'pvCanFollowMajor_38 (coe v0) (coe v1))
-- Ledger.Core.Specification.ProtocolVersion.pvCanFollowMinor?
d_pvCanFollowMinor'63'_100 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_pvCanFollowMinor'63'_100 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe d_Dec'45'pvCanFollowMinor_70 (coe v0) (coe v1))
-- Ledger.Core.Specification.ProtocolVersion.pvCanFollow?
d_pvCanFollow'63'_106 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_106 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe d_Dec'45'pvCanFollowMajor_38 (coe v0) (coe v1))
      (coe d_Dec'45'pvCanFollowMinor_70 (coe v0) (coe v1))
