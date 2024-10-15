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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Product.Properties.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Properties.Inverse
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CertEnv
d_CertEnv_66 a0 = ()
-- _.DCert
d_DCert_78 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_190 a0 = ()
-- _.Deposits
d_Deposits_192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Deposits_192 = erased
-- _.Epoch
d_Epoch_198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_198 = erased
-- _.GovActionID
d_GovActionID_216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_216 = erased
-- _.GovActionState
d_GovActionState_218 a0 = ()
-- _.GovProposal
d_GovProposal_224 a0 = ()
-- _.GovVote
d_GovVote_228 a0 = ()
-- _.Tx
d_Tx_446 a0 = ()
-- _.certDeposit
d_certDeposit_510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_510 ~v0 = du_certDeposit_510
du_certDeposit_510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_510 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990 v0
-- _.certRefund
d_certRefund_512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_certRefund_512 ~v0 = du_certRefund_512
du_certRefund_512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
du_certRefund_512
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
-- _.epoch
d_epoch_532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
-- _.CertEnv.epoch
d_epoch_782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  AgdaAny
d_epoch_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- _.CertEnv.pp
d_pp_784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- _.CertEnv.votes
d_votes_786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- _.GovActionState.action
d_action_894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_expiresIn_896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- _.GovActionState.votes
d_votes_902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- _.GovProposal.action
d_action_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- _.GovProposal.anchor
d_anchor_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- _.GovProposal.deposit
d_deposit_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- _.GovProposal.policy
d_policy_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_944 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- _.GovVote.anchor
d_anchor_956 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- _.GovVote.gid
d_gid_958 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- _.GovVote.vote
d_vote_960 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- _.GovVote.voter
d_voter_962 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- _.GovernanceActions.GovActionState
d_GovActionState_984 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_986 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_990 a0 = ()
-- _.Tx.body
d_body_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- _.Tx.isValid
d_isValid_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
d_isValid_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- _.Tx.txAD
d_txAD_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Maybe AgdaAny
d_txAD_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe v0)
-- _.Tx.wits
d_wits_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2016 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState
d_EpochState_2024 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.acnt
d_acnt_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2310 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.es
d_es_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.fut
d_fut_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
d_fut_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.ls
d_ls_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
d_ls_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.EpochState.ss
d_ss_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278
d_ss_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERT
d_Computational'45'CERT_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2130 v0 ~v1
  = du_Computational'45'CERT_2130 v0
du_Computational'45'CERT_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERT_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1394
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERTBASE
d_Computational'45'CERTBASE_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2132 v0 ~v1
  = du_Computational'45'CERTBASE_2132 v0
du_Computational'45'CERTBASE_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERTBASE_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1784
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__2154 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv
d_GovEnv_2164 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovState
d_GovState_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  ()
d_GovState_2166 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.enactState
d_enactState_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1054
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.epoch
d_epoch_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 -> AgdaAny
d_epoch_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1048 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.pparams
d_pparams_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1050 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.ppolicy
d_ppolicy_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  Maybe AgdaAny
d_ppolicy_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1052 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.txid
d_txid_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 -> AgdaAny
d_txid_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1046 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-GOV'
d_Computational'45'GOV''_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_2254 v0 ~v1
  = du_Computational'45'GOV''_2254 v0
du_Computational'45'GOV''_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV''_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1366
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2260 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2262 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv
d_LEnv_2268 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LState
d_LState_2270 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.txgov
d_txgov_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2272 ~v0 ~v1 = du_txgov_2272
du_txgov_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2272
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2164
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.enactState
d_enactState_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2142
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.pparams
d_pparams_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  Maybe AgdaAny
d_ppolicy_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2138
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.slot
d_slot_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  AgdaAny
d_slot_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.treasury
d_treasury_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  Integer
d_treasury_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2144
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.certState
d_certState_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.govSt
d_govSt_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.utxoSt
d_utxoSt_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968
d_utxoSt_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv
d_UTxOEnv_2464 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.updateCertDeposits
d_updateCertDeposits_2512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2512 v0 ~v1 = du_updateCertDeposits_2512 v0
du_updateCertDeposits_2512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2512 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
      (coe v0) v2 v3
-- Ledger.Conway.Conformance.Ledger.Properties._.updateProposalDeposits
d_updateProposalDeposits_2518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2518 v0 ~v1
  = du_updateProposalDeposits_2518 v0
du_updateProposalDeposits_2518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.pparams
d_pparams_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1964 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.slot
d_slot_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954 ->
  AgdaAny
d_slot_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1962 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.treasury
d_treasury_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954 ->
  Integer
d_treasury_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_treasury_1966
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2592 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_2658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2658 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2790 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.computeUtxow
d_computeUtxow_2684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_2684 ~v0 ~v1 ~v2 v3 = du_computeUtxow_2684 v3
du_computeUtxow_2684 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_2684 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeCerts
d_computeCerts_2686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_2686 ~v0 ~v1 ~v2 v3 = du_computeCerts_2686 v3
du_computeCerts_2686 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_2686 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeGov
d_computeGov_2688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_2688 ~v0 ~v1 ~v2 v3 = du_computeGov_2688 v3
du_computeGov_2688 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_2688 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_2768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954
d_utxoΓ_2768 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_2768 v2
du_utxoΓ_2768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1954
du_utxoΓ_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTxOEnv'46'constructor_9735
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2144
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.certΓ
d_certΓ_2784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904
d_certΓ_2784 v0 ~v1 v2 ~v3 v4 = du_certΓ_2784 v0 v2 v4
du_certΓ_2784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904
du_certΓ_2784 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_922
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.govΓ
d_govΓ_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034
d_govΓ_2786 v0 ~v1 v2 ~v3 v4 = du_govΓ_2786 v0 v2 v4
du_govΓ_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1034
du_govΓ_2786 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_1056
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2138
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2142
         (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.computeProof
d_computeProof_2790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2790 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3082
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
                 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 du_computeUtxow_2684
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1962
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_2768 (coe v2))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                    (coe v3))
                                 v4)
                              (\ v9 ->
                                 case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                          (coe
                                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                          () erased () erased
                                          (coe
                                             du_computeCerts_2686
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1784
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1394
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                             (coe du_certΓ_2784 (coe v0) (coe v2) (coe v4))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                   (coe v4))))
                                          (\ v12 ->
                                             case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                      (coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                      () erased () erased
                                                      (coe
                                                         du_computeGov_2688
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1366
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                                         (coe
                                                            du_govΓ_2786 (coe v0) (coe v2) (coe v4))
                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2164
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2162
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1986
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1978
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1980
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_1902
                                                                              (coe v0)
                                                                              (let v18
                                                                                     = coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_6499
                                                                                         (coe v3)
                                                                                         (coe v4)
                                                                                         (coe v2)
                                                                                         (coe v10)
                                                                                         (coe v13)
                                                                                         (coe
                                                                                            v16) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45'Γ_6489
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                 (coe v10)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1984
                                                                              (coe v10)))
                                                                        (coe v16) (coe v13))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'V_2312
                                                                        v10
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v14)
                                                                                 (coe v17))))))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                          () erased () erased
                          (coe
                             du_computeUtxow_2684
                             (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1962
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_2768 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                (coe v3))
                             v4)
                          (\ v8 ->
                             case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> coe
                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2162
                                            (coe v9)
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_6919
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_6909
                                                     (coe v11))))
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_6919
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_6909
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'I_2392
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.completeness
d_completeness_2824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2230 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2824 = erased
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_2994 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_2994 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'LEDGER_2658 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
-- Ledger.Conway.Conformance.Ledger.Properties.HasCoin-LState
d_HasCoin'45'LState_2996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'LState_2996 v0 ~v1 = du_HasCoin'45'LState_2996 v0
du_HasCoin'45'LState_2996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'LState_2996 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_cbalance_2106
                       (coe v0)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1978
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1984
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                          (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1980
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                       (coe v1))))
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1180
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                       (coe v1))))))
-- Ledger.Conway.Conformance.Ledger.Properties._.FreshTx
d_FreshTx_3014 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 -> ()
d_FreshTx_3014 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.FreshTxs
d_FreshTxs_3024 a0 a1 a2 a3 a4 = ()
data T_FreshTxs_3024
  = C_'91''93''45'Fresh_3026 |
    C_'8759''45'Fresh_3028 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2230
                           T_FreshTxs_3024
