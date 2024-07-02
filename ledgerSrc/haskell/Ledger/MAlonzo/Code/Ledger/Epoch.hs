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

module MAlonzo.Code.Ledger.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Acnt
d_Acnt_32 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.Credential
d_Credential_64 a0 = ()
-- _.DState
d_DState_74 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_106 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_130 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_176
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))
-- _.Epoch
d_Epoch_174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_174 = erased
-- _.GState
d_GState_186 a0 = ()
-- _.THash
d_THash_228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_228 = erased
-- _.Number-Epoch
d_Number'45'Epoch_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_256 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390 (coe v0))
-- _.PState
d_PState_280 a0 = ()
-- _.RwdAddr
d_RwdAddr_314 a0 = ()
-- _.TxOut
d_TxOut_380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_380 = erased
-- _.UTxO
d_UTxO_386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_386 = erased
-- _.VDeleg
d_VDeleg_390 a0 = ()
-- _.addEpoch
d_addEpoch_420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_420 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390 (coe v0))
-- Ledger.Epoch._.GovState
d_GovState_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 -> ()
d_GovState_1506 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1604 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1606 ~v0 ~v1 = du_ccCreds_1606
du_ccCreds_1606 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1606 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_786
-- Ledger.Epoch._.LState
d_LState_1662 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1740 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1704 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1722 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1724 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1818 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1818 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1738 (coe v0)
-- Ledger.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1842 v0 ~v1
  = du_DecEq'45'DepositPurpose_1842 v0
du_DecEq'45'DepositPurpose_1842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1842 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1782 (coe v0)
-- Ledger.Epoch._.DepositPurpose
d_DepositPurpose_1844 a0 a1 = ()
-- Ledger.Epoch._.Deposits
d_Deposits_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 -> ()
d_Deposits_1846 = erased
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1850 ~v0 ~v1 = du_HasCoin'45'Map_1850
du_HasCoin'45'Map_1850 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1850 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1598 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1872 a0 a1 = ()
-- Ledger.Epoch.Snapshot
d_Snapshot_1996 a0 a1 = ()
data T_Snapshot_1996
  = C_'10214'_'44'_'10215''738'_2006 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2002 ::
  T_Snapshot_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2002 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2006 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2004 ::
  T_Snapshot_1996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2004 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2006 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2008 a0 a1 = ()
data T_Snapshots_2008
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2026 T_Snapshot_1996
                                                    T_Snapshot_1996 T_Snapshot_1996 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2018 :: T_Snapshots_2008 -> T_Snapshot_1996
d_mark_2018 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2026 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2020 :: T_Snapshots_2008 -> T_Snapshot_1996
d_set_2020 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2026 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2022 :: T_Snapshots_2008 -> T_Snapshot_1996
d_go_2022 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2026 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2024 :: T_Snapshots_2008 -> Integer
d_feeSS_2024 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2026 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2028 a0 a1 = ()
data T_EpochState_2028
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050 MAlonzo.Code.Ledger.PParams.T_Acnt_124
                                                       T_Snapshots_2008
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_1872
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_764
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762
-- Ledger.Epoch.EpochState.acnt
d_acnt_2040 ::
  T_EpochState_2028 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
d_acnt_2040 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2042 :: T_EpochState_2028 -> T_Snapshots_2008
d_ss_2042 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2044 ::
  T_EpochState_2028 -> MAlonzo.Code.Ledger.Ledger.T_LState_1872
d_ls_2044 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2046 ::
  T_EpochState_2028 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_es_2046 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2048 ::
  T_EpochState_2028 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762
d_fut_2048 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2052 a0 a1 = ()
data T_NewEpochState_2052
  = C_'10214'_'44'_'10215''8319''7497'_2062 AgdaAny T_EpochState_2028
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2058 :: T_NewEpochState_2052 -> AgdaAny
d_lastEpoch_2058 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_2062 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2060 :: T_NewEpochState_2052 -> T_EpochState_2028
d_epochState_2060 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_2062 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_toRwdAddr_2104 v0 ~v1 v2 = du_toRwdAddr_2104 v0 v2
du_toRwdAddr_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
du_toRwdAddr_2104 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_2437
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2108 ~v0 ~v1 v2 = du_getStakeCred_2108 v2
du_getStakeCred_2108 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2108 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Ledger.Address.du_stakeCred_104 (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_806 ->
  MAlonzo.Code.Ledger.Certs.T_PState_822 -> T_Snapshot_1996
d_stakeDistr_2112 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2112 v0 v2 v3
du_stakeDistr_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_806 -> T_Snapshot_1996
du_stakeDistr_2112 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_820 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2006
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_496
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1112
                   (coe du_stakeRelation_2132 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_822 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2126 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2126 v0 v2 v5
du_m_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2126 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1768 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1144 (coe v1)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1128
                                           (coe v0))))))
                            (coe du_getStakeCred_2108 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_526
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_534) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_822 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2132 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2132 v0 v2 v5
du_stakeRelation_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2132 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe du_m_2126 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2134 v0 ~v1 v2 v3
  = du_gaDepositStake_2134 v0 v2 v3
