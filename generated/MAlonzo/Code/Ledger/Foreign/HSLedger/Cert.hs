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
data CertState = MkCertState {dState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.DState', pState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.PState, gState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.GState}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv
d_CertEnv_42 = ()
-- Ledger.Foreign.HSLedger.Cert._.CertState
d_CertState_44 = ()
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.epoch
d_epoch_108 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_898 -> Integer
d_epoch_108 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_epoch_908 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.pp
d_pp_110 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_898 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_110 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_pp_910 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.votes
d_votes_112 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_898 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_112 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_votes_912 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertEnv.wdrls
d_wdrls_114 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertEnv_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_114 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_wdrls_914 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.dState
d_dState_118 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_954 ->
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_918
d_dState_118 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dState_962 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.gState
d_gState_120 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_954 ->
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_938
d_gState_120 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_gState_966 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.pState
d_pState_122 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_954 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928
d_pState_122 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_pState_964 (coe v0)
-- Ledger.Foreign.HSLedger.Cert.CertState
d_CertState_125 = ()
type T_CertState_125 = CertState
pattern C_MkCertState_127 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_127 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DState''_6399 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_PState_2587 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_GState_16469 ->
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
              MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7580''738'_968 v1 v2 v3
                -> coe
                     C_MkCertState_127
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkDState''_6401
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
                                    MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_928 (coe v1)))))
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
                                    MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_930 (coe v1)))))
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
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_932 (coe v1)))))
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
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_934 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
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
                                 (coe MAlonzo.Code.Ledger.Certs.d_pools_934 (coe v2)))))
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
                                 (coe MAlonzo.Code.Ledger.Certs.d_retiring_936 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkGState_16471
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
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_946 (coe v3)))))
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
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_948 (coe v3)))))
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
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_950 (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_127 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7580''738'_968
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'44'_'10215''7496'_936 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkDState''_6401
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
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkDState''_6401 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'44'_'10215''7496'_936
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
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
                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
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
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938
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
                                   MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7515'_952 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkGState_16471
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
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkGState_16471 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7515'_952
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
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
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_3867 ->
  T_CertState_125 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_10605 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_125
certsStep' = coe d_certs'45'step''_152
d_certs'45'step''_152 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_3867 ->
  T_CertState_125 ->
  [MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_10605] ->
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
                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DCert_114))
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'CertState_150))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Haskell.Properties.d_Computational'45'CERTS_1918
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_106
            v0))
-- Ledger.Foreign.HSLedger.Cert.cert-step'
certStep' ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_3867 ->
  T_CertState_125 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_10605 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_125
certStep' = coe d_cert'45'step''_154
d_cert'45'step''_154 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_CertEnv_3867 ->
  T_CertState_125 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.T_DCert_10605 ->
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
               MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DCert_114)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvString_12)
               (coe d_Conv'45'CertState_150))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Haskell.Properties.d_Computational'45'CERT_1364
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_106
            v0))