-- Ledger.Conway.Conformance.Ledger.Properties.dpMap
d_dpMap_3030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_dpMap_3030 ~v0 ~v1 = du_dpMap_3030
du_dpMap_3030 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
du_dpMap_3030
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (\ v0 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.Properties.isGADeposit
d_isGADeposit_3032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  ()
d_isGADeposit_3032 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.isGADepositᵇ
d_isGADeposit'7495'_3040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  Bool
d_isGADeposit'7495'_3040 ~v0 ~v1 ~v2 v3
  = du_isGADeposit'7495'_3040 v3
du_isGADeposit'7495'_3040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  Bool
du_isGADeposit'7495'_3040 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848 v2
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Conway.Conformance.Ledger.Properties.govDepsMatch
d_govDepsMatch_3042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 -> ()
d_govDepsMatch_3042 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.isPartialEquivalence
d_isPartialEquivalence_3066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3066 ~v0 ~v1 ~v2 ~v3
  = du_isPartialEquivalence_3066
du_isPartialEquivalence_3066 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3066
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.refl
d_refl_3068 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_3068 ~v0 ~v1 ~v2 ~v3 ~v4 = du_refl_3068
du_refl_3068 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_3068
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.reflexive
d_reflexive_3070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_3070 ~v0 ~v1 ~v2 ~v3 = du_reflexive_3070
du_reflexive_3070 ::
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_3070 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
      v0
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.sym
d_sym_3072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_3072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_3072 v6
du_sym_3072 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_3072 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.≡ᵉ.trans
d_trans_3074 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_3074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_trans_3074 v7 v8
du_trans_3074 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_3074 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Conformance.Ledger.Properties._.filterGA
d_filterGA_3084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterGA_3084 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_filterGA_3084 v4 v5
du_filterGA_3084 ::
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterGA_3084 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 v3 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_312
                       (coe
                          MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_316
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                               (coe du_isGADeposit'7495'_3040 (coe v4))
                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                    (coe v2))
                 v3)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                    (MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    erased
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                    (coe
                       (\ v4 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                            (coe du_isGADeposit'7495'_3040 (coe v4))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                 (coe v2))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v3))))
-- Ledger.Conway.Conformance.Ledger.Properties._._.ξ
d_ξ_3110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ξ_3110 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.isValid
d_isValid_3122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 -> Bool
d_isValid_3122 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_isValid_3122 v3
du_isValid_3122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
du_isValid_3122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.body
d_body_3126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_3126 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_body_3126 v3
du_body_3126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
du_body_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.txid
d_txid_3154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  AgdaAny
d_txid_3154 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_txid_3154 v3
du_txid_3154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  AgdaAny
du_txid_3154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.enactState
d_enactState_3174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_3174 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_enactState_3174 v4
du_enactState_3174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_enactState_3174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2142
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.pparams
d_pparams_3176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_3176 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3176 v4
du_pparams_3176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_3176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.ppolicy
d_ppolicy_3178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  Maybe AgdaAny
d_ppolicy_3178 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ppolicy_3178 v4
du_ppolicy_3178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  Maybe AgdaAny
du_ppolicy_3178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2138
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.slot
d_slot_3180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  AgdaAny
d_slot_3180 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_slot_3180 v4
du_slot_3180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  AgdaAny
du_slot_3180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.utxoDeps
d_utxoDeps_3188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps_3188 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_utxoDeps_3188 v5
du_utxoDeps_3188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps_3188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.mkAction
d_mkAction_3190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkAction_3190 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_mkAction_3190 v0 v4 v5 v7 v8
du_mkAction_3190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkAction_3190 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_mkGovStatePair_1160
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'__80
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
               (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
               (coe v0))
            (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136
               (coe v2))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
               (coe v1)))
         (coe v4))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
         (coe v3))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.propUpdate
d_propUpdate_3210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_propUpdate_3210 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
  = du_propUpdate_3210 v0 v4 v5 v7 v8 v9
du_propUpdate_3210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_propUpdate_3210 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
      (coe v3)
      (coe du_mkAction_3190 (coe v0) (coe v1) (coe v2) (coe v4) (coe v5))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.voteUpdate
d_voteUpdate_3218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_voteUpdate_3218 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_voteUpdate_3218 v0 v7 v8
du_voteUpdate_3218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_voteUpdate_3218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_addVote_1136 (coe v0)
      (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
         (coe v2))
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.updateGovStates
d_updateGovStates_3238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_updateGovStates_3238 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
  = du_updateGovStates_3238 v0 v4 v5 v7 v8 v9