du_gaDepositStake_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2134 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1170
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1094 (coe v0))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_176
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1108 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Address.d_stake_78
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2144 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1174
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1708
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1782 (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1708
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2)))))))
         (coe du_govSt''_2144 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2144 ~v0 ~v1 v2 ~v3 = du_govSt''_2144 v2
du_govSt''_2144 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2144 v0
  = let v1
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
            (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
            (coe
               (\ v2 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_728 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_410
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_Snapshot_1996 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1734
d_mkStakeDistrs_2156 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2156 v0 v2 v3 v4 v5
du_mkStakeDistrs_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_1996 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1734
du_mkStakeDistrs_2156 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_10451
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2006 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1170
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_740
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2150 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                   (coe
                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                   (coe
                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                         (coe
                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1128 (coe v0))))
                   v5 (coe du_gaDepositStake_2134 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2166 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2166 = C_SNAP_2196
-- Ledger.Epoch._.certState
d_certState_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
d_certState_2170 ~v0 ~v1 v2 = du_certState_2170 v2
du_certState_2170 ::
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Certs.T_CertState_846
du_certState_2170 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1884
      (coe d_'46'generalizedField'45'lstate_11525 v0)
-- Ledger.Epoch._.utxoSt
d_utxoSt_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
d_utxoSt_2174 ~v0 ~v1 v2 = du_utxoSt_2174 v2
du_utxoSt_2174 ::
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1726
du_utxoSt_2174 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1880
      (coe d_'46'generalizedField'45'lstate_11525 v0)
-- Ledger.Epoch._.fees
d_fees_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_11535 -> Integer
d_fees_2182 ~v0 ~v1 v2 = du_fees_2182 v2
du_fees_2182 :: T_GeneralizeTel_11535 -> Integer
du_fees_2182 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1738
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1880
         (coe d_'46'generalizedField'45'lstate_11525 v0))
-- Ledger.Epoch._.utxo
d_utxo_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_11535 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2184 ~v0 ~v1 v2 = du_utxo_2184 v2
du_utxo_2184 ::
  T_GeneralizeTel_11535 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2184 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1736
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1880
         (coe d_'46'generalizedField'45'lstate_11525 v0))
-- Ledger.Epoch._.dState
d_dState_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Certs.T_DState_806
d_dState_2188 ~v0 ~v1 v2 = du_dState_2188 v2
du_dState_2188 ::
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Certs.T_DState_806
du_dState_2188 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_854
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1884
         (coe d_'46'generalizedField'45'lstate_11525 v0))
-- Ledger.Epoch._.pState
d_pState_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Certs.T_PState_822
d_pState_2192 ~v0 ~v1 v2 = du_pState_2192 v2
du_pState_2192 ::
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Certs.T_PState_822
du_pState_2192 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_856
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1884
         (coe d_'46'generalizedField'45'lstate_11525 v0))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2198 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2198
  = C_EPOCH_2270 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2166
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_18609 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2266 ~v0 ~v1 v2 = du_ccHotKeys_2266 v2
du_ccHotKeys_2266 ::
  T_GeneralizeTel_18609 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2266 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_842
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_858
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1884
            (coe d_'46'generalizedField'45'ls_18595 v0)))
-- Ledger.Epoch._.dreps
d_dreps_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  T_GeneralizeTel_18609 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2268 ~v0 ~v1 v2 = du_dreps_2268 v2
du_dreps_2268 ::
  T_GeneralizeTel_18609 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2268 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_840
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_858
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1884
            (coe d_'46'generalizedField'45'ls_18595 v0)))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2272 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2272
  = C_NEWEPOCH'45'New_2274 T__'8866'_'8640''10631'_'44'EPOCH'10632'__2198 |
    C_NEWEPOCH'45'Not'45'New_2276
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_11525 ::
  T_GeneralizeTel_11535 -> MAlonzo.Code.Ledger.Ledger.T_LState_1872
d_'46'generalizedField'45'lstate_11525
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_11527 ::
  T_GeneralizeTel_11535 -> T_Snapshot_1996
d_'46'generalizedField'45'mark_11527
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_11529 ::
  T_GeneralizeTel_11535 -> T_Snapshot_1996
d_'46'generalizedField'45'set_11529
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_11531 ::
  T_GeneralizeTel_11535 -> T_Snapshot_1996
d_'46'generalizedField'45'go_11531
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_11533 ::
  T_GeneralizeTel_11535 -> Integer
d_'46'generalizedField'45'feeSS_11533
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_11535 a0 a1 = ()
data T_GeneralizeTel_11535
  = C_mkGeneralizeTel_11537 MAlonzo.Code.Ledger.Ledger.T_LState_1872
                            T_Snapshot_1996 T_Snapshot_1996 T_Snapshot_1996 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_18593 ::
  T_GeneralizeTel_18609 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762
d_'46'generalizedField'45'fut_18593
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_18595 ::
  T_GeneralizeTel_18609 -> MAlonzo.Code.Ledger.Ledger.T_LState_1872
d_'46'generalizedField'45'ls_18595
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_18597 ::
  T_GeneralizeTel_18609 -> AgdaAny
d_'46'generalizedField'45'e_18597 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_18599 ::
  T_GeneralizeTel_18609 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
d_'46'generalizedField'45'acnt_18599
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_18601 ::
  T_GeneralizeTel_18609 -> T_Snapshots_2008
d_'46'generalizedField'45'ss''_18601
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_18603 ::
  T_GeneralizeTel_18609 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762
d_'46'generalizedField'45'fut''_18603
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_18605 ::
  T_GeneralizeTel_18609 -> T_Snapshots_2008
d_'46'generalizedField'45'ss_18605
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_18607 ::
  T_GeneralizeTel_18609 -> MAlonzo.Code.Ledger.Enact.T_EnactState_764
d_'46'generalizedField'45'es'8320'_18607
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_18609 a0 a1 = ()
data T_GeneralizeTel_18609
  = C_mkGeneralizeTel_18611 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762
                            MAlonzo.Code.Ledger.Ledger.T_LState_1872 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_124 T_Snapshots_2008
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1762 T_Snapshots_2008
                            MAlonzo.Code.Ledger.Enact.T_EnactState_764
