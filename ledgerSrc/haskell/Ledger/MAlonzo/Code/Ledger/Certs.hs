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
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136 (coe v0)
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
d_addEpoch_230 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_230 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_546
         (coe v0))
-- Ledger.Certs._.Anchor
d_Anchor_616 a0 = ()
-- Ledger.Certs._.GovActionID
d_GovActionID_632 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_632 = erased
-- Ledger.Certs._.GovVote
d_GovVote_640 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_660 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_676 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_676 ~v0 = du_getDRepVote_676
du_getDRepVote_676 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_676
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_762
-- Ledger.Certs.DepositPurpose
d_DepositPurpose_768 a0 = ()
data T_DepositPurpose_768
  = C_CredentialDeposit_770 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_PoolDeposit_772 AgdaAny |
    C_DRepDeposit_774 MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_GovActionDeposit_776 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.Deposits
d_Deposits_778 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Deposits_778 = erased
-- Ledger.Certs.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_780 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_780 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_770 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_770 v4
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
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_772 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_774 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_776 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_772 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_770 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_772 v4
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
                                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_774 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_776 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_774 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_770 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_772 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_774 v4
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
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                (coe v0))))
                                       v4 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_776 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_776 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_770 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_772 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_774 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_776 v4
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
                                             MAlonzo.Code.Ledger.Types.GovStructure.d_DecEq'45'TxId_502
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
d_PoolParams_782 a0 = ()
newtype T_PoolParams_782
  = C_PoolParams'46'constructor_12157 MAlonzo.Code.Ledger.Address.T_Credential_16
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_786 ::
  T_PoolParams_782 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_786 v0
  = case coe v0 of
      C_PoolParams'46'constructor_12157 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_788 a0 = ()
data T_DCert_788
  = C_delegate_790 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630)
                   (Maybe AgdaAny) Integer |
    C_dereg_792 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer |
    C_regpool_794 AgdaAny T_PoolParams_782 |
    C_retirepool_796 AgdaAny AgdaAny |
    C_regdrep_798 MAlonzo.Code.Ledger.Address.T_Credential_16 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 |
    C_deregdrep_800 MAlonzo.Code.Ledger.Address.T_Credential_16
                    Integer |
    C_ccreghot_802 MAlonzo.Code.Ledger.Address.T_Credential_16
                   (Maybe MAlonzo.Code.Ledger.Address.T_Credential_16)
-- Ledger.Certs.cwitness
d_cwitness_804 ::
  T_DCert_788 -> MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_804 v0
  = case coe v0 of
      C_delegate_790 v1 v2 v3 v4 -> coe v1
      C_dereg_792 v1 v2 -> coe v1
      C_regpool_794 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_retirepool_796 v1 v2
        -> coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 (coe v1)
      C_regdrep_798 v1 v2 v3 -> coe v1
      C_deregdrep_800 v1 v2 -> coe v1
      C_ccreghot_802 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_820 a0 = ()