du_updateGovStates_3238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_updateGovStates_3238 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      [] -> coe v5
      (:) v6 v7
        -> case coe v6 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
               -> coe
                    du_updateGovStates_3238 (coe v0) (coe v1) (coe v2) (coe v7)
                    (coe addInt (coe (1 :: Integer)) (coe v4))
                    (coe du_voteUpdate_3218 (coe v0) (coe v5) (coe v8))
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
               -> coe
                    du_updateGovStates_3238 (coe v0) (coe v1) (coe v2) (coe v7)
                    (coe addInt (coe (1 :: Integer)) (coe v4))
                    (coe
                       du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v5) (coe v8)
                       (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS.STS→GovSt≡
d_STS'8594'GovSt'8801'_3260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2230 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_STS'8594'GovSt'8801'_3260 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.LEDGER-PROPS._.STS→updateGovSt≡
d_STS'8594'updateGovSt'8801'_3276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''7522''42'''__88 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_STS'8594'updateGovSt'8801'_3276 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.txid
d_txid_3342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  AgdaAny
d_txid_3342 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_txid_3342 v3
du_txid_3342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  AgdaAny
du_txid_3342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.pparams
d_pparams_3364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_3364 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3364 v4
du_pparams_3364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_3364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.govSt
d_govSt_3376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3376 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_govSt_3376 v5
du_govSt_3376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_3376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.STS→GovSt≡
d_STS'8594'GovSt'8801'_3380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2230 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_STS'8594'GovSt'8801'_3380 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.mkAction
d_mkAction_3382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkAction_3382 v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_mkAction_3382 v0 v4 v5
du_mkAction_3382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkAction_3382 v0 v1 v2
  = coe du_mkAction_3190 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.propUpdate
d_propUpdate_3384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_propUpdate_3384 v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_propUpdate_3384 v0 v4 v5
du_propUpdate_3384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_propUpdate_3384 v0 v1 v2
  = coe du_propUpdate_3210 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.updateGovStates
d_updateGovStates_3386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_updateGovStates_3386 v0 ~v1 ~v2 ~v3 v4 v5 ~v6
  = du_updateGovStates_3386 v0 v4 v5
du_updateGovStates_3386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_updateGovStates_3386 v0 v1 v2
  = coe du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.utxoDeps
d_utxoDeps_3388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps_3388 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_utxoDeps_3388 v5
du_utxoDeps_3388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps_3388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties._.voteUpdate
d_voteUpdate_3390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_voteUpdate_3390 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_voteUpdate_3390 v0
du_voteUpdate_3390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_voteUpdate_3390 v0 = coe du_voteUpdate_3218 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.noGACerts
d_noGACerts_3436 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_noGACerts_3436 v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du_noGACerts_3436 v0 v2 v3 v5 v7 v8
du_noGACerts_3436 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_noGACerts_3436 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3040 (coe v6))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
             (coe
                MAlonzo.Code.Interface.IsSet.du_dom_550
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                   (coe v0) (coe v4) (coe v5)))
             (coe
                MAlonzo.Code.Interface.IsSet.du_dom_550
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                   (coe v0) (coe v4) (coe v5)))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
                (coe (\ v6 v7 -> v7)))
      (:) v6 v7
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v8 v9 v10 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v10)
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                (\ v8 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                     (coe du_isGADeposit'7495'_3040 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                (coe
                   MAlonzo.Code.Interface.IsSet.du_dom_550
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                      (coe v0) (coe v4) (coe v5))))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                (\ v8 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                     (coe du_isGADeposit'7495'_3040 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                (coe
                   MAlonzo.Code.Interface.IsSet.du_dom_550
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v8 v9 v10 v11 v12 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                           (coe
                              MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                   (\ v8 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3040 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Interface.IsSet.du_dom_550
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                         (coe v0) (coe v4) (coe v5))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                   (\ v8 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3040 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Interface.IsSet.du_dom_550
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                         (coe
                            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                         (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                            (coe v0) (coe v7) (coe v5))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                            (coe v6)))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                   (\ v8 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                        (coe du_isGADeposit'7495'_3040 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Interface.IsSet.du_dom_550
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v8 v9 v10 v11 v12 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))))))
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                      (\ v8 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                           (coe du_isGADeposit'7495'_3040 (coe v8))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_550
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                            (coe
                               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                            (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                               (coe v0) (coe v7) (coe v5))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                      (\ v8 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                           (coe du_isGADeposit'7495'_3040 (coe v8))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                               (coe v0) (coe v7) (coe v5)))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                      (\ v8 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                           (coe du_isGADeposit'7495'_3040 (coe v8))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_550
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            (\ v8 v9 v10 v11 v12 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))))))
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                         (\ v8 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                              (coe du_isGADeposit'7495'_3040 (coe v8))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                  (coe v0) (coe v7) (coe v5)))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe du_isGADeposit'7495'_3040 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                  (coe v0) (coe v7) (coe v5))))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3040 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                         (\ v8 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                              (coe du_isGADeposit'7495'_3040 (coe v8))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               (\ v8 v9 v10 v11 v12 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                     (coe v0) (coe v7) (coe v5))))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8709'_430
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe du_isGADeposit'7495'_3040 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                               (coe
                                  (\ v8 v9 v10 v11 v12 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du__'8746'__668
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                                  (\ v8 ->
                                     coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                       (coe du_isGADeposit'7495'_3040 (coe v8))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                  (coe
                                     MAlonzo.Code.Interface.IsSet.du_dom_550
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                     (coe v5)))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8709'_430
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                            (let v8
                                   = \ v8 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe (\ v9 v10 -> v10)) (coe (\ v9 v10 -> v10)) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                     (coe v8))
                                  (coe
                                     MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                                     (\ v9 ->
                                        coe
                                          MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                          (coe du_isGADeposit'7495'_3040 (coe v9))
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                     (coe
                                        MAlonzo.Code.Interface.IsSet.du_dom_550
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                        (coe v5)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_770
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                                  (\ v8 ->
                                     coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                       (coe du_isGADeposit'7495'_3040 (coe v8))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                  (coe
                                     MAlonzo.Code.Interface.IsSet.du_dom_550
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                     (coe v5)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                     (coe v0) (coe v7) (coe v5))))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558) (coe v5)))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_550
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                     (coe v6))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8709'_430
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                            (coe
                               du_noGACerts_3436 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                               (coe v5))
                            (coe
                               v1
                               (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
                                  (coe v3))
                               v6)))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_618
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                            (coe
                               (\ v8 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                    (coe du_isGADeposit'7495'_3040 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                               (coe v0) (coe v7) (coe v5)))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                         (coe
                            (\ v8 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe du_isGADeposit'7495'_3040 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                      (let v8
                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                            (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v8))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                  (coe
                                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                           (coe v0) (coe v7) (coe v5)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                           (coe v0) (coe v7) (coe v5))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                           (coe v6)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                           (coe v6))))))))
                      (let v8
                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v8))
                            (let v9
                                   = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                  (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v9))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                              (coe v0) (coe v7) (coe v5)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                              (coe v0) (coe v7) (coe v5)))))))
                            (let v9
                                   = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                  (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v9))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                              (coe v6)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                              (coe v6)))))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_572
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                         (coe
                            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                  (coe v0) (coe v7) (coe v5)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                                  (coe v0) (coe v7) (coe v5))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                  (coe v6)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                                  (coe v6)))))))
                (coe
                   v2 v6
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                      (coe
                         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                      (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateCertDeposits_1866
                         (coe v0) (coe v7) (coe v5))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                         (coe v6)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.dpMap∘voteUpdate≡dpMap
d_dpMap'8728'voteUpdate'8801'dpMap_3450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dpMap'8728'voteUpdate'8801'dpMap_3450 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.props-dpMap-votes-invar
d_props'45'dpMap'45'votes'45'invar_3472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_props'45'dpMap'45'votes'45'invar_3472 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7
                                        v8 v9 v10
  = du_props'45'dpMap'45'votes'45'invar_3472 v0 v4 v5 v7 v8 v9 v10
du_props'45'dpMap'45'votes'45'invar_3472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762] ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_props'45'dpMap'45'votes'45'invar_3472 v0 v1 v2 v3 v4 v5 v6
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
             (coe
                MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_416
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   du_dpMap_3030
                   (coe
                      du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                         (coe
                            MAlonzo.Code.Class.Functor.Core.du_fmap_22
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                            () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v4)
                         (coe v3))
                      (coe v5) (coe v6))))
      (:) v7 v8
        -> case coe v4 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (\ v9 v10 v11 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_416
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          du_dpMap_3030
                          (coe
                             du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                             (coe
                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                                () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38) v3)
                             (coe v5) (coe v6))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_416
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe du_dpMap_3030 v6))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                          (coe
                             (\ v9 v10 v11 v12 v13 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_fromList_416
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe
                             du_dpMap_3030
                             (coe
                                du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                (coe
                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                   erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                                   v3)
                                (coe v5) (coe v6))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_fromList_416
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe
                             du_dpMap_3030
                             (coe
                                du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                (coe
                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                   erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                   v4)
                                (coe addInt (coe (1 :: Integer)) (coe v5))
                                (coe du_voteUpdate_3218 (coe v0) (coe v6) (coe v7)))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_fromList_416
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe du_dpMap_3030 v6))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                          (\ v9 v10 v11 v12 v13 -> v13)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_416
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe
                                du_dpMap_3030
                                (coe
                                   du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                   (coe
                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                      erased () erased
                                      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v4)
                                   (coe addInt (coe (1 :: Integer)) (coe v5))
                                   (coe du_voteUpdate_3218 (coe v0) (coe v6) (coe v7)))))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_416
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe du_dpMap_3030 v6))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_416
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1458
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe du_dpMap_3030 v6))
                          (let v9
                                 = \ v9 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe (\ v10 v11 -> v11)) (coe (\ v10 v11 -> v11)) in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                   (coe v9))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_fromList_416
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe du_dpMap_3030 v6))))
                          erased)
                       (coe
                          du_props'45'dpMap'45'votes'45'invar_3472 (coe v0) (coe v1) (coe v2)
                          (coe v8) (coe v4) (coe addInt (coe (1 :: Integer)) (coe v5))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_modifyVotes_1150
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
                                   (coe v7))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
                                   (coe v7))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
                                   (coe v7)))
                             (coe v6))))
             (:) v9 v10
               -> coe
                    du_props'45'dpMap'45'votes'45'invar_3472 (coe v0) (coe v1) (coe v2)
                    (coe v3) (coe v10) (coe addInt (coe (1 :: Integer)) (coe v5))
                    (coe
                       du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v6) (coe v9)
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.dpMap-update-∪
d_dpMap'45'update'45''8746'_3508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dpMap'45'update'45''8746'_3508 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
  = du_dpMap'45'update'45''8746'_3508 v0 v4 v5 v7 v8 v9
du_dpMap'45'update'45''8746'_3508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dpMap'45'update'45''8746'_3508 v0 v1 v2 v3 v4 v5
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_766
             (MAlonzo.Code.Axiom.Set.d_th_1458
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_416
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   du_dpMap_3030
                   (coe
                      MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                      (coe
                         du_mkAction_3190 (coe v0) (coe v1) (coe v2) (coe v4) (coe v5)))))
      (:) v6 v7
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> let v10
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2746
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_govActionPriority_1088
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                       (coe v9))))
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2758)
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_govActionPriority_1088
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                        (coe v9)))
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_govActionPriority_1088
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              du_mkAction_3190 (coe v0) (coe v1) (coe v2) (coe v4)
                                              (coe v5))))))) in
                  coe
                    (case coe v10 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                         -> if coe v11
                              then coe
                                     seq (coe v12)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                        (\ v13 v14 v15 ->
                                           coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                             v15)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du__'8746'__668
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_416
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe du_dpMap_3030 v3))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                          (coe v1)))
                                                    (coe v5)))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_416
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              du_dpMap_3030
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                    (coe v7)
                                                    (coe
                                                       du_mkAction_3190 (coe v0) (coe v1) (coe v2)
                                                       (coe v4) (coe v5))))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                              (coe
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v17)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v16))))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe du_dpMap_3030 v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5)))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_416
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe du_dpMap_3030 v7)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5)))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_416
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 du_dpMap_3030
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                       (coe v7)
                                                       (coe
                                                          du_mkAction_3190 (coe v0) (coe v1)
                                                          (coe v2) (coe v4) (coe v5))))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                 (coe
                                                    (\ v13 v14 v15 v16 v17 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v16))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v17)))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v17))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v16))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe du_dpMap_3030 v7)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                (coe v1)))
                                                          (coe v5)))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe du_dpMap_3030 v7))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                   (coe v1)))
                                                             (coe v5))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    du_dpMap_3030
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                          (coe v7)
                                                          (coe
                                                             du_mkAction_3190 (coe v0) (coe v1)
                                                             (coe v2) (coe v4) (coe v5))))))
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                    (coe
                                                       (\ v13 v14 v15 v16 v17 ->
                                                          coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v16))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v17)))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v17))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v16))))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe du_dpMap_3030 v7))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                      (coe v1)))
                                                                (coe v5))))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          du_dpMap_3030
                                                          (coe
                                                             du_propUpdate_3210 (coe v0) (coe v1)
                                                             (coe v2) (coe v7) (coe v4) (coe v5)))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_416
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       du_dpMap_3030
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe v6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                             (coe v7)
                                                             (coe
                                                                du_mkAction_3190 (coe v0) (coe v1)
                                                                (coe v2) (coe v4) (coe v5))))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                       (coe
                                                          (\ v13 v14 v15 v16 v17 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v16))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v17)))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v17))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v16))))))
                                                    (\ v13 v14 v15 ->
                                                       case coe v15 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                           -> coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v17) (coe v16)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                             (coe v8)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             du_dpMap_3030
                                                             (coe
                                                                du_propUpdate_3210 (coe v0) (coe v1)
                                                                (coe v2) (coe v7) (coe v4)
                                                                (coe v5)))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          du_dpMap_3030
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                                (coe v7)
                                                                (coe
                                                                   du_mkAction_3190 (coe v0)
                                                                   (coe v1) (coe v2) (coe v4)
                                                                   (coe v5))))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          du_dpMap_3030
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe v6)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                                (coe v7)
                                                                (coe
                                                                   du_mkAction_3190 (coe v0)
                                                                   (coe v1) (coe v2) (coe v4)
                                                                   (coe v5))))))
                                                    (let v13
                                                           = \ v13 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe (\ v14 v15 -> v15))
                                                                 (coe (\ v14 v15 -> v15)) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                          (coe
                                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                             (coe v13))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_fromList_416
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                             (coe
                                                                du_dpMap_3030
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe v6)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                                      (coe v7)
                                                                      (coe
                                                                         du_mkAction_3190 (coe v0)
                                                                         (coe v1) (coe v2) (coe v4)
                                                                         (coe v5))))))))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_792
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe
                                                             (\ v13 ->
                                                                coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v13))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_insertGovAction_1122
                                                             (coe v7)
                                                             (coe
                                                                du_mkAction_3190 (coe v0) (coe v1)
                                                                (coe v2) (coe v4) (coe v5))))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8)))
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe v13))
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe v14))
                                                                (coe du_dpMap_3030 v7)))
                                                          (coe
                                                             MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_312
                                                             (coe
                                                                MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_316
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                         (coe v1)))
                                                                   (coe v5))))))
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe v13))
                                                          (coe
                                                             du_dpMap_3030
                                                             (coe
                                                                du_propUpdate_3210 (coe v0) (coe v1)
                                                                (coe v2) (coe v7) (coe v4)
                                                                (coe v5)))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe (\ v13 v14 -> v14))
                                                       (coe (\ v13 v14 -> v14)))
                                                    (coe
                                                       du_dpMap'45'update'45''8746'_3508 (coe v0)
                                                       (coe v1) (coe v2) (coe v7) (coe v4)
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_784
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_416
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe du_dpMap_3030 v7))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                (coe v1)))
                                                          (coe v5))))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (let v13
                                                     = MAlonzo.Code.Axiom.Set.d_th_1458
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_416 (coe v13)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                          (coe v8))
                                                       (coe
                                                          MAlonzo.Code.Data.List.Base.du_map_22
                                                          (coe
                                                             (\ v14 ->
                                                                coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v14))))
                                                          (coe v7)))))
                                              (let v13
                                                     = MAlonzo.Code.Axiom.Set.d_th_1458
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v13)
                                                    (let v14
                                                           = MAlonzo.Code.Axiom.Set.d_th_1458
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                          v14 erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                             (coe v8))))
                                                    (let v14
                                                           = MAlonzo.Code.Axiom.Set.d_th_1458
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                          (coe v14)
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_map_22
                                                             (coe
                                                                (\ v15 ->
                                                                   coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                             (coe v7))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_792
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe v8))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       (\ v13 ->
                                                          coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v13))))
                                                    (coe v7)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe (\ v13 v14 -> v14))
                                                 (coe (\ v13 v14 -> v14))))))
                              else coe
                                     seq (coe v12)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                        (\ v13 v14 v15 ->
                                           coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                             v15)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du__'8746'__668
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_416
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe du_dpMap_3030 v3))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                          (coe v1)))
                                                    (coe v5)))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_416
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              du_dpMap_3030
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe
                                                    du_mkAction_3190 (coe v0) (coe v1) (coe v2)
                                                    (coe v4) (coe v5))
                                                 (coe v3))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                              (coe
                                                 (\ v13 v14 v15 v16 v17 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v16))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v17)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v17))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v16))))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe du_dpMap_3030 v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5)))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'8746'__668
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe du_dpMap_3030 v3)))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_fromList_416
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 du_dpMap_3030
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe
                                                       du_mkAction_3190 (coe v0) (coe v1) (coe v2)
                                                       (coe v4) (coe v5))
                                                    (coe v3))))
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                                 (coe
                                                    (\ v13 v14 v15 v16 v17 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v16))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v17)))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v17))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v16))))))
                                              (\ v13 v14 v15 ->
                                                 case coe v15 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                     -> coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v17) (coe v16)
                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                                (coe v1)))
                                                          (coe v5))))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_416
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe du_dpMap_3030 v3)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    du_dpMap_3030
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          du_mkAction_3190 (coe v0) (coe v1)
                                                          (coe v2) (coe v4) (coe v5))
                                                       (coe v3))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    du_dpMap_3030
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          du_mkAction_3190 (coe v0) (coe v1)
                                                          (coe v2) (coe v4) (coe v5))
                                                       (coe v3))))
                                              (let v13
                                                     = \ v13 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe (\ v14 v15 -> v15))
                                                           (coe (\ v14 v15 -> v15)) in
                                               coe
                                                 (coe
                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                    (coe
                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                       (coe v13))
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          du_dpMap_3030
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe
                                                                du_mkAction_3190 (coe v0) (coe v1)
                                                                (coe v2) (coe v4) (coe v5))
                                                             (coe v3))))))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_792
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          du_mkAction_3190 (coe v0) (coe v1)
                                                          (coe v2) (coe v4) (coe v5))))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_map_22
                                                    (coe
                                                       (\ v13 ->
                                                          coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v13))))
                                                    (coe v3))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_776
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_416
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe du_dpMap_3030 v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                             (coe v1)))
                                                       (coe v5)))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.connex-lemma
d_connex'45'lemma_3562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_connex'45'lemma_3562 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9 v10
  = du_connex'45'lemma_3562 v0 v4 v5 v7 v8 v9 v10
du_connex'45'lemma_3562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_connex'45'lemma_3562 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      []
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v7 v8 v9 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
             (coe
                MAlonzo.Code.Axiom.Set.du__'8746'__668
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_416
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_dpMap_3030 v3))
                (coe
                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                   (MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   erased
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                               (coe v1)))
                         (coe v6)))))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_416
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   du_dpMap_3030
                   (coe
                      du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                      (coe v6))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                (\ v7 v8 v9 v10 v11 -> v11)
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__668
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe du_dpMap_3030 v3))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                      (MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                  (coe v1)))
                            (coe v6)))))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__668
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe du_dpMap_3030 v3))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                      (MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                  (coe v1)))
                            (coe v6)))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_416
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      du_dpMap_3030
                      (coe
                         du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v6))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v7 v8 v9 v10 v11 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_416
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe du_dpMap_3030 v3))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         du_dpMap_3030
                         (coe
                            du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v6))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         du_dpMap_3030
                         (coe
                            du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v6))))
                   (let v7
                          = \ v7 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v8 v9 -> v9))
                                (coe (\ v8 v9 -> v9)) in
                    coe
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe v7))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                  (coe v6))))))
                   (coe
                      du_dpMap'45'update'45''8746'_3508 (coe v0) (coe v1) (coe v2)
                      (coe v3) (coe v4) (coe v6)))
                erased)
      (:) v7 v8
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v9 v10 v11 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
             (coe
                MAlonzo.Code.Axiom.Set.du__'8746'__668
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_416
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      du_dpMap_3030
                      (coe
                         du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                         (coe
                            MAlonzo.Code.Class.Functor.Core.du_fmap_22
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                            () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                         (coe v6) (coe v3))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                   (MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   erased
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                               (coe v1)))
                         (coe
                            addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                            (coe v6))))))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_416
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   du_dpMap_3030
                   (coe
                      du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                      (coe
                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                      (coe addInt (coe (1 :: Integer)) (coe v6))
                      (coe
                         du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                         (coe v6)))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                (\ v9 v10 v11 v12 v13 -> v13)
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__668
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         du_dpMap_3030
                         (coe
                            du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                            (coe v6) (coe v3))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                      (MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                  (coe v1)))
                            (coe
                               addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__668
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         du_dpMap_3030
                         (coe
                            du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                            (coe addInt (coe (1 :: Integer)) (coe v6))
                            (coe
                               du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                      (MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      erased
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                  (coe v1)))
                            (coe
                               addInt
                               (coe
                                  addInt (coe (1 :: Integer))
                                  (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_416
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      du_dpMap_3030
                      (coe
                         du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                         (coe
                            MAlonzo.Code.Class.Functor.Core.du_fmap_22
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                            () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                         (coe addInt (coe (1 :: Integer)) (coe v6))
                         (coe
                            du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                            (coe v6)))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v9 v10 v11 v12 v13 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))))))
                   (\ v9 v10 v11 ->
                      case coe v11 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13) (coe v12)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_416
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            du_dpMap_3030
                            (coe
                               du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                               (coe
                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                  erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                  v8)
                               (coe addInt (coe (1 :: Integer)) (coe v6))
                               (coe
                                  du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                  (coe v6) (coe v3))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe
                                     addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         du_dpMap_3030
                         (coe
                            du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                            (coe addInt (coe (1 :: Integer)) (coe v6))
                            (coe
                               du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            (\ v9 v10 v11 v12 v13 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                     (coe v6) (coe v3))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe
                                        addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                        (coe v6))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_416
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            du_dpMap_3030
                            (coe
                               du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                               (coe
                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                  erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                  v5)
                               (coe addInt (coe (1 :: Integer)) (coe v6))
                               (coe
                                  du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               (\ v9 v10 v11 v12 v13 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8)
                                     (coe addInt (coe (1 :: Integer)) (coe v6))
                                     (coe
                                        du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3)
                                        (coe v4) (coe v6)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe
                                        addInt
                                        (coe
                                           addInt (coe (1 :: Integer))
                                           (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                        (coe v6))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                     (coe v6)))))
                         (let v9
                                = \ v9 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe (\ v10 v11 -> v11)) (coe (\ v10 v11 -> v11)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                  (coe v9))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_fromList_416
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe
                                     du_dpMap_3030
                                     (coe
                                        du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                           () erased () erased
                                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v5)
                                        (coe addInt (coe (1 :: Integer)) (coe v6))
                                        (coe
                                           du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3)
                                           (coe v4) (coe v6)))))))
                         (coe
                            du_connex'45'lemma_3562 (coe v0) (coe v1) (coe v2)
                            (coe
                               du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                               (coe v6))
                            (coe v7) (coe v8) (coe addInt (coe (1 :: Integer)) (coe v6))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (let v9
                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du__'8746'__668
                               (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v9))
                               (let v10
                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                coe
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_fromList_416
                                     (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v10))
                                     (coe
                                        du_dpMap_3030
                                        (coe
                                           du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                           (let v11
                                                  = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22 v11 ()
                                                 erased () erased
                                                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                                 v8))
                                           (coe v6) (coe v3)))))
                               (coe
                                  MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_312
                                  (coe
                                     MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_316
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe
                                           addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                           (coe v6)))))))
                         (let v9
                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v9))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (let v10
                                            = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22 v10 () erased
                                           () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                           v8))
                                     (coe addInt (coe (1 :: Integer)) (coe v6))
                                     (coe
                                        du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3)
                                        (coe v4) (coe v6))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            erased
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe
                                     addInt
                                     (coe
                                        addInt (coe (1 :: Integer))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                     (coe v6)))))
                         (coe
                            du_connex'45'lemma_3562 (coe v0) (coe v1) (coe v2) (coe v3)
                            (coe v4) (coe v8) (coe v6))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v9 v10 -> v10))
                            (coe (\ v9 v10 -> v10)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                      (MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (let v9
                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v9))
                            (let v10
                                   = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_fromList_416
                                  (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v10))
                                  (coe
                                     du_dpMap_3030
                                     (coe
                                        du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                        (let v11
                                               = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Class.Functor.Core.du_fmap_22 v11 ()
                                              erased () erased
                                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8))
                                        (coe v6) (coe v3)))))
                            (coe
                               MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_312
                               (coe
                                  MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_316
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe
                                        addInt (coe MAlonzo.Code.Data.List.Base.du_length_284 v8)
                                        (coe v6)))))))
                      (let v9
                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v9))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (let v10
                                         = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                   coe
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22 v10 () erased ()
                                        erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v8))
                                  (coe addInt (coe (1 :: Integer)) (coe v6))
                                  (coe
                                     du_propUpdate_3210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v7)
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         erased
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe
                                  addInt
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v8))
                                  (coe v6)))))
                      (coe
                         du_connex'45'lemma_3562 (coe v0) (coe v1) (coe v2) (coe v3)
                         (coe v7) (coe v8) (coe v6))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v9 v10 -> v10))
                         (coe (\ v9 v10 -> v10)))))
                erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.SetoidProperties.utxo-govst-connex
d_utxo'45'govst'45'connex_3592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'45'govst'45'connex_3592 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8 v9
                               v10 v11
  = du_utxo'45'govst'45'connex_3592 v0 v4 v5 v7 v8 v9 v10 v11
du_utxo'45'govst'45'connex_3592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo'45'govst'45'connex_3592 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v3 of
      [] -> coe v7
      (:) v8 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v10 v11 v12 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v12)
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                (\ v10 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                     (coe du_isGADeposit'7495'_3040 (coe v10))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                (coe
                   MAlonzo.Code.Interface.IsSet.du_dom_550
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                      (coe v0) (coe v3)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                            (coe v1)))
                      (coe v6) (coe v4))))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_416
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   du_dpMap_3030
                   (coe
                      du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                      (coe
                         MAlonzo.Code.Class.Functor.Core.du_fmap_22
                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                      (coe (0 :: Integer)) (coe v5))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v10 v11 v12 v13 v14 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                           (coe
                              MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe du_isGADeposit'7495'_3040 (coe v10))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Interface.IsSet.du_dom_550
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                         (coe v0) (coe v3)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                               (coe v1)))
                         (coe v6) (coe v4))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe du_isGADeposit'7495'_3040 (coe v10))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_550
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                            (coe v0) (coe v9)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                  (coe v1)))
                            (coe v6) (coe v4)))
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_550
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_416
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      du_dpMap_3030
                      (coe
                         du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                         (coe
                            MAlonzo.Code.Class.Functor.Core.du_fmap_22
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                            () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                         (coe (0 :: Integer)) (coe v5))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v10 v11 v12 v13 v14 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))))))
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                      (\ v10 ->
                         coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                           (coe du_isGADeposit'7495'_3040 (coe v10))
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe v6) (coe v4)))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__668
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe du_isGADeposit'7495'_3040 (coe v10))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe v6) (coe v4))))
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe du_isGADeposit'7495'_3040 (coe v10))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                         (coe
                            MAlonzo.Code.Interface.IsSet.du_dom_550
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_416
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         du_dpMap_3030
                         (coe
                            du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                            (coe
                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                               () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                            (coe (0 :: Integer)) (coe v5))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            (\ v10 v11 v12 v13 v14 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3040 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                                  (coe v0) (coe v9)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe v6) (coe v4))))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3040 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                 (coe v1)))
                                           (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                     (coe v6))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                  (coe (0 :: Integer)) (coe v5))))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3040 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_416
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            du_dpMap_3030
                            (coe
                               du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                               (coe
                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                  erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                  v3)
                               (coe (0 :: Integer)) (coe v5))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               (\ v10 v11 v12 v13 v14 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v10 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3040 (coe v10))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  erased
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_416
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               du_dpMap_3030
                               (coe
                                  du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                  (coe
                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                     erased () erased
                                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                                  (coe (0 :: Integer)) (coe v5))))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                               (coe
                                  (\ v10 v11 v12 v13 v14 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du__'8746'__668
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_fromList_416
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe
                                     du_dpMap_3030
                                     (coe
                                        du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                           () erased () erased
                                           (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                        (coe (0 :: Integer)) (coe v5))))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  erased
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                                     (coe (0 :: Integer)) (coe v5))))
                            (let v10
                                   = \ v10 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe (\ v11 v12 -> v12)) (coe (\ v11 v12 -> v12)) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                     (coe v10))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_fromList_416
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe
                                        du_dpMap_3030
                                        (coe
                                           du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                           (coe
                                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                              () erased () erased
                                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v3)
                                           (coe (0 :: Integer)) (coe v5))))))
                            (coe
                               du_connex'45'lemma_3562 (coe v0) (coe v1) (coe v2) (coe v5)
                               (coe v8) (coe v9) (coe (0 :: Integer))))
                         (coe
                            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                            (MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (coe
                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 ()
                                        erased () erased
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42) v9)
                                     (coe (0 :: Integer)) (coe v5))))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                               (\ v10 ->
                                  coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                    (coe du_isGADeposit'7495'_3040 (coe v10))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                               (coe
                                  MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_312
                                  (coe
                                     MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_316
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               erased
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe (\ v10 v11 -> v11)) (coe (\ v10 v11 -> v11)))
                            (coe
                               du_filterGA_3084
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe MAlonzo.Code.Data.List.Base.du_length_284 v9))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                         (MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe
                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1150
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3040 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_550
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                                  (coe v0) (coe v9)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                        (coe v1)))
                                  (coe v6) (coe v4))))
                         (let v10
                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_416
                               (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v10))
                               (coe
                                  du_dpMap_3030
                                  (coe
                                     du_updateGovStates_3238 (coe v0) (coe v1) (coe v2)
                                     (let v11
                                            = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22 v11 () erased
                                           () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                                           v9))
                                     (coe (0 :: Integer)) (coe v5)))))
                         (let v10
                                = MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_filter_408 v10
                               (coe
                                  MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                                  (coe
                                     (\ v11 ->
                                        coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                          (coe du_isGADeposit'7495'_3040 (coe v11))
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (let v11
                                         = MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v11 erased
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                           (coe v6)))))))
                         (let v10
                                = MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.du_filter_408 v10
                               (coe
                                  MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                                  (coe
                                     (\ v11 ->
                                        coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                          (coe du_isGADeposit'7495'_3040 (coe v11))
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                               (let v11
                                      = MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                coe
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v11 erased
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                 (coe v1)))
                                           (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))))
                         (coe
                            du_utxo'45'govst'45'connex_3592 (coe v0) (coe v1) (coe v2) (coe v9)
                            (coe v4) (coe v5) (coe v6) (coe v7))
                         (coe
                            MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                               (coe
                                  (\ v10 ->
                                     coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                       (coe du_isGADeposit'7495'_3040 (coe v10))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (let v10
                                      = MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                coe
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v10 erased
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                    (coe v1)))
                                              (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                        (coe v6)))))
                            (let v10
                                   = MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                             coe
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v10 erased
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_476
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                               (coe v6)))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_618
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                         (coe
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe du_isGADeposit'7495'_3040 (coe v10))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_550
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                            (coe v0) (coe v9)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                  (coe v1)))
                            (coe v6) (coe v4)))
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_550
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                           (coe v1)))
                                     (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                               (coe v6))))))
                (coe
                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1458
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                      (coe
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe du_isGADeposit'7495'_3040 (coe v10))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                   (let v10
                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                    coe
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                         (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v10))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                               (coe
                                  MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                               (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                                        (coe v0) (coe v9)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe v6) (coe v4)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                                        (coe v0) (coe v9)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe v6) (coe v4))))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                           (coe v6))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                       (coe v1)))
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                           (coe v6)))))))))
                   (let v10
                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                    coe
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v10))
                         (let v11
                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                               (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v11))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                                           (coe v0) (coe v9)
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                 (coe v1)))
                                           (coe v6) (coe v4)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                                           (coe v0) (coe v9)
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                 (coe v1)))
                                           (coe v6) (coe v4)))))))
                         (let v11
                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                          coe
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                               (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v11))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                          (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_length_284
                                                       v9)))
                                              (coe v6))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                                          (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_length_284
                                                       v9)))
                                              (coe v6))))))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_572
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                      (coe
                         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe v6) (coe v4)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateProposalDeposits_1890
                               (coe v0) (coe v9)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                     (coe v1)))
                               (coe v6) (coe v4))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_736
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
                                              (coe v1)))
                                        (coe MAlonzo.Code.Data.List.Base.du_length_284 v9)))
                                  (coe v6))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.utxoSt
d_utxoSt_3696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968
d_utxoSt_3696 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_utxoSt_3696 v5
du_utxoSt_3696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968
du_utxoSt_3696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.removed
d_removed_3700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_3700 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_removed_3700 v5
du_removed_3700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_3700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS.EPOCH-govDepsMatch
d_EPOCH'45'govDepsMatch_3708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'govDepsMatch_3708 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 ~v9
                             v10
  = du_EPOCH'45'govDepsMatch_3708 v0 v6 v7 v8 v10
du_EPOCH'45'govDepsMatch_3708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'govDepsMatch_3708 v0 v1 v2 v3 v4
  = coe
      seq (coe v3)
      (coe
         seq (coe v4)
         (case coe v1 of
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v5 v6 v7 v8 v9
              -> coe
                   (\ v10 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                                    (coe
                                       (\ v11 ->
                                          coe
                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                            (coe du_isGADeposit'7495'_3040 (coe v11))
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_522
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_816
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9))
                                       (let v11
                                              = coe
                                                  du_χ'''8801'χ_3754 (coe v0) (coe v9) (coe v7)
                                                  (coe v2) in
                                        coe
                                          (case coe v11 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                               -> coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v13) (coe v12)
                                             _ -> MAlonzo.RTE.mazUnreachableError))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Function.Bundles.d_from_1726
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
                                 (coe
                                    du_main'45'invariance'45'lemma_3950 (coe v0) (coe v9) (coe v7)
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_to_1724
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
                                       v10)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                              (coe
                                 MAlonzo.Code.Function.Bundles.d_from_1726
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
                                 (coe
                                    du_main'45'invariance'45'lemma_3950 (coe v0) (coe v9) (coe v7)
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_to_1724
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
                                       v10))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                              (coe
                                 MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                                    (coe
                                       (\ v11 ->
                                          coe
                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                            (coe du_isGADeposit'7495'_3040 (coe v11))
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_340
                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_522
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (\ v11 v12 -> v11)
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v11 v12 -> v12)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_766
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                             (coe du_utxoDeps_3748 (coe v7))))
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9)))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_816
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe
                                          du_χ_3726 (coe v0) (coe v9)
                                          (coe du_utxoDeps_3748 (coe v7)))
                                       (coe du_χ''_3738 (coe v9))
                                       (let v11
                                              = coe
                                                  du_χ'''8801'χ_3754 (coe v0) (coe v9) (coe v7)
                                                  (coe v2) in
                                        coe
                                          (case coe v11 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                               -> coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v13) (coe v12)
                                             _ -> MAlonzo.RTE.mazUnreachableError))))))))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.χ
d_χ_3726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_χ_3726 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12 ~v13
         ~v14 ~v15 ~v16 v17
  = du_χ_3726 v0 v9 v17
du_χ_3726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
du_χ_3726 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_386
                 (MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                      (coe v4))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1374
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                          (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                (coe v0))))
                       (coe v2)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                          (MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          erased
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
            (coe v1)))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.χ'
d_χ''_3738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_χ''_3738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12
           ~v13 ~v14 ~v15 ~v16
  = du_χ''_3738 v9
du_χ''_3738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
du_χ''_3738 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386
      (MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.P
d_P_3740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_P_3740 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.P?
d_P'63'_3744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_P'63'_3744 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17
  = du_P'63'_3744 v0 v9 v17
du_P'63'_3744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_P'63'_3744 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
                  (coe v0))
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_386
               (MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                  (coe v1))))
         (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.utxoDeps
d_utxoDeps_3748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps_3748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11
                ~v12 ~v13 ~v14 ~v15 ~v16
  = du_utxoDeps_3748 v10
du_utxoDeps_3748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps_3748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.utxoDeps'
d_utxoDeps''_3750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeps''_3750 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 ~v14 ~v15 ~v16
  = du_utxoDeps''_3750 v0 v9 v10
du_utxoDeps''_3750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeps''_3750 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
               (coe v0))))
      (coe du_utxoDeps_3748 (coe v2)) (coe du_χ''_3738 (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.χ'≡χ
d_χ'''8801'χ_3754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_χ'''8801'χ_3754 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 v14 ~v15 ~v16
  = du_χ'''8801'χ_3754 v0 v9 v10 v14
du_χ'''8801'χ_3754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_χ'''8801'χ_3754 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_χ'''8838'χ_3760 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe du_χ'8838'χ''_3802 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.χ'⊆χ
d_χ'''8838'χ_3760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_χ'''8838'χ_3760 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 v14 ~v15 ~v16 v17 v18
  = du_χ'''8838'χ_3760 v0 v9 v10 v14 v17 v18
du_χ'''8838'χ_3760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_χ'''8838'χ_3760 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196
                    (MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    erased erased
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                    (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                       (coe v1)))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> let v13
                                  = coe
                                      MAlonzo.Code.Function.Bundles.d_from_1726
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            erased erased
                                            (\ v13 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                            (coe v9)))
                                      (coe
                                         v3
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                            (coe v9))
                                         v5) in
                            coe
                              (case coe v13 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                   -> case coe v14 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                          -> case coe v15 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                 -> coe
                                                      MAlonzo.Code.Function.Bundles.d_to_1724
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                            (coe
                                                               (\ v20 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased erased
                                                                       (\ v21 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v20)))
                                                                            (coe v21))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                      (coe v2))))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                   erased
                                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                         (coe v0)))
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v20)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                (\ v21 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe
                                                                                        v21))))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                               (coe v1)))
                                                         (coe
                                                            (\ v20 ->
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v20))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                            (coe v9)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                               (coe v10))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                  (coe v9))
                                                               (coe v17)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            erased
                                                            (coe
                                                               MAlonzo.Code.Function.Bundles.d_to_1724
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_508
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                        (coe v10))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                           (coe v9))
                                                                        (coe v17)))
                                                                  (coe
                                                                     (\ v20 ->
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (\ v21 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe v20)))
                                                                                  (coe v21))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                            (coe
                                                                                               v2))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                         erased
                                                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           v20)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                      (\ v21 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v21)))))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v7)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v12)
                                                                     (coe
                                                                        MAlonzo.Code.Function.Bundles.d_to_1724
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1374
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased
                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    du_utxoDeps_3748
                                                                                    (coe v2))
                                                                                 (let v20
                                                                                        = MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                                                       v20 erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                          (coe
                                                                                             v9))))))
                                                                           (coe
                                                                              (\ v20 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                      (coe v10))
                                                                                   (coe v20)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                 (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                    (coe v9))
                                                                                 (coe v17))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                 (coe v9))
                                                                              (coe v17))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              erased
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1530
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased
                                                                                    (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    du_utxoDeps_3748
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                    (coe v9))
                                                                                 (coe v17)
                                                                                 (coe v19))))))))))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.χ⊆χ'
