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
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Certs.Haskell
import qualified MAlonzo.Code.Ledger.Certs.Haskell.Properties
import qualified MAlonzo.Code.Ledger.Certs.Properties
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.LedgerTypes
import qualified MAlonzo.Code.Ledger.Transaction

-- Ledger.Foreign.HSLedger.Cert._.CertState
d_CertState_38 = ()
-- Ledger.Foreign.HSLedger.Cert._.CertState.dState
d_dState_42 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_896
d_dState_42 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dState_940 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.gState
d_gState_44 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_916
d_gState_44 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_gState_944 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._.CertState.pState
d_pState_46 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_CertState_932 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_46 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_pState_942 (coe v0)
-- Ledger.Foreign.HSLedger.Cert._
d___48 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d___48
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_30
-- Ledger.Foreign.HSLedger.Cert.Convertible-CertState
d_Convertible'45'CertState_50 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'CertState_50
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_CertState'46'constructor_11021
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_DState'46'constructor_10763
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
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_898 (coe v1)))))
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
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900 (coe v1)))))
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
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_rewards_902 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PState'46'constructor_10895
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_GState'46'constructor_10933
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
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_dreps_924 (coe v3)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926 (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_CertState'46'constructor_11021 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                     (coe
                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_voteDelegs_740
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDelegs_742
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_rewards_744 (coe v1)))))
                     (coe
                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pools_770 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_retiring_772 (coe v2)))))
                     (coe
                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dreps_780 (coe v3))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccHotKeys_782
                                 (coe v3)))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Cert.Convertible-CertState'
d_Convertible'45'CertState''_52 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'CertState''_52
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7580''738'_946 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_CertState'''46'constructor_11063
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_DState'''46'constructor_10827
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
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_906 (coe v1)))))
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
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_908 (coe v1)))))
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
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_910 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DepositPurpose_378)
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_912 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PState'46'constructor_10895
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_GState'''46'constructor_10979
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
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_924 (coe v3)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_926 (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DepositPurpose_378)
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_928 (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_CertState'''46'constructor_11063 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7580''738'_946
                     (coe
                        MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'44'_'10215''7496'_914
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_voteDelegs_756
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDelegs_758
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_rewards_760 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                       (coe v4))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DepositPurpose_378)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_deposits_762 (coe v1)))))
                     (coe
                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pools_770 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_retiring_772 (coe v2)))))
                     (coe
                        MAlonzo.Code.Ledger.Certs.Haskell.C_'10214'_'44'_'44'_'10215''7515'_930
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dreps_792 (coe v3))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccHotKeys_794 (coe v3))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v4
                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                       (coe v4))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DepositPurpose_378)
                              (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_deposits_796 (coe v3)))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Cert.certs-step
certsStep ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv_692 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798
certsStep = coe d_certs'45'step_54
d_certs'45'step_54 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv_692 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798 ->
  [MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144] ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798
d_certs'45'step_54 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'CertState_50)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DCert_526))
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe d___48) (coe d_Convertible'45'CertState_50))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Properties.d_Computational'45'CERTS_1876
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Convertible'45'CertEnv_64
            v0))
-- Ledger.Foreign.HSLedger.Cert.certs-step'
certsStep' ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv''_714 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812
certsStep' = coe d_certs'45'step''_56
d_certs'45'step''_56 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv''_714 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812 ->
  [MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144] ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812
d_certs'45'step''_56 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'CertState''_52)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DCert_526))
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe d___48) (coe d_Convertible'45'CertState''_52))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Haskell.Properties.d_Computational'45'CERTS_1872
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Convertible'45'CertEnv''_66
            v0))
-- Ledger.Foreign.HSLedger.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv_692 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798
certStep = coe d_cert'45'step_58
d_cert'45'step_58 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv_692 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState_798
d_cert'45'step_58 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'CertState_50)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DCert_526)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe d___48) (coe d_Convertible'45'CertState_50))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Properties.d_Computational'45'CERT_1338
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Convertible'45'CertEnv_64
            v0))
-- Ledger.Foreign.HSLedger.Cert.cert-step'
certStep' ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv''_714 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812
certStep' = coe d_cert'45'step''_60
d_cert'45'step''_60 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertEnv''_714 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_TxCert_144 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_CertState''_812
d_cert'45'step''_60 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'CertState''_52)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'DCert_526)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe d___48) (coe d_Convertible'45'CertState''_52))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Certs.Haskell.Properties.d_Computational'45'CERT_1326
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Convertible'45'CertEnv''_66
            v0))
