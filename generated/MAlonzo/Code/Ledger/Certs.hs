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
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

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
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.THash
d_THash_124 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_THash_124 = erased
-- _.PParams
d_PParams_152 a0 = ()
-- _.RwdAddr
d_RwdAddr_174 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_264 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_264 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_220
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_578
         (coe v0))
-- _.isKeyHash
d_isKeyHash_294 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_294 = erased
-- Ledger.Certs._.Anchor
d_Anchor_656 a0 = ()
-- Ledger.Certs._.GovActionID
d_GovActionID_672 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_672 = erased
-- Ledger.Certs._.GovVote
d_GovVote_680 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_700 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_716 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_716 ~v0 = du_getDRepVote_716
du_getDRepVote_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_716
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_802
-- Ledger.Certs.DepositPurpose
d_DepositPurpose_808 a0 = ()
data T_DepositPurpose_808
  = C_CredentialDeposit_810 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_PoolDeposit_812 AgdaAny |
    C_DRepDeposit_814 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_GovActionDeposit_816 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Deposits
d_Deposits_818 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_818 = erased
-- Ledger.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_820 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_820 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_810 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_810 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_812 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_812 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_810 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_812 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_814 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_810 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_812 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_816 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_810 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_812 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_814 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_816 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_530
                                             (coe v0)))
                                       (coe
                                          (\ v5 ->
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Certs.PoolParams
d_PoolParams_822 a0 = ()
newtype T_PoolParams_822
  = C_PoolParams'46'constructor_12217 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_826 ::
  T_PoolParams_822 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_826 v0
  = case coe v0 of
      C_PoolParams'46'constructor_12217 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_828 a0 = ()
data T_DCert_828
  = C_delegate_830 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670)
                   (Maybe AgdaAny) Integer |
    C_dereg_832 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer |
    C_regpool_834 AgdaAny T_PoolParams_822 |
    C_retirepool_836 AgdaAny AgdaAny |
    C_regdrep_838 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 |
    C_deregdrep_840 MAlonzo.Code.Ledger.Address.T_Credential_16
                    Integer |
    C_ccreghot_842 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16)
-- Ledger.Certs.cwitness
d_cwitness_844 ::
  T_DCert_828 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_844 v0
  = case coe v0 of
      C_delegate_830 v1 v2 v3 v4 -> coe v1
      C_dereg_832 v1 v2 -> coe v1
      C_regpool_834 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_retirepool_836 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_regdrep_838 v1 v2 v3 -> coe v1
      C_deregdrep_840 v1 v2 -> coe v1
      C_ccreghot_842 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_860 a0 = ()