d_χ'8838'χ''_3802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_χ'8838'χ''_3802 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11
                  ~v12 ~v13 ~v14 ~v15 ~v16 v17 v18
  = du_χ'8838'χ''_3802 v0 v9 v10 v17 v18
du_χ'8838'χ''_3802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_χ'8838'χ''_3802 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196
                    (MAlonzo.Code.Axiom.Set.d_th_1458
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    erased erased
                    (\ v5 ->
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          (\ v5 ->
                             coe
                               MAlonzo.Code.Axiom.Set.du_map_386
                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (\ v6 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                    (coe v6))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1374
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                              (coe v0))))
                                     (coe du_utxoDeps_3748 (coe v2))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        erased
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe v5))))))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                          (coe v1))))
                 v3)
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> case coe v9 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                         -> case coe v7 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                -> let v14
                                         = coe
                                             MAlonzo.Code.Function.Bundles.du_to'8315'_920
                                             (coe
                                                MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''8608'_644
                                                (coe
                                                   MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
                                                   (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe (\ v14 v15 v16 -> v16))
                                                      (coe (\ v14 v15 v16 -> v16)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Function.Bundles.d_from_1726
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                      (\ v14 v15 v16 ->
                                                         coe
                                                           MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                           (coe
                                                              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                              (coe
                                                                 MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                           (coe
                                                              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                                              (coe
                                                                 MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
                                                      erased erased erased
                                                      (coe
                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                         (\ v14 v15 v16 ->
                                                            coe
                                                              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                              (coe
                                                                 MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                         erased erased erased
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                            (\ v14 v15 v16 ->
                                                               coe
                                                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                 (coe
                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                            erased erased erased
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                               (\ v14 v15 v16 ->
                                                                  coe
                                                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                    (coe
                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                               erased erased erased
                                                               (coe
                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                  (\ v14 ->
                                                                     coe
                                                                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                       (coe
                                                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                  erased)
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'unions_428
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                  (coe v6)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du_map_386
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     (\ v14 ->
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (\ v15 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe v14)))
                                                                                  (coe v15))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                            (coe
                                                                                               v2))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                         erased
                                                                                         (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           v14)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                      (\ v15 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v15)))))))
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                        (coe v1)))))
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                               (coe
                                                                  MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                               (\ v14 ->
                                                                  coe
                                                                    MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                                                                    (coe
                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                          (coe v1))
                                                                       (coe
                                                                          (\ v15 ->
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                  erased erased
                                                                                  (\ v16 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                             (coe
                                                                                                v15)))
                                                                                       (coe v16))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                        erased
                                                                                        erased
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                                 (coe
                                                                                                    v2))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                           (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                           erased
                                                                                           erased
                                                                                           erased
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                              erased
                                                                                              (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                v15)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                           (\ v16 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v16))))))))
                                                                       (coe v14))
                                                                    (coe
                                                                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                       (coe
                                                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))))
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                            (coe
                                                               MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                            (\ v14 ->
                                                               coe
                                                                 MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
                                                                 (coe
                                                                    (\ v15 ->
                                                                       case coe v15 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                           -> case coe v17 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                                  -> case coe v19 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                         -> coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v16)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       v18)
                                                                                                    (coe
                                                                                                       v20)))
                                                                                              (coe
                                                                                                 v21)
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v15 ->
                                                                       case coe v15 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                           -> case coe v16 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                                  -> case coe v19 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                         -> coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v20)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       v21)
                                                                                                    (coe
                                                                                                       v17)))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_250))
                                                   v13)) in
                                   coe
                                     (let v15
                                            = coe
                                                MAlonzo.Code.Function.Bundles.d_from_1726
                                                (coe
                                                   MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45''8801'_48
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_replacement_196
                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                         erased erased
                                                         (\ v15 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Function.Bundles.d_surjective_858
                                                                          (coe
                                                                             MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''8608'_644
                                                                             (coe
                                                                                MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
                                                                                (coe (\ v16 -> v16))
                                                                                (coe (\ v16 -> v16))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      (\ v16 v17
                                                                                         v18 ->
                                                                                         v18))
                                                                                   (coe
                                                                                      (\ v16 v17
                                                                                         v18 ->
                                                                                         v18)))))
                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                (coe
                                                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                                                   (\ v16 v17 v18 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                           (coe
                                                                                              MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                                                                           (coe
                                                                                              MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
                                                                                   erased erased
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                                      (\ v16 v17
                                                                                         v18 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                           (coe
                                                                                              MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                                         (\ v16 v17
                                                                                            v18 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                              (coe
                                                                                                 MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                         erased
                                                                                         erased
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                                            (\ v16
                                                                                               v17
                                                                                               v18 ->
                                                                                               coe
                                                                                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                            erased
                                                                                            erased
                                                                                            erased
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                               (\ v16 ->
                                                                                                  coe
                                                                                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                               erased)
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'unions_428
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               (coe
                                                                                                  v6)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                  (\ v16 ->
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                          erased
                                                                                                          erased
                                                                                                          (\ v17 ->
                                                                                                             coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        v16)))
                                                                                                               (coe
                                                                                                                  v17))
                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                erased
                                                                                                                erased
                                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                                                         (coe
                                                                                                                            v2))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                      erased
                                                                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        v16)))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                                   (\ v17 ->
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           v17)))))))
                                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                                                     (coe
                                                                                                        v1)))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                                                            (coe
                                                                                               MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                                            (\ v16 ->
                                                                                               coe
                                                                                                 MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                                                       (coe
                                                                                                          v1))
                                                                                                    (coe
                                                                                                       (\ v17 ->
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                               erased
                                                                                                               erased
                                                                                                               (\ v18 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                          (coe
                                                                                                                             v17)))
                                                                                                                    (coe
                                                                                                                       v18))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                     erased
                                                                                                                     erased
                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                                                              (coe
                                                                                                                                 v2))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                        erased
                                                                                                                        erased
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                           erased
                                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                                 (coe
                                                                                                                                    v0)))
                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                 erased
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                          (coe
                                                                                                                                             v17)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                                        (\ v18 ->
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                             (coe
                                                                                                                                v18))))))))
                                                                                                    (coe
                                                                                                       v16))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                                                         (coe
                                                                                            MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                                         (\ v16 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
                                                                                              (coe
                                                                                                 (\ v17 ->
                                                                                                    case coe
                                                                                                           v17 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                                                        -> case coe
                                                                                                                  v19 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                                               -> case coe
                                                                                                                         v21 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 v18)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    v20)
                                                                                                                                 (coe
                                                                                                                                    v22)))
                                                                                                                           (coe
                                                                                                                              v23)
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                              (coe
                                                                                                 (\ v17 ->
                                                                                                    case coe
                                                                                                           v17 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                                                        -> case coe
                                                                                                                  v18 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                                               -> case coe
                                                                                                                         v21 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                                                      -> coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              v20)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 v22)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    v23)
                                                                                                                                 (coe
                                                                                                                                    v19)))
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_250))
                                                                                v13))))))
                                                              (coe v15))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_specification_174
                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               erased erased
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                  erased erased erased
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                     erased
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                           (coe v0)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_listing_204
                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                           erased
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Function.Bundles.d_surjective_858
                                                                                          (coe
                                                                                             MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''8608'_644
                                                                                             (coe
                                                                                                MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
                                                                                                (coe
                                                                                                   (\ v15 ->
                                                                                                      v15))
                                                                                                (coe
                                                                                                   (\ v15 ->
                                                                                                      v15))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      (\ v15
                                                                                                         v16
                                                                                                         v17 ->
                                                                                                         v17))
                                                                                                   (coe
                                                                                                      (\ v15
                                                                                                         v16
                                                                                                         v17 ->
                                                                                                         v17)))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                                                                   (\ v15
                                                                                                      v16
                                                                                                      v17 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
                                                                                                   erased
                                                                                                   erased
                                                                                                   erased
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                                                      (\ v15
                                                                                                         v16
                                                                                                         v17 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                                      erased
                                                                                                      erased
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                                                         (\ v15
                                                                                                            v16
                                                                                                            v17 ->
                                                                                                            coe
                                                                                                              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                                         erased
                                                                                                         erased
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                                                            (\ v15
                                                                                                               v16
                                                                                                               v17 ->
                                                                                                               coe
                                                                                                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                                               (\ v15 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                                                               erased)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'unions_428
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                               (coe
                                                                                                                  v6)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                  (\ v15 ->
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                          erased
                                                                                                                          erased
                                                                                                                          (\ v16 ->
                                                                                                                             coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                     (coe
                                                                                                                                        v15)))
                                                                                                                               (coe
                                                                                                                                  v16))
                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                erased
                                                                                                                                erased
                                                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                                                                         (coe
                                                                                                                                            v2))))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                   erased
                                                                                                                                   erased
                                                                                                                                   erased
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                      erased
                                                                                                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                                            (coe
                                                                                                                                               v0)))
                                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v15)))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                                                   (\ v16 ->
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           v16)))))))
                                                                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                                                            (\ v15 ->
                                                                                                               coe
                                                                                                                 MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                                                                       (coe
                                                                                                                          v1))
                                                                                                                    (coe
                                                                                                                       (\ v16 ->
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                               erased
                                                                                                                               erased
                                                                                                                               (\ v17 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                          (coe
                                                                                                                                             v16)))
                                                                                                                                    (coe
                                                                                                                                       v17))
                                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                                                                              (coe
                                                                                                                                                 v2))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                           erased
                                                                                                                                           (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                          (coe
                                                                                                                                                             v16)))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                                                        (\ v17 ->
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v17))))))))
                                                                                                                    (coe
                                                                                                                       v15))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                                                         (\ v15 ->
                                                                                                            coe
                                                                                                              MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
                                                                                                              (coe
                                                                                                                 (\ v16 ->
                                                                                                                    case coe
                                                                                                                           v16 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                                                                        -> case coe
                                                                                                                                  v18 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                                                                               -> case coe
                                                                                                                                         v20 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                                                                      -> coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                              (coe
                                                                                                                                                 v17)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                 (coe
                                                                                                                                                    v19)
                                                                                                                                                 (coe
                                                                                                                                                    v21)))
                                                                                                                                           (coe
                                                                                                                                              v22)
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                              (coe
                                                                                                                 (\ v16 ->
                                                                                                                    case coe
                                                                                                                           v16 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                                                                        -> case coe
                                                                                                                                  v17 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                                                                               -> case coe
                                                                                                                                         v20 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                                                                      -> coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                           (coe
                                                                                                                                              v19)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                              (coe
                                                                                                                                                 v21)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                 (coe
                                                                                                                                                    v22)
                                                                                                                                                 (coe
                                                                                                                                                    v18)))
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_250))
                                                                                                v13))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                  (\ v15 ->
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v15))))))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                   (coe
                                                      MAlonzo.Code.Function.Bundles.d_from_1726
                                                      (coe
                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                                                         (\ v15 v16 v17 ->
                                                            coe
                                                              MAlonzo.Code.Function.Base.du__'8728''8242'__216
                                                              (coe
                                                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                 (coe
                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                              (coe
                                                                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                                                                 (coe
                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
                                                         erased erased erased
                                                         (coe
                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                            (\ v15 v16 v17 ->
                                                               coe
                                                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                 (coe
                                                                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                            erased erased erased
                                                            (coe
                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                               (\ v15 v16 v17 ->
                                                                  coe
                                                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                    (coe
                                                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                               erased erased erased
                                                               (coe
                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                                                  (\ v15 v16 v17 ->
                                                                     coe
                                                                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                                       (coe
                                                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                  erased erased erased
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                          (coe
                                                                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                                                     erased)
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.du_'8712''45'unions_428
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     (coe v6)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_map_386
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                        (\ v15 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                erased erased
                                                                                (\ v16 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe
                                                                                              v15)))
                                                                                     (coe v16))
                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      erased erased
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                               (coe
                                                                                                  v2))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                         erased
                                                                                         erased
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                            erased
                                                                                            (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                  (coe
                                                                                                     v0)))
                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v15)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                         (\ v16 ->
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v16)))))))
                                                                        (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                           (coe v1)))))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                                  (coe
                                                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                  (\ v15 ->
                                                                     coe
                                                                       MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                                                                       (coe
                                                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                             (coe v1))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased erased
                                                                                     (\ v17 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v16)))
                                                                                          (coe v17))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                                    (coe
                                                                                                       v2))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v16)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                              (\ v17 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v17))))))))
                                                                          (coe v15))
                                                                       (coe
                                                                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                                          (coe
                                                                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))))
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                                                               (coe
                                                                  MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                               (\ v15 ->
                                                                  coe
                                                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
                                                                    (coe
                                                                       (\ v16 ->
                                                                          case coe v16 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                              -> case coe v18 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                                     -> case coe
                                                                                               v20 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       v17)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                       (coe
                                                                                                          v19)
                                                                                                       (coe
                                                                                                          v21)))
                                                                                                 (coe
                                                                                                    v22)
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                    (coe
                                                                       (\ v16 ->
                                                                          case coe v16 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                              -> case coe v17 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                                     -> case coe
                                                                                               v20 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       v21)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                       (coe
                                                                                                          v22)
                                                                                                       (coe
                                                                                                          v18)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_250))
                                                      v13)) in
                                      coe
                                        (case coe v14 of
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                             -> case coe v15 of
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                    -> let v20
                                                             = coe
                                                                 MAlonzo.Code.Function.Bundles.d_from_1726
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased erased
                                                                       (\ v20 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                               (coe v17))
                                                                            (coe v20))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                                                                      (coe v2))))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                   erased
                                                                                   (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                         (coe v0)))
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                               (coe
                                                                                                  v16))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                (\ v20 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v20))))))
                                                                    v6)
                                                                 v19 in
                                                       coe
                                                         (case coe v20 of
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                              -> coe
                                                                   seq (coe v21)
                                                                   (coe
                                                                      seq (coe v22)
                                                                      (coe
                                                                         MAlonzo.Code.Function.Bundles.d_to_1724
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                                               (coe v1))
                                                                            (coe
                                                                               (\ v23 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe v23))))
                                                                            (coe v10))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v14)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Product.Properties.du_'215''45''8801''44''8801''8592''8801'_232))
                                                                               (coe v18)))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.map-filter-decomp
