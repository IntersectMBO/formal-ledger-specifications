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
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136 (coe v0)
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
d__'8866'_'8640''10631'_'44'POOL'10632'__618 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Haskell._.DCert
d_DCert_620 a0 = ()
-- Ledger.Certs.Haskell._.DepositPurpose
d_DepositPurpose_624 a0 = ()
-- Ledger.Certs.Haskell._.Deposits
d_Deposits_626 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_626 = erased
-- Ledger.Certs.Haskell._.PState
d_PState_628 a0 = ()
-- Ledger.Certs.Haskell._.PoolParams
d_PoolParams_632 a0 = ()
-- Ledger.Certs.Haskell._.Anchor
d_Anchor_678 a0 = ()
-- Ledger.Certs.Haskell._.GovVote
d_GovVote_702 a0 = ()
-- Ledger.Certs.Haskell._.VDeleg
d_VDeleg_722 a0 = ()
-- Ledger.Certs.Haskell._.getDRepVote
d_getDRepVote_738 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_738 ~v0 = du_getDRepVote_738
du_getDRepVote_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_738
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_762
-- Ledger.Certs.Haskell.CertEnv
d_CertEnv_830 a0 = ()
data T_CertEnv_830
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_848 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_228
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.CertEnv.epoch
d_epoch_840 :: T_CertEnv_830 -> AgdaAny
d_epoch_840 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_848 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.pp
d_pp_842 ::
  T_CertEnv_830 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pp_842 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_848 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.votes
d_votes_844 ::
  T_CertEnv_830 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_votes_844 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_848 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertEnv.wdrls
d_wdrls_846 ::
  T_CertEnv_830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_846 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_848 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState
d_DState_850 a0 = ()
data T_DState_850
  = C_'10214'_'44'_'44'_'44'_'10215''7496'_868 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DState.voteDelegs
d_voteDelegs_860 ::
  T_DState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_860 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_868 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.stakeDelegs
d_stakeDelegs_862 ::
  T_DState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_862 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_868 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.rewards
d_rewards_864 ::
  T_DState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_864 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_868 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DState.deposits
d_deposits_866 ::
  T_DState_850 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_866 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7496'_868 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState
d_GState_870 a0 = ()
data T_GState_870
  = C_'10214'_'44'_'44'_'10215''7515'_884 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.GState.dreps
d_dreps_878 ::
  T_GState_870 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_878 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_884 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.ccHotKeys
d_ccHotKeys_880 ::
  T_GState_870 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_884 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GState.deposits
d_deposits_882 ::
  T_GState_870 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7515'_884 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState
d_CertState_886 a0 = ()
data T_CertState_886
  = C_'10214'_'44'_'44'_'10215''7580''738'_900 T_DState_850
                                               MAlonzo.Code.Ledger.Certs.T_PState_860 T_GState_870
-- Ledger.Certs.Haskell.CertState.dState
d_dState_894 :: T_CertState_886 -> T_DState_850
d_dState_894 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_900 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.pState
d_pState_896 ::
  T_CertState_886 -> MAlonzo.Code.Ledger.Certs.T_PState_860
d_pState_896 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_900 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.CertState.gState
d_gState_898 :: T_CertState_886 -> T_GState_870
d_gState_898 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_900 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv
d_DelegEnv_902 a0 = ()
data T_DelegEnv_902
  = C_'10214'_'44'_'10215''7496''7497'_912 MAlonzo.Code.Ledger.PParams.T_PParams_228
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell.DelegEnv.pparams
d_pparams_908 ::
  T_DelegEnv_902 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_908 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_912 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.DelegEnv.pools
d_pools_910 ::
  T_DelegEnv_902 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_910 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_912 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GovCertEnv
d_GovCertEnv_914 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_914 = erased
-- Ledger.Certs.Haskell.certDeposit
d_certDeposit_916 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_916 ~v0 v1 ~v2 = du_certDeposit_916 v1
du_certDeposit_916 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_916 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_790 v2 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_770 (coe v2))
                   (coe v5))
         MAlonzo.Code.Ledger.Certs.C_regdrep_798 v2 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_774 (coe v2))
                   (coe v3))
         _ -> coe v1)
-- Ledger.Certs.Haskell.certRefund
d_certRefund_926 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768]
d_certRefund_926 ~v0 v1 = du_certRefund_926 v1
du_certRefund_926 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768]
du_certRefund_926 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_424
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_dereg_792 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased
                (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_770 (coe v2))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_800 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_774 (coe v2))
         _ -> coe v1)
