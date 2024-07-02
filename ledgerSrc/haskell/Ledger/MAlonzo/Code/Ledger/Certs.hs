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

module MAlonzo.Code.Ledger.Certs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _.Credential
d_Credential_22 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_50 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_50 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_50 v2 v3
du_DecEq'45'Credential_50 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_50 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_124 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_102 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_102 = erased
-- _.THash
d_THash_120 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_120 = erased
-- _.PParams
d_PParams_148 a0 = ()
-- _.RwdAddr
d_RwdAddr_164 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_220 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_220 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_536
         (coe v0))
-- Ledger.Certs._.Anchor
d_Anchor_596 a0 = ()
-- Ledger.Certs._.GovVote
d_GovVote_620 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_640 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_656 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_656 ~v0 = du_getDRepVote_656
du_getDRepVote_656 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_656
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_742
-- Ledger.Certs.PoolParams
d_PoolParams_748 a0 = ()
newtype T_PoolParams_748
  = C_PoolParams'46'constructor_1065 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_752 ::
  T_PoolParams_748 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_752 v0
  = case coe v0 of
      C_PoolParams'46'constructor_1065 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_754 a0 = ()
data T_DCert_754
  = C_delegate_756 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_610)
                   (Maybe AgdaAny) Integer |
    C_dereg_758 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_regpool_760 AgdaAny T_PoolParams_748 |
    C_retirepool_762 AgdaAny AgdaAny |
    C_regdrep_764 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618 |
    C_deregdrep_766 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_ccreghot_768 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16)
-- Ledger.Certs.cwitness
d_cwitness_770 ::
  T_DCert_754 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_770 v0
  = case coe v0 of
      C_delegate_756 v1 v2 v3 v4 -> coe v1
      C_dereg_758 v1 -> coe v1
      C_regpool_760 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_retirepool_762 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_regdrep_764 v1 v2 v3 -> coe v1
      C_deregdrep_766 v1 -> coe v1
      C_ccreghot_768 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_786 a0 = ()
data T_CertEnv_786
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_804 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_218
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_796 :: T_CertEnv_786 -> AgdaAny
d_epoch_796 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_804 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_798 ::
  T_CertEnv_786 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_798 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_804 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_800 ::
  T_CertEnv_786 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_votes_800 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_804 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_802 ::
  T_CertEnv_786 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_802 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_804 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_806 a0 = ()
data T_DState_806
  = C_'10214'_'44'_'44'_'10215''7496'_820 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_814 ::
  T_DState_806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_814 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_820 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_816 ::
  T_DState_806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_816 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_820 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_818 ::
  T_DState_806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_818 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_820 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_822 a0 = ()
data T_PState_822
  = C_'10214'_'44'_'10215''7510'_832 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_828 ::
  T_PState_822 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_828 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_832 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_830 ::
  T_PState_822 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_830 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_832 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_834 a0 = ()
data T_GState_834
  = C_'10214'_'44'_'10215''7515'_844 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_840 ::
  T_GState_834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_840 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_844 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_842 ::
  T_GState_834 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_842 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_844 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_846 a0 = ()
data T_CertState_846
  = C_'10214'_'44'_'44'_'10215''7580''738'_860 T_DState_806
                                               T_PState_822 T_GState_834
-- Ledger.Certs.CertState.dState
d_dState_854 :: T_CertState_846 -> T_DState_806
d_dState_854 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_860 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_856 :: T_CertState_846 -> T_PState_822
d_pState_856 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_860 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_858 :: T_CertState_846 -> T_GState_834
d_gState_858 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_860 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_862 a0 = ()
data T_DelegEnv_862
  = C_'10214'_'44'_'10215''7496''7497'_872 MAlonzo.Code.Ledger.PParams.T_PParams_218
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_868 ::
  T_DelegEnv_862 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_868 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_872 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_870 ::
  T_DelegEnv_862 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_870 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_872 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_874 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_874 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_876 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_876 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__942 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__942
  = C_DELEG'45'delegate_1018 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1020 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__944 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__944
  = C_POOL'45'regpool_1022 | C_POOL'45'retirepool_1024
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__946 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__946
  = C_GOVCERT'45'regdrep_1086 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1088 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1090
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__948 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__948
  = C_CERT'45'deleg_1092 T__'8866'_'8640''10631'_'44'DELEG'10632'__942 |
    C_CERT'45'pool_1094 T__'8866'_'8640''10631'_'44'POOL'10632'__944 |
    C_CERT'45'vdel_1096 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__946
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__950 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__950
  = C_CERT'45'base_1178 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__956 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_786 ->
  T_CertState_846 -> [T_DCert_754] -> T_CertState_846 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__956 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_988 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_6635 -> Integer