d_map'45'filter'45'decomp_3876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_map'45'filter'45'decomp_3876 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9 v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_map'45'filter'45'decomp_3876 v0 v9 v10
du_map'45'filter'45'decomp_3876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_map'45'filter'45'decomp_3876 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe du_i_3884 (coe v0) (coe v1) (coe v2))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
              (coe du_iii_3932 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.i
d_i_3884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_i_3884 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11 ~v12 ~v13
         ~v14 ~v15 ~v16 ~v17 v18
  = du_i_3884 v0 v9 v10 v18
du_i_3884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_i_3884 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                        (coe v2))
                     (coe
                        MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                           (coe v2))
                        (coe
                           MAlonzo.Code.Function.Bundles.d_from_1974
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (\ v6 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                   (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22))
                              erased)
                           v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1972
                              (coe
                                 MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_map'45''8712''8596'_176
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_filter_664
                                    (coe du_P'63'_3744 (coe v0) (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_500
                                       (coe du_P'63'_3744 (coe v0) (coe v1))
                                       (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                          (coe v2))
                                       v9
                                       (\ v11 ->
                                          coe
                                            v4
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  (\ v12 ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v12)))
                                               (coe
                                                  (\ v12 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                       (coe v12)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                               (coe v11))))
                                    erased))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.ii
