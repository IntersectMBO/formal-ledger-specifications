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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.LedgerTypes
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_34 = ()
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_36 = ()
-- Ledger.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_38 = ()
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_114 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_114 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_ccHotKeys_1908 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_116 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 -> Integer
d_currentEpoch_116 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1904 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_118 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_118 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_dreps_1906 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_120 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
d_stakeDistrs_120 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1902 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_122 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 -> Integer
d_treasury_122 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_treasury_1910 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_126 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 -> Bool
d_delay_126 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_1924 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_128 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_128 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_130 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_130 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_1922 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_134 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_134 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1888 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify.Convertible-StakeDistrs
d_Convertible'45'StakeDistrs_218 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'StakeDistrs_218
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247 v1
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_StakeDistrs'46'constructor_11103
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_StakeDistrs'46'constructor_11103 v1
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v2
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v2))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Ratify.Convertible-RatifyEnv
d_Convertible'45'RatifyEnv_220 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'RatifyEnv_220
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_RatifyEnv'46'constructor_11161
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_StakeDistrs'46'constructor_11103
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1888 (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_RatifyEnv'46'constructor_11161 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                     (coe
                        MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v6
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                       (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                 (coe v1)))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                            coe
                              (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v6)
                                    (coe v7))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                            coe
                              (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v6)
                                    (coe v7))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v4)))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Ratify.Convertible-RatifyState
d_Convertible'45'RatifyState_222 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'RatifyState_222
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1926 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_RatifyState'46'constructor_11271
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                   (coe v4) (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSSet_48
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_RatifyState'46'constructor_11271 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1926
                     (coe
                        MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                       (let v4
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                        coe
                                          (let v5
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v4) (coe v5))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esCC_550 (coe v1))))
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                    (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esConstitution_552
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPV_554 (coe v1))))
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPParams_556
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                         (coe
                                            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esWithdrawals_558
                                 (coe v1)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_elems_46 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyEnv_832 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52 Integer)
       MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_224