data T_CertEnv_860
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_882 AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_240
                                                    [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_872 :: T_CertEnv_860 -> AgdaAny
d_epoch_872 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_882 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_874 ::
  T_CertEnv_860 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pp_874 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_882 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_876 ::
  T_CertEnv_860 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_votes_876 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_882 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_878 ::
  T_CertEnv_860 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_878 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_882 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.deposits
d_deposits_880 ::
  T_CertEnv_860 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_882 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_884 a0 = ()
data T_DState_884
  = C_'10214'_'44'_'44'_'10215''7496'_898 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_892 ::
  T_DState_884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_892 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_898 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_894 ::
  T_DState_884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_894 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_898 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_896 ::
  T_DState_884 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_896 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_898 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_900 a0 = ()
data T_PState_900
  = C_'10214'_'44'_'10215''7510'_910 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_906 ::
  T_PState_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_906 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_910 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_908 ::
  T_PState_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_908 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_910 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_912 a0 = ()
data T_GState_912
  = C_'10214'_'44'_'10215''7515'_922 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_918 ::
  T_GState_912 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_918 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_922 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_920 ::
  T_GState_912 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_920 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_922 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_924 a0 = ()
data T_CertState_924
  = C_'10214'_'44'_'44'_'10215''7580''738'_938 T_DState_884
                                               T_PState_900 T_GState_912
-- Ledger.Certs.CertState.dState
d_dState_932 :: T_CertState_924 -> T_DState_884
d_dState_932 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_938 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_934 :: T_CertState_924 -> T_PState_900
d_pState_934 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_938 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_936 :: T_CertState_924 -> T_GState_912
d_gState_936 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_938 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_940 a0 = ()
data T_DelegEnv_940
  = C_'10214'_'44'_'44'_'10215''7496''7497'_954 MAlonzo.Code.Ledger.PParams.T_PParams_240
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_948 ::
  T_DelegEnv_940 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_948 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_954 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_950 ::
  T_DelegEnv_940 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_950 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_954 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.deposits
d_deposits_952 ::
  T_DelegEnv_940 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_952 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_954 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_956 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_956 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_958 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_958 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1036 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__1036
  = C_DELEG'45'delegate_1108 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1110 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1038 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__1038
  = C_POOL'45'regpool_1112 | C_POOL'45'retirepool_1114
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1040 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1040
  = C_GOVCERT'45'regdrep_1178 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1180 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1182
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1042 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1042
  = C_CERT'45'deleg_1184 T__'8866'_'8640''10631'_'44'DELEG'10632'__1036 |
    C_CERT'45'pool_1186 T__'8866'_'8640''10631'_'44'POOL'10632'__1038 |
    C_CERT'45'vdel_1188 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1040
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1044 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1044
  = C_CERT'45'base_1256 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_860 ->
  T_CertState_924 -> [T_DCert_828] -> T_CertState_924 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1046 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1078 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_18753 -> Integer
d_keyDeposit_1078 ~v0 v1 = du_keyDeposit_1078 v1
du_keyDeposit_1078 :: T_GeneralizeTel_18753 -> Integer
du_keyDeposit_1078 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_320
      (coe d_'46'generalizedField'45'pp_18733 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1210 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_34013 -> AgdaAny
d_drepActivity_1210 ~v0 v1 = du_drepActivity_1210 v1
du_drepActivity_1210 :: T_GeneralizeTel_34013 -> AgdaAny
du_drepActivity_1210 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_356
      (coe d_'46'generalizedField'45'pp_33991 v0)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_18733 ::
  T_GeneralizeTel_18753 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_'46'generalizedField'45'pp_18733
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_18735 ::
  T_GeneralizeTel_18753 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_18735 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_18737 ::
  T_GeneralizeTel_18753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_18737
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_18739 ::
  T_GeneralizeTel_18753 -> Integer
d_'46'generalizedField'45'd_18739 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_18741 ::
  T_GeneralizeTel_18753 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_18741
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_18743 ::
  T_GeneralizeTel_18753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_18743
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_18745 ::
  T_GeneralizeTel_18753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_18745
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_18747 ::
  T_GeneralizeTel_18753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_18747
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_18749 ::
  T_GeneralizeTel_18753 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_18749
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_18751 ::
  T_GeneralizeTel_18753 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670
d_'46'generalizedField'45'mv_18751
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_18753 a0 = ()
data T_GeneralizeTel_18753
  = C_mkGeneralizeTel_18755 MAlonzo.Code.Ledger.PParams.T_PParams_240
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_670)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_33991 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_'46'generalizedField'45'pp_33991
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_33993 ::
  T_GeneralizeTel_34013 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_'46'generalizedField'45'vs_33993
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_33995 ::
  T_GeneralizeTel_34013 -> AgdaAny
d_'46'generalizedField'45'e_33995 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dreps
d_'46'generalizedField'45'dreps_33997 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_33997
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_33999 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_33999
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_34001 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_34001
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_34003 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_34003
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_34005 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_34005
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_34007 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_34007
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_34009 ::
  T_GeneralizeTel_34013 -> T_PState_900
d_'46'generalizedField'45'st'7510'_34009
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_34011 ::
  T_GeneralizeTel_34013 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_34011
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_34013 a0 = ()
data T_GeneralizeTel_34013
  = C_mkGeneralizeTel_34015 MAlonzo.Code.Ledger.PParams.T_PParams_240
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_900
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
