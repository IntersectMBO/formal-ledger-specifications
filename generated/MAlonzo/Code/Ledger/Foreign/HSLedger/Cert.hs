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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Cert where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Certs.Haskell
import qualified MAlonzo.Code.Ledger.Certs.Haskell.Properties
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction

import GHC.Generics (Generic)
data CertState = MkCertState {dState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.DState, pState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.PState, gState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.GState}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv
d_CertEnv_42 = ()
-- Ledger.Foreign.HSLedger.Cert._.CertState
d_CertState_44 = ()
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.epoch
d_epoch_108 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_874 -> Integer
d_epoch_108 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_epoch_884 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.pp
d_pp_110 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_874 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_110 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_pp_886 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.votes
d_votes_112 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_874 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_votes_112 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_votes_888 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.wdrls
d_wdrls_114 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_114 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_wdrls_890 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.dState
d_dState_118 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_894
d_dState_118 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dState_938 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.gState
d_gState_120 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_914
d_gState_120 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_gState_942 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.pState
d_pState_122 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_122 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_pState_940 (coe v0)
-- Ledger.Foreign.HSLedger.Cert.CertState
d_CertState_125 = ()
type T_CertState_125 = CertState
pattern C_MkCertState_127 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_127 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DState_8327 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_PState_2581 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_GState_18397 ->
  T_CertState_125
check_MkCertState_127 = MkCertState
cover_CertState_125 :: CertState -> ()
cover_CertState_125 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.HSLedger.Cert.HsTy-CertState
d_HsTy'45'CertState_148 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'CertState_148 = erased
-- Ledger.Foreign.HSLedger.Cert.Conv-CertState
d_Conv'45'CertState_150 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState_150
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3
                -> coe
                     C_MkCertState_127
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkDState_8329
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_904 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_906 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_908 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_910 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2583
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkGState_18399
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_922 (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_924 (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_926 (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_127 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7580''738'_944
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'44'_'10215''7496'_912 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkDState_8329
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkDState_8329 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'44'_'10215''7496'_912
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2366
                                                         (coe v9))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v8)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_914 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2583
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2583 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_914
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7515'_928 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkGState_18399
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkGState_18399 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7515'_928
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2366
                                                         (coe v8))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Cert.certs-step'
certsStep' ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_5801 ->
  T_CertState_125 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_12533 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_125
certsStep' = coe d_certs'45'step''_152
d_certs'45'step''_152 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_5801 ->
  T_CertState_125 ->
  [MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_12533] ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_125
d_certs'45'step''_152 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'CertState_150)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DCert_118))
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'CertState_150))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Haskell.Properties.d_Computational'45'CERTS_1870
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2366
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_110
            v0))
-- Ledger.Foreign.HSLedger.Cert.cert-step'
certStep' ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_5801 ->
  T_CertState_125 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_12533 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_125
certStep' = coe d_cert'45'step''_154
d_cert'45'step''_154 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_5801 ->
  T_CertState_125 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_12533 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_125
d_cert'45'step''_154 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'CertState_150)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DCert_118)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'CertState_150))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Haskell.Properties.d_Computational'45'CERT_1324
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2366
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_862)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_110
            v0))