-- Ledger.Certs.Haskell.updateCertDeposit
d_updateCertDeposit_932 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_932 v0 ~v1 v2 v3
  = du_updateCertDeposit_932 v0 v2 v3
du_updateCertDeposit_932 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_932 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780 (coe v0)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780 (coe v0))
         v2 (coe du_certDeposit_916 (coe v1)))
      (coe du_certRefund_926 (coe v1))
-- Ledger.Certs.Haskell._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1014 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1014
  = C_DELEG'45'delegate_1076 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1078 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.keyDeposit
d_keyDeposit_1046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_8209 -> Integer
d_keyDeposit_1046 ~v0 v1 = du_keyDeposit_1046 v1
du_keyDeposit_1046 :: T_GeneralizeTel_8209 -> Integer
du_keyDeposit_1046 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_308
      (coe d_'46'generalizedField'45'pp_8189 v0)
-- Ledger.Certs.Haskell._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1080 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1080
  = C_GOVCERT'45'regdrep_1144 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1146 MAlonzo.Code.Ledger.PParams.T_PParams_228
                                MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1148 MAlonzo.Code.Ledger.PParams.T_PParams_228
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1150 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1150
  = C_CERT'45'deleg_1152 T__'8866'_'8640''10631'_'44'DELEG'10632'__1014 |
    C_CERT'45'pool_1154 MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'POOL'10632'__998 |
    C_CERT'45'vdel_1156 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1080
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1158 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1158
  = C_CERT'45'base_1226 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Haskell._.drepActivity
d_drepActivity_1180 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_22431 -> AgdaAny
d_drepActivity_1180 ~v0 v1 = du_drepActivity_1180 v1
du_drepActivity_1180 :: T_GeneralizeTel_22431 -> AgdaAny
du_drepActivity_1180 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_344
      (coe d_'46'generalizedField'45'pp_22407 v0)
-- Ledger.Certs.Haskell._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1228 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_830 ->
  T_CertState_886 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] -> T_CertState_886 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1228 = erased
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_8189 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_'46'generalizedField'45'pp_8189 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-c
d_'46'generalizedField'45'c_8191 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_8191 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rwds
d_'46'generalizedField'45'rwds_8193 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_8193
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-d
d_'46'generalizedField'45'd_8195 :: T_GeneralizeTel_8209 -> Integer
d_'46'generalizedField'45'd_8195 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mkh
d_'46'generalizedField'45'mkh_8197 ::
  T_GeneralizeTel_8209 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_8197
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-pools
d_'46'generalizedField'45'pools_8199 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_8199
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_8201 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_8201
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_8203 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_8203
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dep
d_'46'generalizedField'45'dep_8205 ::
  T_GeneralizeTel_8209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dep_8205
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-mv
d_'46'generalizedField'45'mv_8207 ::
  T_GeneralizeTel_8209 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630
d_'46'generalizedField'45'mv_8207 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_8209 a0 = ()
data T_GeneralizeTel_8209
  = C_mkGeneralizeTel_8211 MAlonzo.Code.Ledger.PParams.T_PParams_228
                           MAlonzo.Code.Ledger.Address.T_Credential_16
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630)
-- Ledger.Certs.Haskell..generalizedField-pp
d_'46'generalizedField'45'pp_22407 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_'46'generalizedField'45'pp_22407
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-vs
d_'46'generalizedField'45'vs_22409 ::
  T_GeneralizeTel_22431 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_'46'generalizedField'45'vs_22409
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-e
d_'46'generalizedField'45'e_22411 ::
  T_GeneralizeTel_22431 -> AgdaAny
d_'46'generalizedField'45'e_22411 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-dreps
d_'46'generalizedField'45'dreps_22413 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_22413
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_22415 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_22415
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_22417 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_22417
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-rewards
d_'46'generalizedField'45'rewards_22419 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_22419
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_22421 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_22421
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ddep
d_'46'generalizedField'45'ddep_22423 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ddep_22423
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_22425 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Ledger.Certs.T_PState_860
d_'46'generalizedField'45'st'7510'_22425
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_22427 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_22427
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell..generalizedField-gdep
d_'46'generalizedField'45'gdep_22429 ::
  T_GeneralizeTel_22431 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'gdep_22429
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.Haskell.GeneralizeTel
d_GeneralizeTel_22431 a0 = ()
data T_GeneralizeTel_22431
  = C_mkGeneralizeTel_22433 MAlonzo.Code.Ledger.PParams.T_PParams_228
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Certs.T_PState_860
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