d_ii_3902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ii_3902 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._._.iii
d_iii_3932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_iii_3932 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 ~v11 ~v12 ~v13
           ~v14 ~v15 ~v16 ~v17 v18
  = du_iii_3932 v0 v9 v10 v18
du_iii_3932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_iii_3932 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
              (coe v2) in
    coe
      (let v5 = coe du_P'63'_3744 (coe v0) (coe v1) in
       coe
         (let v6
                = coe
                    MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                    (coe
                       MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_filter_664
                       (coe du_P'63'_3744 (coe v0) (coe v1))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                       (coe
                          MAlonzo.Code.Data.List.Base.du_filter_664
                          (coe du_P'63'_3744 (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                             (coe v2)))
                       (coe v3)) in
          coe
            (case coe v6 of
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                 -> case coe v8 of
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                        -> let v11
                                 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_506
                                        v5 v7 v4 v9) in
                           coe
                             (coe
                                MAlonzo.Code.Function.Bundles.d_to_1972
                                (coe
                                   MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_map'45''8712''8596'_176
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                      (coe v2)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                      erased)))
                      _ -> MAlonzo.RTE.mazUnreachableError
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Conformance.Ledger.Properties._.EPOCH-PROPS._.main-invariance-lemma
d_main'45'invariance'45'lemma_3950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
   MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_main'45'invariance'45'lemma_3950 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9 v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 v17 v18
  = du_main'45'invariance'45'lemma_3950 v0 v9 v10 v17 v18
du_main'45'invariance'45'lemma_3950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
   MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_main'45'invariance'45'lemma_3950 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                  (\ v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                  erased erased erased
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                     (\ v5 v6 v7 ->
                        coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     erased erased erased
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                        (\ v5 v6 v7 ->
                           coe
                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                             (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                           (\ v5 v6 v7 ->
                              coe
                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           erased erased erased
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                              (\ v5 v6 v7 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                   (coe
                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                              erased erased erased
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                 (\ v5 ->
                                    coe
                                      MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                      (coe
                                         MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                 erased)
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_420
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (let v5
                                        = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22 v5 () erased ()
                                       erased
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                       (coe
                                          MAlonzo.Code.Data.List.Base.du_filter_664
                                          (coe du_P'63'_3744 (coe v0) (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                             (coe v2)))))
                                 (coe v4)))
                           (coe du_map'45'filter'45'decomp_3876 (coe v0) (coe v1) (coe v2)))
                        (coe
                           MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                           (coe
                              MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           (coe
                              MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_420
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (let v5
                                        = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22 v5 () erased ()
                                       erased
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                       (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                                          (coe v2))))
                                 (coe v4)))))
                     (coe
                        MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                        (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                        (coe
                           MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                        (coe v3 v4)))
                  (coe
                     MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                     (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                        (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Interface.IsSet.du_dom_550
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                           (coe du_utxoDeps_3748 (coe v2)))
                        (coe
                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                   (coe du_isGADeposit'7495'_3040 (coe v5))
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
                        (coe v4))))
               (coe
                  MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                  (coe
                     MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                     (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                  (coe
                     MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                     (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                        (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_424
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                           (coe du_utxoDeps_3748 (coe v2)))
                        (coe v4)))))
            (coe
               MAlonzo.Code.Data.Product.Properties.Ext.du_'215''45''8660''45'swap_92))
         (coe
            MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_890
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                        (coe v0))))
               (coe
                  MAlonzo.Code.Interface.IsSet.d_toSet_492
                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                  (coe du_utxoDeps_3748 (coe v2)))
               (coe du_χ''_3738 (coe v1)) (coe v4))))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_550
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
               (coe du_utxoDeps''_3750 (coe v0) (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_216
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                       (coe du_isGADeposit'7495'_3040 (coe v5))
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
            (coe v4)))
