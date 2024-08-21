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
d_addEpoch_232 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_232 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_546
         (coe v0))
-- Ledger.Certs.Haskell._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__622 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Haskell._.DCert
d_DCert_624 a0 = ()
-- Ledger.Certs.Haskell._.DepositPurpose
d_DepositPurpose_628 a0 = ()
-- Ledger.Certs.Haskell._.Deposits
d_Deposits_630 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_630 = erased
-- Ledger.Certs.Haskell._.PState
d_PState_632 a0 = ()
-- Ledger.Certs.Haskell._.PoolParams
d_PoolParams_636 a0 = ()
-- Ledger.Certs.Haskell._.Anchor
d_Anchor_682 a0 = ()
-- Ledger.Certs.Haskell._.GovVote
d_GovVote_706 a0 = ()
-- Ledger.Certs.Haskell._.VDeleg
d_VDeleg_726 a0 = ()
-- Ledger.Certs.Haskell._.getDRepVote
d_getDRepVote_742 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_742 ~v0 = du_getDRepVote_742
du_getDRepVote_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_742
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_766
-- Ledger.Certs.Haskell.CertEnv
d_CertEnv_834 a0 = ()
data T_CertEnv_834
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_852 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_228
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.CertEnv.epoch
d_epoch_844 :: T_CertEnv_834 -> AgdaAny
d_epoch_844 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_852 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.pp
d_pp_846 ::
  T_CertEnv_834 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pp_846 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_852 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.votes
d_votes_848 ::
  T_CertEnv_834 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
d_votes_848 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_852 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.wdrls
d_wdrls_850 ::
  T_CertEnv_834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_850 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_852 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState
d_DState_854 a0 = ()
data T_DState_854
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_872 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DState.voteDelegs
d_voteDelegs_864 ::
  T_DState_854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_864 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_872 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.stakeDelegs
d_stakeDelegs_866 ::
  T_DState_854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_866 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_872 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.rewards
d_rewards_868 ::
  T_DState_854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_868 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_872 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.deposits
d_deposits_870 ::
  T_DState_854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_870 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_872 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState
d_GState_874 a0 = ()
data T_GState_874
  = C_'10214'_'44'_'44'_'10215''7515'_888 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.GState.dreps
d_dreps_882 ::
  T_GState_874 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_888 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.ccHotKeys
d_ccHotKeys_884 ::
  T_GState_874 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_888 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.deposits
d_deposits_886 ::
  T_GState_874 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_888 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState
d_CertState_890 a0 = ()
data T_CertState_890
  = C_'10214'_'44'_'44'_'10215''7580''738'_904 T_DState_854
                                               MAlonzo.Code.Ledger.Certs.T_PState_864 T_GState_874
-- Ledger.Certs.Haskell.CertState.dState
d_dState_898 :: T_CertState_890 -> T_DState_854
d_dState_898 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_904 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.pState
d_pState_900 ::
  T_CertState_890 -> MAlonzo.Code.Ledger.Certs.T_PState_864
d_pState_900 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_904 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.gState
d_gState_902 :: T_CertState_890 -> T_GState_874
d_gState_902 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_904 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv
d_DelegEnv_906 a0 = ()
data T_DelegEnv_906
  = C_'10214'_'44'_'10215''7496''7497'_916 MAlonzo.Code.Ledger.PParams.T_PParams_228
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DelegEnv.pparams
d_pparams_912 ::
  T_DelegEnv_906 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_912 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_916 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv.pools
d_pools_914 ::
  T_DelegEnv_906 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_914 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_916 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GovCertEnv
d_GovCertEnv_918 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_918 = erased
-- Ledger.Certs.Haskell.certDeposit
d_certDeposit_920 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_920 ~v0 v1 ~v2 = du_certDeposit_920 v1
du_certDeposit_920 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_920 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_794 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_774 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_802 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_778 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Certs.Haskell.certRefund
d_certRefund_930 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_772]
d_certRefund_930 ~v0 v1 = du_certRefund_930 v1
du_certRefund_930 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_772]
du_certRefund_930 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_424
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_796 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_774 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_804 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_778 (coe v2))
         _ -> coe v1)