d_ratify'45'debug_224 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyEnv_832 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52
        Integer)
     MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_224 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      ("Number of govactions: " :: Data.Text.Text)
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         (coe
            MAlonzo.Code.Data.Nat.Show.d_show_56
            (coe MAlonzo.Code.Data.List.Base.du_length_284 v2))
         (coe
            MAlonzo.Code.Data.String.Base.d__'43''43'__20
            ("\n" :: Data.Text.Text)
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe
                  (\ v3 v4 ->
                     coe
                       MAlonzo.Code.Data.String.Base.d__'43''43'__20 v4
                       (coe du_govActionInfo_248 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_248 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyEnv_832 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52
        Integer)
     MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52
       Integer)
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_248 v0 v1 ~v2 v3 = du_govActionInfo_248 v0 v1 v3
du_govActionInfo_248 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyEnv_832 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52
       Integer)
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_248 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2224
                      (coe
                         MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670)
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_540
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                         (coe
                            MAlonzo.Code.Ledger.Ratify.d_actualVotes_2068
                            (coe
                               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                            (coe
                               MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                        (let v5
                                               = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                 (coe v5))))
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                     (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                           (coe
                                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reStakeDistrs_844
                                              (coe v0))))))
                               (coe
                                  MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCurrentEpoch_846
                                  (coe v0))
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                     (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                      coe
                                        (let v6
                                               = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                              (coe v5) (coe v6))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reDReps_848
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                     (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                      coe
                                        (let v6
                                               = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                              (coe v5) (coe v6))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCCHotKeys_850
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reTreasury_852
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_pparams_848
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_es_1920
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Convertible'45'RatifyState_222 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_cc_842
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_es_1920
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Convertible'45'RatifyState_222 v1))))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                  v4))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1902
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            d_Convertible'45'RatifyEnv_220 v0))
                      (coe
                         MAlonzo.Code.Ledger.Ratify.d_actualVotes_2068
                         (coe
                            MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                         (coe
                            MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                            (coe
                               MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                     (let v5
                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                              (coe v5))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reStakeDistrs_844
                                           (coe v0))))))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCurrentEpoch_846
                               (coe v0))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                  (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                   coe
                                     (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                           (coe v5) (coe v6))))
                                  (coe
                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                  (coe
                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                  (coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reDReps_848
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                  (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                   coe
                                     (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                           (coe v5) (coe v6))))
                                  (coe
                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                  (coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCCHotKeys_850
                                     (coe v0))))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reTreasury_852 (coe v0)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_pparams_848
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.d_es_1920
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Convertible'45'RatifyState_222 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_cc_842
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.d_es_1920
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Convertible'45'RatifyState_222 v1))))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                               v4))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2526
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Convertible'45'RatifyEnv_220 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1920
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Convertible'45'RatifyState_222 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                    v4)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670) in
                       coe
                         (case coe v5 of
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                              -> if coe v6
                                   then coe seq (coe v7) (coe ("\10003" :: Data.Text.Text))
                                   else coe seq (coe v7) (coe ("\215" :: Data.Text.Text))
                            _ -> MAlonzo.RTE.mazUnreachableError))
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         ("\n" :: Data.Text.Text)
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            ("DRep: \t" :: Data.Text.Text)
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               (MAlonzo.Code.Data.Rational.Show.d_show_6
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2224
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                     (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668)
                                     (coe
                                        MAlonzo.Code.Interface.IsSet.du_dom_540
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                        (coe
                                           MAlonzo.Code.Ledger.Ratify.d_actualVotes_2068
                                           (coe
                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                           (coe
                                              MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                       (let v5
                                                              = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                (coe v5))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reStakeDistrs_844
                                                             (coe v0))))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCurrentEpoch_846
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                    (let v5
                                                           = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                     coe
                                                       (let v6
                                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe v5) (coe v6))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reDReps_848
                                                       (coe v0))))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                    (let v5
                                                           = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                     coe
                                                       (let v6
                                                              = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe v5) (coe v6))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCCHotKeys_850
                                                       (coe v0))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reTreasury_852
                                                 (coe v0)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Convertible'45'RatifyState_222 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_cc_842
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Convertible'45'RatifyState_222 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                 v4))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1902
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Convertible'45'RatifyEnv_220 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Ratify.d_actualVotes_2068
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                        (coe
                                           MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                                           (coe
                                              MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                             (coe v5))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reStakeDistrs_844
                                                          (coe v0))))))
                                           (coe
                                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCurrentEpoch_846
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                 (let v5
                                                        = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                  coe
                                                    (let v6
                                                           = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                          (coe v5) (coe v6))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reDReps_848
                                                    (coe v0))))
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                 (let v5
                                                        = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                  coe
                                                    (let v6
                                                           = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                          (coe v5) (coe v6))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCCHotKeys_850
                                                    (coe v0))))
                                           (coe
                                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reTreasury_852
                                              (coe v0)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_pparams_848
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Convertible'45'RatifyState_222 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_cc_842
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Convertible'45'RatifyState_222 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                              v4))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2526
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Convertible'45'RatifyEnv_220 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Convertible'45'RatifyState_222 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668) in
                                      coe
                                        (case coe v5 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                             -> if coe v6
                                                  then coe
                                                         seq (coe v7)
                                                         (coe ("\10003" :: Data.Text.Text))
                                                  else coe
                                                         seq (coe v7)
                                                         (coe ("\215" :: Data.Text.Text))
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                     (coe
                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                        ("\n" :: Data.Text.Text)
                                        (coe
                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                           ("CC: \t" :: Data.Text.Text)
                                           (coe
                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                              (MAlonzo.Code.Data.Rational.Show.d_show_6
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2224
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovernanceActions.C_CC_666)
                                                    (coe
                                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ratify.d_actualVotes_2068
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                                      (let v5
                                                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                               (coe v5))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                                   (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reStakeDistrs_844
                                                                            (coe v0))))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCurrentEpoch_846
                                                                (coe v0))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                                   (let v5
                                                                          = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                    coe
                                                                      (let v6
                                                                             = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe v5) (coe v6))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                                (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reDReps_848
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                                   (let v5
                                                                          = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                    coe
                                                                      (let v6
                                                                             = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe v5) (coe v6))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                                                (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCCHotKeys_850
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reTreasury_852
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Convertible'45'RatifyState_222
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_cc_842
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Convertible'45'RatifyState_222
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                                v4))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1902
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Convertible'45'RatifyEnv_220 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Ratify.d_actualVotes_2068
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11333
                                                          (coe
                                                             MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                                   (let v5
                                                                          = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                            (coe v5))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                                (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDistr_830
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reStakeDistrs_844
                                                                         (coe v0))))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCurrentEpoch_846
                                                             (coe v0))
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                                (let v5
                                                                       = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                 coe
                                                                   (let v6
                                                                          = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe v5) (coe v6))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                             (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reDReps_848
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                                                (let v5
                                                                       = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                 coe
                                                                   (let v6
                                                                          = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe v5) (coe v6))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                                             (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reCCHotKeys_850
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reTreasury_852
                                                             (coe v0)))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Convertible'45'RatifyState_222
                                                                   v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_cc_842
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Convertible'45'RatifyState_222
                                                                   v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                             v4))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2526
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Convertible'45'RatifyEnv_220 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ratify.d_es_1920
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Convertible'45'RatifyState_222
                                                                     v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_666) in
                                                     coe
                                                       (case coe v5 of
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                                            -> if coe v6
                                                                 then coe
                                                                        seq (coe v7)
                                                                        (coe
                                                                           ("\10003"
                                                                            ::
                                                                            Data.Text.Text))
                                                                 else coe
                                                                        seq (coe v7)
                                                                        (coe
                                                                           ("\215"
                                                                            ::
                                                                            Data.Text.Text))
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                    ("\n" :: Data.Text.Text))))))))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyEnv_832 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52 Integer)
       MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608) ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Empty_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854
ratifyStep = coe d_ratify'45'step_302
d_ratify'45'step_302 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyEnv_832 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxId_52
        Integer)
     MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_GovActionState_608] ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Empty_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_RatifyState_854
d_ratify'45'step_302 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'RatifyState_222)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                  (coe
                     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45''8869'_16)
               (coe d_Convertible'45'RatifyState_222))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Ratify.Properties.d_Computational'45'RATIFY_2088
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            d_Convertible'45'RatifyEnv_220 v0))