d_keyDeposit_988 ~v0 v1 = du_keyDeposit_988 v1
du_keyDeposit_988 :: T_GeneralizeTel_6635 -> Integer
du_keyDeposit_988 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_298
      (coe d_'46'generalizedField'45'pp_6617 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_13777 -> AgdaAny
d_drepActivity_1046 ~v0 v1 = du_drepActivity_1046 v1
du_drepActivity_1046 :: T_GeneralizeTel_13777 -> AgdaAny
du_drepActivity_1046 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_330
      (coe d_'46'generalizedField'45'pp_13759 v0)
-- Ledger.Certs._.drepDeposit
d_drepDeposit_1048 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_13777 -> Integer
d_drepDeposit_1048 ~v0 v1 = du_drepDeposit_1048 v1
du_drepDeposit_1048 :: T_GeneralizeTel_13777 -> Integer
du_drepDeposit_1048 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_328
      (coe d_'46'generalizedField'45'pp_13759 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1118 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_19197 -> AgdaAny
d_drepActivity_1118 ~v0 v1 = du_drepActivity_1118 v1
du_drepActivity_1118 :: T_GeneralizeTel_19197 -> AgdaAny
du_drepActivity_1118 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_330
      (coe d_'46'generalizedField'45'pp_19183 v0)
-- Ledger.Certs._.ccHotKeys
d_ccHotKeys_1160 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1160 ~v0 v1 = du_ccHotKeys_1160 v1
du_ccHotKeys_1160 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1160 v0
  = coe
      d_ccHotKeys_842 (coe d_'46'generalizedField'45'st'7501'_19185 v0)
-- Ledger.Certs._.dreps
d_dreps_1162 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1162 ~v0 v1 = du_dreps_1162 v1
du_dreps_1162 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1162 v0
  = coe d_dreps_840 (coe d_'46'generalizedField'45'st'7501'_19185 v0)
-- Ledger.Certs._.rewards
d_rewards_1166 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1166 ~v0 v1 = du_rewards_1166 v1
du_rewards_1166 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1166 v0
  = coe
      d_rewards_818 (coe d_'46'generalizedField'45'st'7496'_19187 v0)
-- Ledger.Certs._.stakeDelegs
d_stakeDelegs_1168 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1168 ~v0 v1 = du_stakeDelegs_1168 v1
du_stakeDelegs_1168 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1168 v0
  = coe
      d_stakeDelegs_816 (coe d_'46'generalizedField'45'st'7496'_19187 v0)
-- Ledger.Certs._.voteDelegs
d_voteDelegs_1170 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1170 ~v0 v1 = du_voteDelegs_1170 v1
du_voteDelegs_1170 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1170 v0
  = coe
      d_voteDelegs_814 (coe d_'46'generalizedField'45'st'7496'_19187 v0)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_6617 ::
  T_GeneralizeTel_6635 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_6617 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_6619 ::
  T_GeneralizeTel_6635 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_6619 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_6621 ::
  T_GeneralizeTel_6635 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_6621
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_6623 :: T_GeneralizeTel_6635 -> Integer
d_'46'generalizedField'45'd_6623 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_6625 ::
  T_GeneralizeTel_6635 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_6625
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_6627 ::
  T_GeneralizeTel_6635 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_6627
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_6629 ::
  T_GeneralizeTel_6635 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_6629
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_6631 ::
  T_GeneralizeTel_6635 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_6631
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_6633 ::
  T_GeneralizeTel_6635 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_610
d_'46'generalizedField'45'mv_6633 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_6635 a0 = ()
data T_GeneralizeTel_6635
  = C_mkGeneralizeTel_6637 MAlonzo.Code.Ledger.PParams.T_PParams_218
                           MAlonzo.Code.Ledger.Address.T_Credential_16
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_610)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_13759 ::
  T_GeneralizeTel_13777 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_13759
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_13761 ::
  T_GeneralizeTel_13777 -> Integer
d_'46'generalizedField'45'd_13761 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_13763 ::
  T_GeneralizeTel_13777 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_13763 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_13765 ::
  T_GeneralizeTel_13777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_13765
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_13767 ::
  T_GeneralizeTel_13777 -> AgdaAny
d_'46'generalizedField'45'e_13767 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_13769 ::
  T_GeneralizeTel_13777 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_'46'generalizedField'45'vs_13769
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_13771 ::
  T_GeneralizeTel_13777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_13771
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_13773 ::
  T_GeneralizeTel_13777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_13773
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_13775 ::
  T_GeneralizeTel_13777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618
d_'46'generalizedField'45'an_13775
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_13777 a0 = ()
data T_GeneralizeTel_13777
  = C_mkGeneralizeTel_13779 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            Integer MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_618
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_19183 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_19183
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_19185 ::
  T_GeneralizeTel_19197 -> T_GState_834
d_'46'generalizedField'45'st'7501'_19185
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_19187 ::
  T_GeneralizeTel_19197 -> T_DState_806
d_'46'generalizedField'45'st'7496'_19187
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_19189 ::
  T_GeneralizeTel_19197 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_'46'generalizedField'45'vs_19189
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_19191 ::
  T_GeneralizeTel_19197 -> AgdaAny
d_'46'generalizedField'45'e_19191 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_19193 ::
  T_GeneralizeTel_19197 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_19193
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_19195 ::
  T_GeneralizeTel_19197 -> T_PState_822
d_'46'generalizedField'45'st'7510'_19195
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_19197 a0 = ()
data T_GeneralizeTel_19197
  = C_mkGeneralizeTel_19199 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            T_GState_834 T_DState_806
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_822