data T_CertEnv_820
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_842 AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_228
                                                    [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_832 :: T_CertEnv_820 -> AgdaAny
d_epoch_832 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_842 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_834 ::
  T_CertEnv_820 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pp_834 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_842 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_836 ::
  T_CertEnv_820 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_votes_836 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_842 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_838 ::
  T_CertEnv_820 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_838 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_842 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.deposits
d_deposits_840 ::
  T_CertEnv_820 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_840 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_842 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_844 a0 = ()
data T_DState_844
  = C_'10214'_'44'_'44'_'10215''7496'_858 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_852 ::
  T_DState_844 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_852 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_858 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_854 ::
  T_DState_844 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_854 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_858 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_856 ::
  T_DState_844 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_856 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_858 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_860 a0 = ()
data T_PState_860
  = C_'10214'_'44'_'10215''7510'_870 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_866 ::
  T_PState_860 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_866 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_870 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_868 ::
  T_PState_860 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_868 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_870 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_872 a0 = ()
data T_GState_872
  = C_'10214'_'44'_'10215''7515'_882 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_878 ::
  T_GState_872 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_878 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_882 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_880 ::
  T_GState_872 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_880 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_882 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_884 a0 = ()
data T_CertState_884
  = C_'10214'_'44'_'44'_'10215''7580''738'_898 T_DState_844
                                               T_PState_860 T_GState_872
-- Ledger.Certs.CertState.dState
d_dState_892 :: T_CertState_884 -> T_DState_844
d_dState_892 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_898 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_894 :: T_CertState_884 -> T_PState_860
d_pState_894 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_898 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_896 :: T_CertState_884 -> T_GState_872
d_gState_896 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_898 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_900 a0 = ()
data T_DelegEnv_900
  = C_'10214'_'44'_'44'_'10215''7496''7497'_914 MAlonzo.Code.Ledger.PParams.T_PParams_228
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_908 ::
  T_DelegEnv_900 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_908 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_914 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_910 ::
  T_DelegEnv_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_910 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_914 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.deposits
d_deposits_912 ::
  T_DelegEnv_900 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_912 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496''7497'_914 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_916 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_916 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_918 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_918 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__996 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__996
  = C_DELEG'45'delegate_1072 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_1074 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__998 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__998
  = C_POOL'45'regpool_1076 | C_POOL'45'retirepool_1078
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1000 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1000
  = C_GOVCERT'45'regdrep_1142 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1144 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOVCERT'45'ccreghot_1146
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1002 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1002
  = C_CERT'45'deleg_1148 T__'8866'_'8640''10631'_'44'DELEG'10632'__996 |
    C_CERT'45'pool_1150 T__'8866'_'8640''10631'_'44'POOL'10632'__998 |
    C_CERT'45'vdel_1152 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__1000
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1004 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1004
  = C_CERT'45'base_1220 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1010 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_820 ->
  T_CertState_884 -> [T_DCert_788] -> T_CertState_884 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1010 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_1042 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_18693 -> Integer
d_keyDeposit_1042 ~v0 v1 = du_keyDeposit_1042 v1
du_keyDeposit_1042 :: T_GeneralizeTel_18693 -> Integer
du_keyDeposit_1042 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_308
      (coe d_'46'generalizedField'45'pp_18673 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1174 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_33837 -> AgdaAny
d_drepActivity_1174 ~v0 v1 = du_drepActivity_1174 v1
du_drepActivity_1174 :: T_GeneralizeTel_33837 -> AgdaAny
du_drepActivity_1174 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_344
      (coe d_'46'generalizedField'45'pp_33815 v0)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_18673 ::
  T_GeneralizeTel_18693 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_'46'generalizedField'45'pp_18673
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_18675 ::
  T_GeneralizeTel_18693 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_'46'generalizedField'45'c_18675 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_18677 ::
  T_GeneralizeTel_18693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_18677
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_18679 ::
  T_GeneralizeTel_18693 -> Integer
d_'46'generalizedField'45'd_18679 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mkh
d_'46'generalizedField'45'mkh_18681 ::
  T_GeneralizeTel_18693 -> Maybe AgdaAny
d_'46'generalizedField'45'mkh_18681
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_18683 ::
  T_GeneralizeTel_18693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_18683
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_18685 ::
  T_GeneralizeTel_18693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_18685
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_18687 ::
  T_GeneralizeTel_18693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_18687
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_18689 ::
  T_GeneralizeTel_18693 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_18689
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_18691 ::
  T_GeneralizeTel_18693 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630
d_'46'generalizedField'45'mv_18691
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_18693 a0 = ()
data T_GeneralizeTel_18693
  = C_mkGeneralizeTel_18695 MAlonzo.Code.Ledger.PParams.T_PParams_228
                            MAlonzo.Code.Ledger.Address.T_Credential_16
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer (Maybe AgdaAny)
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_630)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_33815 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_'46'generalizedField'45'pp_33815
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_33817 ::
  T_GeneralizeTel_33837 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_'46'generalizedField'45'vs_33817
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_33819 ::
  T_GeneralizeTel_33837 -> AgdaAny
d_'46'generalizedField'45'e_33819 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dreps
d_'46'generalizedField'45'dreps_33821 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dreps_33821
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_33823 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_33823
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-voteDelegs
d_'46'generalizedField'45'voteDelegs_33825 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voteDelegs_33825
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rewards
d_'46'generalizedField'45'rewards_33827 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rewards_33827
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-deps
d_'46'generalizedField'45'deps_33829 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deps_33829
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stakeDelegs
d_'46'generalizedField'45'stakeDelegs_33831 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'stakeDelegs_33831
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_33833 ::
  T_GeneralizeTel_33837 -> T_PState_860
d_'46'generalizedField'45'st'7510'_33833
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccHotKeys
d_'46'generalizedField'45'ccHotKeys_33835 ::
  T_GeneralizeTel_33837 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccHotKeys_33835
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_33837 a0 = ()
data T_GeneralizeTel_33837
  = C_mkGeneralizeTel_33839 MAlonzo.Code.Ledger.PParams.T_PParams_228
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_860
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