-- Ledger.Certs.Haskell.updateCertDeposit
d_updateCertDeposit_936 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_936 v0 ~v1 v2 v3
  = du_updateCertDeposit_936 v0 v2 v3
du_updateCertDeposit_936 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_792 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_936 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784 (coe v0))
         v2 (coe du_certDeposit_920 (coe v1)))
      (coe du_certRefund_930 (coe v1))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1018 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1018
  = C_DELEG'45'delegate_1080 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1082 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.keyDeposit
d_keyDeposit_1050 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_8225 -> Integer
d_keyDeposit_1050 ~v0 v1 = du_keyDeposit_1050 v1
du_keyDeposit_1050 :: T_GeneralizeTel_8225 -> Integer
du_keyDeposit_1050 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_308
      (coe d_'46'generalizedField'45'pp_8205 v0)
-- Ledger.Certs.Haskell._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1084 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1084
  = C_GOVCERT'45'regdrep_1148 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1150 MAlonzo.Code.Ledger.PParams.T_PParams_228
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1152 MAlonzo.Code.Ledger.PParams.T_PParams_228
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1154 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1154
  = C_CERT'45'deleg_1156 T__'8866'_'8640''10631'_'44'DELEG'10632'__1018 |
    C_CERT'45'pool_1158 MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__1002 |
    C_CERT'45'vdel_1160 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1084
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1162 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1162
  = C_CERT'45'base_1230 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.drepActivity
d_drepActivity_1184 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_22447 -> AgdaAny
d_drepActivity_1184 ~v0 v1 = du_drepActivity_1184 v1
du_drepActivity_1184 :: T_GeneralizeTel_22447 -> AgdaAny
du_drepActivity_1184 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_344
      (coe d_'46'generalizedField'45'pp_22423 v0)
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1232 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_834 ->
  T_CertState_890 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] -> T_CertState_890 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1232 = erased
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_8205 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_'46'generalizedField'45'pp_8205 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_8207 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_8207 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rwds
d_'46'generalizedField'45'rwds_8209 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_8209
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_8211 :: T_GeneralizeTel_8225 -> Integer
d_'46'generalizedField'45'd_8211 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mkh
d_'46'generalizedField'45'mkh_8213 ::
  T_GeneralizeTel_8225 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_8213
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-pools
d_'46'generalizedField'45'pools_8215 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_8215
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_8217 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_8217
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_8219 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_8219
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_8221 ::
  T_GeneralizeTel_8225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_8221
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mv
d_'46'generalizedField'45'mv_8223 ::
  T_GeneralizeTel_8225 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634
d_'46'generalizedField'45'mv_8223 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_8225 a0 = ()
data T_GeneralizeTel_8225
  = C_mkGeneralizeTel_8227 MAlonzo.Code.Ledger.PParams.T_PParams_228
                           MAlonzo.Code.Ledger.Address.T_Credential_16
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_634)
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_22423 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_'46'generalizedField'45'pp_22423
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_22425 ::
  T_GeneralizeTel_22447 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
d_'46'generalizedField'45'vs_22425
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_22427 ::
  T_GeneralizeTel_22447 -> AgdaAny
d_'46'generalizedField'45'e_22427 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dreps
d_'46'generalizedField'45'dreps_22429 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_22429
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_22431 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_22431
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_22433 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_22433
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rewards
d_'46'generalizedField'45'rewards_22435 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_22435
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_22437 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_22437
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ddep
d_'46'generalizedField'45'ddep_22439 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_22439
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_22441 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Ledger.Certs.T_PState_864
d_'46'generalizedField'45'st'7510'_22441
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_22443 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_22443
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-gdep
d_'46'generalizedField'45'gdep_22445 ::
  T_GeneralizeTel_22447 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_22445
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_22447 a0 = ()
data T_GeneralizeTel_22447
  = C_mkGeneralizeTel_22449 MAlonzo.Code.Ledger.PParams.T_PParams_228
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_864
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
