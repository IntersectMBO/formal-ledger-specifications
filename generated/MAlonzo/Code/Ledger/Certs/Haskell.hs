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

module MAlonzo.Code.Ledger.Certs.Haskell where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _.Credential
d_Credential_24 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_52 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_52 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_52 v2 v3
du_DecEq'45'Credential_52 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_52 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_106 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_106 = erased
-- _.THash
d_THash_126 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_126 = erased
-- _.PParams
d_PParams_154 a0 = ()
-- _.RwdAddr
d_RwdAddr_176 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_266 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_266 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_220
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
         (coe v0))
-- _.isKeyHash
d_isKeyHash_296 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_296 = erased
-- Ledger.Certs.Haskell._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__658 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Haskell._.DCert
d_DCert_660 a0 = ()
-- Ledger.Certs.Haskell._.DepositPurpose
d_DepositPurpose_664 a0 = ()
-- Ledger.Certs.Haskell._.Deposits
d_Deposits_666 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_666 = erased
-- Ledger.Certs.Haskell._.PState
d_PState_668 a0 = ()
-- Ledger.Certs.Haskell._.PoolParams
d_PoolParams_672 a0 = ()
-- Ledger.Certs.Haskell._.Anchor
d_Anchor_718 a0 = ()
-- Ledger.Certs.Haskell._.GovVote
d_GovVote_742 a0 = ()
-- Ledger.Certs.Haskell._.VDeleg
d_VDeleg_762 a0 = ()
-- Ledger.Certs.Haskell._.getDRepVote
d_getDRepVote_778 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_778 ~v0 = du_getDRepVote_778
du_getDRepVote_778 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_778
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_802
-- Ledger.Certs.Haskell.CertEnv
d_CertEnv_870 a0 = ()
data T_CertEnv_870
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_888 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_240
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.CertEnv.epoch
d_epoch_880 :: T_CertEnv_870 -> AgdaAny
d_epoch_880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.pp
d_pp_882 ::
  T_CertEnv_870 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pp_882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.votes
d_votes_884 ::
  T_CertEnv_870 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_votes_884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.wdrls
d_wdrls_886 ::
  T_CertEnv_870 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_888 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState
d_DState_890 a0 = ()
data T_DState_890
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_908 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DState.voteDelegs
d_voteDelegs_900 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_908 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.stakeDelegs
d_stakeDelegs_902 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_902 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_908 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.rewards
d_rewards_904 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_904 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_908 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.deposits
d_deposits_906 ::
  T_DState_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_906 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_908 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState
d_GState_910 a0 = ()
data T_GState_910
  = C_'10214'_'44'_'44'_'10215''7515'_924 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.GState.dreps
d_dreps_918 ::
  T_GState_910 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_918 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_924 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.ccHotKeys
d_ccHotKeys_920 ::
  T_GState_910 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_920 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_924 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.deposits
d_deposits_922 ::
  T_GState_910 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_922 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_924 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState
d_CertState_926 a0 = ()
data T_CertState_926
  = C_'10214'_'44'_'44'_'10215''7580''738'_940 T_DState_890
                                               MAlonzo.Code.Ledger.Certs.T_PState_900 T_GState_910
-- Ledger.Certs.Haskell.CertState.dState
d_dState_934 :: T_CertState_926 -> T_DState_890
d_dState_934 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_940 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.pState
d_pState_936 ::
  T_CertState_926 -> MAlonzo.Code.Ledger.Certs.T_PState_900
d_pState_936 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_940 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.gState
d_gState_938 :: T_CertState_926 -> T_GState_910
d_gState_938 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_940 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv
d_DelegEnv_942 a0 = ()
data T_DelegEnv_942
  = C_'10214'_'44'_'10215''7496''7497'_952 MAlonzo.Code.Ledger.PParams.T_PParams_240
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DelegEnv.pparams
d_pparams_948 ::
  T_DelegEnv_942 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_948 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_952 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv.pools
d_pools_950 ::
  T_DelegEnv_942 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_950 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_952 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GovCertEnv
d_GovCertEnv_954 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_954 = erased
-- Ledger.Certs.Haskell.certDeposit
d_certDeposit_956 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_956 ~v0 v1 ~v2 = du_certDeposit_956 v1
du_certDeposit_956 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_956 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_830 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_810 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_838 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_814 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Certs.Haskell.certRefund
d_certRefund_966 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_808]
d_certRefund_966 ~v0 v1 = du_certRefund_966 v1
du_certRefund_966 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_808]
du_certRefund_966 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_832 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_810 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_840 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                (MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_814 (coe v2))
         _ -> coe v1)
-- Ledger.Certs.Haskell.updateCertDeposit
d_updateCertDeposit_972 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_972 v0 ~v1 v2 v3
  = du_updateCertDeposit_972 v0 v2 v3
du_updateCertDeposit_972 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_972 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820 (coe v0))
         v2 (coe du_certDeposit_956 (coe v1)))
      (coe du_certRefund_966 (coe v1))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1054 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1054
  = C_DELEG'45'delegate_1116 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1118 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.keyDeposit
d_keyDeposit_1086 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_8269 -> Integer
d_keyDeposit_1086 ~v0 v1 = du_keyDeposit_1086 v1
du_keyDeposit_1086 :: T_GeneralizeTel_8269 -> Integer
du_keyDeposit_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_320
      (coe d_'46'generalizedField'45'pp_8249 v0)
-- Ledger.Certs.Haskell._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1120 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1120
  = C_GOVCERT'45'regdrep_1184 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1186 MAlonzo.Code.Ledger.PParams.T_PParams_240
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1188 MAlonzo.Code.Ledger.PParams.T_PParams_240
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1190 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1190
  = C_CERT'45'deleg_1192 T__'8866'_'8640''10631'_'44'DELEG'10632'__1054 |
    C_CERT'45'pool_1194 MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__1038 |
    C_CERT'45'vdel_1196 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1120
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1198 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1198
  = C_CERT'45'base_1266 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.drepActivity
d_drepActivity_1220 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_22607 -> AgdaAny
d_drepActivity_1220 ~v0 v1 = du_drepActivity_1220 v1
du_drepActivity_1220 :: T_GeneralizeTel_22607 -> AgdaAny
du_drepActivity_1220 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_356
      (coe d_'46'generalizedField'45'pp_22583 v0)
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1268 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_870 ->
  T_CertState_926 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] -> T_CertState_926 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1268 = erased
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_8249 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_'46'generalizedField'45'pp_8249 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_8251 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_8251 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rwds
d_'46'generalizedField'45'rwds_8253 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_8253
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_8255 :: T_GeneralizeTel_8269 -> Integer
d_'46'generalizedField'45'd_8255 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mkh
d_'46'generalizedField'45'mkh_8257 ::
  T_GeneralizeTel_8269 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_8257
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-pools
d_'46'generalizedField'45'pools_8259 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_8259
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_8261 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_8261
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_8263 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_8263
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_8265 ::
  T_GeneralizeTel_8269 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_8265
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mv
d_'46'generalizedField'45'mv_8267 ::
  T_GeneralizeTel_8269 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670
d_'46'generalizedField'45'mv_8267 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_8269 a0 = ()
data T_GeneralizeTel_8269
  = C_mkGeneralizeTel_8271 MAlonzo.Code.Ledger.PParams.T_PParams_240
                           MAlonzo.Code.Ledger.Address.T_Credential_16
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670)
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_22583 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_'46'generalizedField'45'pp_22583
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_22585 ::
  T_GeneralizeTel_22607 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_'46'generalizedField'45'vs_22585
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_22587 ::
  T_GeneralizeTel_22607 -> AgdaAny
d_'46'generalizedField'45'e_22587 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dreps
d_'46'generalizedField'45'dreps_22589 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_22589
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_22591 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_22591
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_22593 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_22593
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rewards
d_'46'generalizedField'45'rewards_22595 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_22595
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_22597 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_22597
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ddep
d_'46'generalizedField'45'ddep_22599 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_22599
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_22601 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Ledger.Certs.T_PState_900
d_'46'generalizedField'45'st'7510'_22601
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_22603 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_22603
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-gdep
d_'46'generalizedField'45'gdep_22605 ::
  T_GeneralizeTel_22607 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_22605
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_22607 a0 = ()
data T_GeneralizeTel_22607
  = C_mkGeneralizeTel_22609 MAlonzo.Code.Ledger.PParams.T_PParams_240
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_900
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
